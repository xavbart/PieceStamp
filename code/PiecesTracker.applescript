-- Pieces Tracker 

global versionNumber
set versionNumber to "0.10"
-- © Xavier Barthe 2019

-- ce script choisit un dossier, y cherche le document "bordereau.txt", le parcourt pour identifier les differentes pièces par nom et taille
-- ce script a besoin de imagemagick (installé avec Brew)
-- Le fichier bordereau.txt attend le format suivant (les mentions entre parenthèses sont à remplacer par leur valeur, SANS les parenthèses au final bien sûr)
(* ===================
bordereau
avocat : (nom de l'avocat communiquant les pièces)
barreau : (barreau de l'avocat)
affaire : (nom du dossier)
instance: (nom de l'instance)
Piece 1 : (nom de la pièce) : [nombre de pages, du début à la fin, garde incluse !]
Piece 3 : (nom de la pièce) : [nombre de pages, du début à la fin, garde incluse !]
Piece 3 : (nom de la pièce) : [nombre de pages, du début à la fin, garde incluse !]
Piece 4 :(nom de la pièce) : [nombre de pages, du début à la fin, garde incluse !]
[à répéter]
Piece (dernier numéro) : (nom de la pièce) : [nombre de pages, du début à la fin, garde incluse !]
=================== *)
--  il prend ensuite le document "pieces.pdf" dans le même dossier, et va apposer un tampon de numérotation piece par piece. 
-- (passant par un dossier temporaire et générant un fichier par pièces, qui seront ensuite re-fusionnés)
-- Si un fichier 'tampon.png' est fourni dans ce dossier ou ailleurs, il s'en servira comme cadre, sinon il génère une image cadre standard à partir des informations communiquées

-- todo
-- NUMBERING is wrong √
-- verify path for imagemagick (check with space) √
-- verify presence of stamp / offer to hunt for it
-- verify name of file
-- pass list fo file names, return list of file paths
-- implement proper log , not working even with dlog
-- implement cleaner image generation (library is using deprecated calls)
-- offer to split files into size-based individual pieces or else
-- add various fields to bordereau
-- open in Word a templated bordereau
-- allow for arbitrary numering (skip a piece, add a blank piece cover sheet for placeholder (name Nopiece instead of Piece, assume 1 page)
-- allow for number not full
-- check for empty final lines ?
-- allow piece or pièce (accent)
-- offer reformatted listing in clipboard
-- change N° to n° √
-- bolden piece number
-- reposition stamp if need be
-- insert ToC to PDF ?

global debug, pieceWord, theCountOfPieces, theConvertCommand, verbose, theX, theY, defaultFont


-- set debug
set debug to false
set verbose to true -- this will add much more to debug output
(*
set debugbutton to button returned of (display dialog "Debug ?" buttons {"Non", "Oui", "Verbose"} default button 3)
if debugbutton = "Oui" then set debug to true
if debugbutton = "Verbose" then set verbose to true
*)
--

if CheckIMInstalled() then -- we check we have to the tool and set its path
else
	display dialog "Désolé. Vous devez installer ImageMagick pour utiliser ce script ! Par exemple avec HomeBrew :
 $> brew install imagemagick"
	dlog("aborting: we need imagemagick on this Mac: https://www.imagemagick.org/script/binary-releases.php#macosx")
	return
end if
if debug then display dialog theConvertCommand
dlog("we will use imagemagick, found at " & theConvertCommand)

-- let's set the default names for files
set defaultNameBordereau to "Bordereau.txt"
set defaultNamePiecesPDFDoc to "Pièces.pdf"
set finalNamePDFDoc to "FinalPieces.pdf"

-- let's set some default vars
set theX to "450.0"
set theY to "700"
set pieceWord to "Pièce"
set defaultNameLogo to "tampon.png"
set defaultTempFolderName to "temp"
set defaultFont to "/Library/Fonts//Courier New Bold.ttf"
set theNumberofPagesInPDF to 0
set theCountOfPieces to 0

display dialog "PiecesTracker version " & versionNumber & "

On va vous demander le dossier dans lequel il y a :
- le bordereau sous le nom : '" & defaultNameBordereau & "' 
listant les pièces par ligne débutant par '" & pieceWord & "' suivi du n° de pièce
- le fichier PDF de toutes les pièces : " & defaultNamePiecesPDFDoc & "'
- et le tampon, sous : " & defaultNameLogo


if not debug then display notification "Recherche du dossier où se trouvent votre fichier de pièces et votre bordereau." with title "Numérotation de pièces" sound name "Bottle"



-- let's choose where we saved both the bordereau and the pieces.pdf (one file)
set theOutputFolder to choose folder with prompt "Choisissez le dossier où se trouve le fichier bordereau.txt et le fichier pieces.pdf comportant toutes les pièces en un seul PDF 
(attention : ce script s'attend à trouver les pieces listées avec le mot '" & pieceWord & "')" default location (path to desktop folder)
set theFolderPath to the POSIX path of theOutputFolder

set theTempPath to theFolderPath & defaultTempFolderName
set theQuotedTempPath to quoted form of theTempPath

if debug then display dialog CheckFileExistsAtPath(theTempPath)
if verbose then dlog("we have a temp path " & CheckFileExistsAtPath(theTempPath))

if not CheckFileExistsAtPath(theTempPath) then set theTempPath to createFolderAtPath(theFolderPath, defaultTempFolderName)

set directPathToTxt to the theFolderPath & defaultNameBordereau
set quotedPathToTxt to the quoted form of (theFolderPath & defaultNameBordereau)

if verbose then dlog("we have a text file " & directPathToTxt)

set directPathToPDF to the theFolderPath & defaultNamePiecesPDFDoc
set quotedPathToPDF to the quoted form of (theFolderPath & defaultNamePiecesPDFDoc)

if verbose then dlog("we have a pdf" & directPathToPDF)

set directPathToLogo to the theFolderPath & defaultNameLogo
set quotedPathToLogo to the quoted form of (theFolderPath & defaultNameLogo)

if verbose then dlog("we have a tampon " & defaultNameLogo)

if debug then display dialog directPathToTxt & " " & directPathToPDF & " " & defaultNameLogo

if not debug then display notification "Tous les fichiers sont là, allons-y !" with title "Numérotation de pièces" sound name "Bottle"

set pathToFinalPDF to theFolderPath & finalNamePDFDoc

-- We stop if we don't find the bordereau
if CheckFileExistsAtPath(directPathToTxt) then
else
	display dialog "Il n'y a pas de fichier " & defaultNameBordereau
	log "Pas de " & defaultNameBordereau
	
	return
end if

-- We stop if we don't find the pdf
if CheckFileExistsAtPath(directPathToPDF) then
else
	display dialog "Il n'y a pas de fichier " & defaultNamePiecesPDFDoc
	return
end if

-- We stop if we don't find the pdf (in the name)
if CheckThisIsAPDFPath(directPathToPDF) then
else
	display dialog "Ce n'est pas un PDF"
	return
end if

-- We stop if we don't find the logo.png
if CheckFileExistsAtPath(directPathToLogo) then
else
	display dialog "Il n'y a pas de fichier " & defaultNameLogo
	return
end if


-- let's load the bordereau info
set theBordereauText to read (directPathToTxt) as «class utf8»
if debug then display dialog theBordereauText
if verbose then log "bordereau : " & theBordereauText
set textLines to ReturnFileContentsAsList(directPathToTxt)

set theCountNameAndPagesOfPieces to CountNameAndPagesOfPieces(textLines)

set theExpectedTotalPages to SumTotalOfPages(theCountNameAndPagesOfPieces)
if debug then display dialog "we have so many pages from the bordereau " & theExpectedTotalPages
log "so many pages : " & theExpectedTotalPages

set theKeyValuePairs to DetailsOfBordereau(textLines)

--if debug then display dialog textLines

-- let's find the number of pages in PDF
set theNumberofPagesInPDF to GetPagesOfFilePY(directPathToPDF)
if debug then display dialog theNumberofPagesInPDF & " pages in this PDF"
set countofPieces to count of theCountNameAndPagesOfPieces
if not debug then display notification "Dans un PDF de " & theNumberofPagesInPDF & " pages." with title "" & countofPieces & " pièces" sound name "Bottle"
if debug then display notification "Dans un PDF de theNumberofPagesInPDF " & theNumberofPagesInPDF & " pages." with title "" & countofPieces & " pièces" sound name "Bottle"

log "in PDF we find pages : " & theNumberofPagesInPDF

-- check consistency between the list and size of pieces and the PDF
if (theNumberofPagesInPDF * 1 is not equal to theExpectedTotalPages * 1) then -- beware equality is not good on variables
	display dialog "Ooops ! Vous avez un PDF de " & theNumberofPagesInPDF & " pages, mais vous listez des pièces couvrant " & theExpectedTotalPages & " feuillets !"
	log "error : not same total pages in bordereau and pages in PDF"
	return
end if
(*
-- check consistency in the numbering of pieces
set countofPieces to count of theCountNameAndPagesOfPieces
if (theCountOfPieces * 1 = countofPieces * 1) then
--
end if
*)

-- we need 


if debug then display dialog "Ok, we are all set !"
log "All config is here, let's watermark some files!"

-- split the pdf in the different pieces -- (beware, we have a function that expects to get the first split page number AT 2ND DOC page number)

set theArrayOfIndexes to {}
repeat with apiece in theCountNameAndPagesOfPieces
	set theArrayOfIndexes to theArrayOfIndexes & ((item 3 of apiece) * 1 - 1)
end repeat

set theArrayOfIndexes to items 2 thru -1 of theArrayOfIndexes
copy theExpectedTotalPages to the end of theArrayOfIndexes
--display dialog theArrayOfIndexes

set theGeneratedFilesList to splitText(trim(WriteXFilesPDFfromOnePY(directPathToPDF, theTempPath, theArrayOfIndexes), space), space)
if verbose then log "We split the one file into those: " & theGeneratedFilesList -- this is an object list

-- we make the watermark image with generateStampImageForPieceNumberIM4param
-- todo : correct generateStampImageForPieceNumberIM to amend quoted path etc.

--if not debug then display notification "Dans un dossier '" & defaultTempFolderName & "/' dans votre dossier." with title "Création des fichiers intermédiaires" sound name "Bottle"

set theManyImages to {}
repeat with i from 1 to count of theGeneratedFilesList
	
	if debug then display dialog "making watermarking image " & i & " : " & item i of theGeneratedFilesList
	--generateStampImageForPieceNumberIM4param(convertcommand, theOriginalImagePathaAndName, thenumber, theResultingImagesPath , theNameOfFile) 
	
	set theimage to generateStampImageForPieceNumberIM4param(theConvertCommand, directPathToLogo, i, theTempPath)
	if debug then display dialog theimage
	copy theimage to the end of the theManyImages
	
end repeat
--display dialog "generated image " & convertlisttostring(theManyImages, ",")
-- we have all watermarks stamps now

--if not debug then display notification "Nous avons tous les tampons !" with title "Numérotation de pièces" sound name "Bottle"

-- now we run through the files and put the watermark
set theWatermarkedFilesList to {}
repeat with i from 1 to count of theGeneratedFilesList
	
	set theFileToMark to item i of theGeneratedFilesList
	set thePathToFileToMark to (theTempPath & "/" & theFileToMark)
	
	set thePathToFileMarked to (theTempPath & "/Marked_" & theFileToMark)
	
	
	set theStampFile to item i of theManyImages
	set thePathToStampFile to (theTempPath & "/" & theStampFile)
	
	
	if debug then display dialog "marking watermarking in file " & i & " : " & thePathToFileToMark & " with stamp " & theStampFile
	
	--watermarkFilePY(theFileToStamp, theNewFile, theStampFile) 
	set themarkedfile to watermarkFilePY(thePathToFileToMark, thePathToFileMarked, thePathToStampFile)
	set themarkedfile to thePathToFileMarked
	copy themarkedfile to the end of the theWatermarkedFilesList
	
	
end repeat
if debug then display dialog "added watermark to " & convertlisttostring(theWatermarkedFilesList, ",")
if not debug then display notification "Nous avons tamponné les fichiers temporaires." with title "Tamponnage fini !" sound name "Bottle"




if debug then display dialog "those are all the files we will merge: " & theWatermarkedFilesList as string
log "the file list we will merge" & theWatermarkedFilesList

set theResultLogOfThePyScript to writeOnePDFFileFromManyPY(pathToFinalPDF, theTempPath, theWatermarkedFilesList)
if not debug then display notification "Nous avons fait le nouveau fichier de pièces, tamponnées et numérotées." with title "C'est fini !" sound name "Bottle"

-- remove temporary folder
deleteFolderAtPath(theFolderPath, defaultTempFolderName)

activate
set showbutton to button returned of (display dialog "Le fichier final est prêt !" buttons {"Montrez le moi !", "Ok"} default button 2)
if showbutton ≠ "Ok" then tell application "Finder" to open POSIX file (pathToFinalPDF) as alias

-- end of script 




-- routines and functions



-- GetPagesOfFilePY
-- ########################################
-- Python script that gets a file path and returns the PDF number of pages

on GetPagesOfFilePY(thepdffile)
	-- we need a pdf file : ensure you test with CheckThisIsAPDFPath
	set thescript to " '#!/usr/bin/python;
#import sys
#import CoreGraphics
from Quartz.ImageIO import *
number = 0
pdffile = \"" & thepdffile & "\"
pdf = CGPDFDocumentCreateWithURL(CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, pdffile, len(pdffile), False))
if pdf:
	number = CGPDFDocumentGetNumberOfPages(pdf)
	del pdf
print number'"
	
	set thenumber to do shell script "python -c " & thescript
	if debug then display dialog "GetPagesOfFilePY : " & thenumber
	return thenumber
	
end GetPagesOfFilePY


-- WriteXFilesPDFfromOnePY
-- ########################################
-- python script that gets a file path, a number (X-1) of pages indexes (starting at 2nd document's first page, as we know the first doc first, it is 1, duh)
-- and write X many PDF files
-- -- NOTE : we need to replace method CGPDFDocumentGetMediaBox which is deprecated

on WriteXFilesPDFfromOnePY(thepdffile, whereToSavePath, indexesList) -- returns INT number of files created
	
	set theIndexesString to "(" & convertlisttostring(indexesList, ",") & " )"
	if debug then display dialog "WriteXFilesPDFfromOnePY : all indexes =" & theIndexesString
	if verbose then log "We have all those indexes for all files:" & theIndexesString
	set thescript to "'
#!/usr/bin/python
## this uses the splitPDF.0.4.py script 
import sys
import os
from CoreGraphics import *

inputFN = \"" & thepdffile & "\"
outputPath = \"" & whereToSavePath & "\"
baseFN = os.path.splitext(os.path.basename(inputFN))[0]
pageRect = CGRectMake (0, 0, 612, 792)
theCreatedFiles = \"\"
splitpages = " & theIndexesString & "
inputDoc = CGPDFDocumentCreateWithProvider( CGDataProviderCreateWithFilename(inputFN))
def writePageFromDoc(writeContext, doc, pageNum):

	page = CGPDFDocumentGetPage(doc, pageNum)
	if page:
		mediaBox = CGPDFPageGetBoxRect(page, kCGPDFMediaBox)
		if CGRectIsEmpty(mediaBox):
			mediaBox = None
             
		CGContextBeginPage(writeContext, mediaBox)
		CGContextDrawPDFPage(writeContext, page)
		CGContextEndPage(writeContext)


def writeFilefromPages(writeContext, doc, maxPages):
	for pageNum in xrange(1, maxPages + 1) :
		writePageFromDoc(writeContext, doc, pageNum)

startPageNum = 1
for i, splitPageNum in enumerate(splitpages):
	outputFN = \"%s.part%d.%d_%d.pdf\" % (baseFN, i + 1, startPageNum, splitPageNum)
	writeContext = CGPDFContextCreateWithFilename(outputPath +\"/\" + outputFN, pageRect)
	#print \"Writing page %d-%d to %s...\" % (startPageNum, splitPageNum, outputFN)
	for pageNum in xrange(startPageNum, splitPageNum + 1):
		mediaBox = inputDoc.getMediaBox( pageNum )
		writeContext.beginPage(mediaBox)
		writeContext.drawPDFDocument(mediaBox, inputDoc, pageNum)
		writeContext.endPage()
	theCreatedFiles +=\" \"+outputFN
	startPageNum = splitPageNum + 1
del writeContext
print theCreatedFiles'"
	
	set thecreatedfiles to do shell script "python -c " & thescript
	if debug then display dialog "WriteXFilesPDFfromOnePY: " & thecreatedfiles
	log "WriteXFilesPDFfromOnePY: " & thecreatedfiles
	return thecreatedfiles
end WriteXFilesPDFfromOnePY


-- FindText
-- ########################################
-- find the string toFind in the text inText

on FindText(toFind, inText)
	return (toFind is in inText)
end FindText


-- writeOnePDFFileFromManyPY
-- ########################################
-- pass a file path, a number of files as list and write one file in the path


on writeOnePDFFileFromManyPY(theFinalFile, whereToFindTheFilesPath, theFilesListWithTheirPath) -- return the file
	(*
	set theNewList to {}
	repeat with thefile in theNamesOfFilesList
		copy (whereToFindPath & "/" & thefile) to end of theNewList
	end repeat
	*)
	set theCorrectedFilesListWithTheirPath to "(\"" & convertlisttostring(theFilesListWithTheirPath, "\", \"") & "\")"
	if debug then display dialog "writeOnePDFFileFromManyPY: the files = " & theCorrectedFilesListWithTheirPath
	
	
	(* formatted as path and quote, comma *)
	
	
	set thescript to "'#! /usr/bin/python

from Quartz.CoreGraphics import *

theFile = \"" & theFinalFile & "\"
theFolder = \"" & "\" 
theFilesList = " & theCorrectedFilesListWithTheirPath & "

# for a PATH, will create a file to merge inside
def createPDFDocumentWithPath(aFile):

	print \"Creating PDF document from file %s\" % (aFile)
	return CGPDFDocumentCreateWithURL(CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, aFile, len(aFile), False))






def writePageFromDoc(writeContext, doc, pageNum):
 
	global verbose
	page = CGPDFDocumentGetPage(doc, pageNum)
	if page:
		mediaBox = CGPDFPageGetBoxRect(page, kCGPDFMediaBox)
		if CGRectIsEmpty(mediaBox):
			mediaBox = None
			 
		CGContextBeginPage(writeContext, mediaBox)
		CGContextDrawPDFPage(writeContext, page)
		CGContextEndPage(writeContext)
		print \"Copied page %d from %s\" % (pageNum, doc)




def append(writeContext, docs, maxPages):
 
	for doc in docs:
		for pageNum in xrange(1, maxPages + 1) :
			writePageFromDoc(writeContext, doc, pageNum)
			print \"Written page\", pageNum



writeContext = CGPDFContextCreateWithURL(CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, theFile, len(theFile), False), None, None)

if writeContext:
	# create PDFDocuments for all of the files.
	docs = map(createPDFDocumentWithPath, theFilesList)
	print docs
	# find the maximum number of pages.
	maxPages = 0
	for doc in docs:
		if CGPDFDocumentGetNumberOfPages(doc) > maxPages:
			print \"maxPages\" , maxPages
			maxPages = CGPDFDocumentGetNumberOfPages(doc)
			
	append(writeContext, docs, maxPages)
	print \"all this in \" , theFile
	CGPDFContextClose(writeContext)
	del writeContext
	#CGContextRelease(writeContext)'"
	
	set thedoc to do shell script "python -c " & thescript
	if debug then display dialog "writeOnePDFFileFromManyPY: returned One PDF file : thedoc " & thedoc
	log "writeOnePDFFileFromManyPY: returned One PDF file :" & thedoc
	return thedoc
end writeOnePDFFileFromManyPY


-- CheckIMInstalled
-- ########################################
-- verify that we have a "convert" command available, and sets the value fo the command location

on CheckIMInstalled() -- returns location of convert or empty
	try
		set theConvertCommand to do shell script "bash -l -c 'which convert'"
		return true
	on error
		return false
	end try
end CheckIMInstalled

-- insertToCInPDF
on insertToCInPDF()
	# we need to pull the bordereau info as elements and page number to add the ToC
end insertToCInPDF

-- generateStampImageForPieceNumberIM
-- ########################################
-- use imagemagick, passes the command syntax (convert in its installed place), an original stamp image (located with path), a number a file path and returns the name of the image created at the path
-- beware ! passing the path doesn't work wih quoted form, but the space will break it.
-- !! this is not used, we now pass 4 parameters and will use generateStampImageForPieceNumberIM4param
on generateStampImageForPieceNumberIM(convertcommand, theOriginalImagePathaAndName, thenumber, theResultingImagesPath, theNameOfFile) -- return new image name
	
	
	
	--display dialog PathToOriginalImage
	set pathToOriginalImage to quoted form of (theOriginalImagePathaAndName)
	set PathToNewImage to quoted form of (theResultingImagesPath)
	
	set pieceNumberText to "Pièce\\nn°" & thenumber
	set newimagename to theNameOfFile & thenumber & ".png"
	--display dialog "Now trying for image " & newimagename
	set theImageScript to convertcommand & " " & theOriginalImagePathaAndName & " -gravity center -pointsize 70 -fill 'black' -annotate 0 '" & pieceNumberText & "' " & PathToNewImage & newimagename
	
	--display dialog theImageScript
	try
		do shell script theImageScript
		return newimagename
	on error
		return "error"
	end try
	
end generateStampImageForPieceNumberIM

-- generateStampImageForPieceNumberIM4param
-- ########################################
-- use imagemagick, passes the command syntax (convert in its installed place), an original stamp image (located with path), a number a file path and returns the name of the image created at the path
-- beware ! passing the path doesn't work wih quoted form, but the space will break it.

on generateStampImageForPieceNumberIM4param(convertcommand, theOriginalImagePathaAndName, thenumber, theResultingImagesPath) -- return new image name
	
	
	
	
	--display dialog PathToOriginalImage
	set pieceNumberText to "Pièce\\nn°" & thenumber
	set pathToOriginalImage to quoted form of (theOriginalImagePathaAndName)
	
	set imageName to "piece_n_" & thenumber & ".png"
	
	set PathToNewImage to (theResultingImagesPath & "/" & imageName) --path is not proper if no /
	set PathToNewImage to quoted form of PathToNewImage
	if debug then display dialog "the path to new image is : " & PathToNewImage
	
	set theImageScript to convertcommand & " " & pathToOriginalImage & "  -font '" & defaultFont & "' -gravity center -pointsize 70 -fill 'black' -annotate 0  '" & pieceNumberText & "'  " & PathToNewImage
	
	if debug then display dialog "the script is [" & theImageScript & "]"
	try
		do shell script theImageScript
		return imageName
	on error
		return "error"
	end try
	
	
end generateStampImageForPieceNumberIM4param

-- CheckThisIsAPDFPath
-- ########################################
-- verify the path ends with ".pdf"

on CheckThisIsAPDFPath(thefile)
	return ((offset of ".pdf" in thefile) = ((length of thefile) - 3))
end CheckThisIsAPDFPath

-- CheckThisIsATxtPath
-- ########################################
-- verify the path ends with ".txt"

on CheckThisIsATxtPath(thefile)
	return ((offset of ".txt" in thefile) = ((length of thefile) - 3))
end CheckThisIsATxtPath

-- CheckFileExistsAtPath
-- ########################################
-- verify the file we need is present at given path 

on CheckFileExistsAtPath(thefile) -- expect a POSIX file path -- returns BOOL
	try
		POSIX file thefile as alias
		return true
	on error
		return false
	end try
end CheckFileExistsAtPath

-- ReturnFileContentsAsList
-- ########################################
-- An AppleScript function that reads a file and returns the lines
-- from that file as a list.
--
on ReturnFileContentsAsList(thefile)
	set fileHandle to open for access thefile
	set theLines to paragraphs of (read fileHandle as «class utf8») -- important to read UTF8
	close access fileHandle
	return theLines
end ReturnFileContentsAsList

-- CountNameAndPagesOfPieces
-- ########################################
-- An AppleScript function that finds lines with "piece X : WWWWWw [Y]" and picks number X and picks pages Y
--
-- CountNameAndPagesOfPieces
-- ########################################
-- An AppleScript function that finds lines with "piece X : WWWWWw [Y]" and picks number X and picks pages Y
--
on CountNameAndPagesOfPieces(theList) -- returns array of { { X, Y } { X', Y'}, {X", Y"}, ...}
	set thePiecesList to {}
	set thePageIndex to 0
	set i to 0
	repeat with theLine in theList
		
		if FindText(pieceWord, theLine) then
			set i to i + 1
			set thePageIndex to thePageIndex + 1
			if debug then display dialog "Starts at " & thePageIndex
			log "Starts at " & thePageIndex
			set pieceWordPosition to (offset of pieceWord in theLine) + (length of pieceWord)
			set semiColumn to offset of ":" in theLine
			set firstBracket to offset of "[" in theLine
			set lastBracket to offset of "]" in theLine
			
			-- put the number after piece in theCount
			set thenumber to trim(text (pieceWordPosition + 1) thru (semiColumn - 1) of theLine, " ")
			
			--if debug then display dialog thenumber & " trouvé en position " & i
			if verbose then dlog(thenumber & " found in position " & i)
			if ((thenumber as integer) * 1 = (i as integer) * 1) then
				set theCountOfPieces to i
			else
				display dialog "Numerotation des pièces erronées après la pièce " & (i - 1) & " (pièce numérotée " & thenumber & ")."
				log "stopping : error in attachments numbering after piece " & (i - 1)
				error number -128
			end if
			
			-- put the number in bracket in thePages
			set thePages to trim(text (firstBracket + 1) thru (lastBracket - 1) of theLine, " ")
			
			
			-- put the name in theName
			set theName to trim(text (semiColumn + 1) thru (firstBracket - 1) of theLine, " ")
			
			
			
			if debug then display dialog thenumber & " | " & theName & " | " & thePages
			-- add theCounts, the Pages in the listing
			
			set thePiecesList to thePiecesList & {{thenumber, thePages, thePageIndex, theName}} -- beware : we add a list INSIDE the list
			log "this is the list of files we will need" & thePiecesList
			set thePageIndex to (thePageIndex + thePages * 1 - 1)
			if debug then display dialog "Finishes at " & thePageIndex
			log "Finishes at " & thePageIndex
		end if
	end repeat
	return thePiecesList
end CountNameAndPagesOfPieces



-- DetailsOfBordereau
-- ########################################
-- An AppleScript function that finds lines with "ITEM : NAME " returns array of { { ITEM1, NAME1}, {ITEM2, NAME2}, ...}
--
on DetailsOfBordereau(theList) -- returns array of { { X, Y } { X', Y'}, {X", Y"}, ...}
	set theDetailsList to {}
	repeat with theLine in theList
		if FindText(pieceWord, theLine) then
			--ignore
		else
			set semiColumn to offset of ":" in theLine
			set theKey to trim(text 1 thru (semiColumn - 1) of theLine, " ")
			set theValue to trim(text (semiColumn + 1) thru (length of theLine) of theLine, " ")
			
			if debug then display dialog theKey & " | " & theValue
			if verbose then "DetailsOfBordereau : " & theKey & " | " & theValue
			set theDetailsList to theDetailsList & {theKey:theValue}
		end if
	end repeat
	return theDetailsList
end DetailsOfBordereau


-- SumTotalOfPages
-- ########################################
--
--
on SumTotalOfPages(anArrayofArrayOfNumberAndPages)
	set theTotal to 0
	repeat with theArray in anArrayofArrayOfNumberAndPages
		set thePieceNumber to item 1 of theArray
		set thePageCount to (1 * ((item 2 of theArray) as integer))
		if debug then display dialog "Piece " & thePieceNumber & " has " & thePageCount & " pages."
		log "Piece " & thePieceNumber & " has " & thePageCount & " pages."
		set theTotal to theTotal + thePageCount * 1
	end repeat
	return theTotal
	
end SumTotalOfPages


-- trim
-- ########################################
-- An AppleScript function that trim theseCharacters from someText
--
on trim(someText, theseCharacters)
	-- Lazy default (AppleScript doesn't support default values)
	if theseCharacters is true then set theseCharacters to {" ", tab, ASCII character 10, return, "
", ASCII character 0}
	
	repeat until first character of someText is not in theseCharacters
		set someText to text 2 thru -1 of someText
	end repeat
	
	repeat until last character of someText is not in theseCharacters
		set someText to text 1 thru -2 of someText
	end repeat
	
	return someText
end trim



-- splitText
-- ########################################
-- An AppleScript function that explodes into a list the string items
--
on splitText(theText, theDelimiter) -- returns a list
	set AppleScript's text item delimiters to theDelimiter
	set theTextItems to every text item of theText
	set AppleScript's text item delimiters to ""
	return theTextItems
end splitText


-- convertListToString
-- ########################################
-- An AppleScript function that explodes into a list the string items
--
on convertlisttostring(theList, theDelimiter)
	set AppleScript's text item delimiters to theDelimiter
	set theString to theList as string
	set AppleScript's text item delimiters to ""
	return theString
end convertlisttostring


-- deleteFolderAtPath
-- ########################################
-- An AppleScript function that delete a folder in a given path
--
on deleteFolderAtPath(thepath, foldername) -- return bool
	try
		tell application "Finder"
			--set newfo to POSIX path of (make new folder at POSIX file (thepath) with properties {name:foldername})
			set deleteFile to POSIX file (thepath & foldername) as text
			delete deleteFile
		end tell
		return newfo
	on error
		log "fail"
		return thepath & foldername
	end try
end deleteFolderAtPath



-- createFolderAtPath
-- ########################################
-- An AppleScript function that creates a folder in a given path
--
on createFolderAtPath(thepath, foldername) -- return bool
	try
		tell application "Finder"
			set newfo to POSIX path of (make new folder at POSIX file (thepath) with properties {name:foldername})
		end tell
		return newfo
	on error
		return thepath & foldername
	end try
end createFolderAtPath


-- prefixFileListWithPath
-- ########################################
-- An AppleScript function that takes a list of files and return their locations with a given path
--
on prefixFileListWithPath(thepath, filelist) -- return file list with path
	set filelistwithpath to {}
	repeat with thefile in filelist
		set filelistwithpath to filelistwithpath & {(thepath & thefile)}
		
	end repeat
	return filelistwithpath
end prefixFileListWithPath

-- prefixFileListWithPathQuoted
-- ########################################
-- An AppleScript function that takes a list of files and return their locations with a given QUOTED path
--
on prefixFileListWithPathQuoted(thepath, filelist) -- return file list with pth
	set filelistwithpath to {}
	repeat with thefile in filelist
		set filelistwithpath to filelistwithpath & {(quoted form of (thepath & thefile))}
		
	end repeat
	return filelistwithpath
end prefixFileListWithPathQuoted


-- watermarkFilePY
-- ########################################
-- pass a file to watermark, a file to save in, and a stamp file


on watermarkFilePY(theFileToStamp, theNewFile, theStampFile) -- return the file
	
	--set theX to "450.0"
	--set theY to "700"
	-- we now use global position variables, declared at beginning
	set theangle to "-20"
	set thesize to "0.2"
	set theOpacity to "1"
	
	set thescript to "'#!/usr/bin/python
# Watermark each page in a PDF document
#from dothewatermark.py
import sys
import getopt
import math
import shutil
import CoreGraphics
from Quartz.ImageIO import *

def drawWatermark(ctx, image, xOffset, yOffset, angle, scale, opacity):
	if image:
		imageWidth = CGImageGetWidth(image)
		imageHeight = CGImageGetHeight(image)
		imageBox = CGRectMake(0, 0, imageWidth, imageHeight)
		
		CGContextSaveGState(ctx)
		CGContextSetAlpha(ctx, opacity)
		CGContextTranslateCTM(ctx, xOffset, yOffset)
		CGContextScaleCTM(ctx, scale, scale)
		CGContextTranslateCTM(ctx, imageWidth / 2, imageHeight / 2)
		CGContextRotateCTM(ctx, angle * math.pi / 180)
		CGContextTranslateCTM(ctx, -imageWidth / 2, -imageHeight / 2)
		CGContextDrawImage(ctx, imageBox, image)
		CGContextRestoreGState(ctx)
		
def createImage(imagePath):
	image = None
	provider = CGDataProviderCreateWithFilename(imagePath)
	if provider:
		imageSrc = CGImageSourceCreateWithDataProvider(provider, None)
		if imageSrc:
			image = CGImageSourceCreateImageAtIndex(imageSrc, 0, None)
	if not image:
		print \"Cannot import the image from file %s\" % imagePath
	return image
	
def watermark(inputFile, watermarkFiles, outputFile, under, xOffset, yOffset, angle, scale, opacity, verbose):
	
	
	images = map(createImage, watermarkFiles)
	
	ctx = CGPDFContextCreateWithURL(CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, outputFile, len(outputFile), False), None, None)
	if ctx:
		pdf = CGPDFDocumentCreateWithURL(CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, inputFile, len(inputFile), False))
		if pdf:
	
			for i in range(1, CGPDFDocumentGetNumberOfPages(pdf) + 1):
				image = images[i % len(images) - 1]
				page = CGPDFDocumentGetPage(pdf, i)
				if page:
					mediaBox = CGPDFPageGetBoxRect(page, kCGPDFMediaBox)
					if CGRectIsEmpty(mediaBox):
						mediaBox = None
		
					CGContextBeginPage(ctx, mediaBox)
					if under:
						drawWatermark(ctx, image, xOffset, yOffset, angle, scale, opacity)
					CGContextDrawPDFPage(ctx, page)
					if not under:
						drawWatermark(ctx, image, xOffset, yOffset, angle, scale, opacity)
					CGContextEndPage(ctx)
					#print \"Inserted in page \",i
					
			del pdf
		CGPDFContextClose(ctx)
		del ctx
		
#watermark(readFilename, args, writeFilename, under, xOffset, yOffset, angle, scale, opacity, verbose);
inputFile= \"" & theFileToStamp & "\"
imagesfiles = (\"" & theStampFile & "\",)
outputFile= \"" & theNewFile & "\"
watermark(inputFile, imagesfiles, outputFile, False, " & theX & ", " & theY & ", " & theangle & "," & thesize & " , " & theOpacity & ", False)'"
	
	set stampedpdf to do shell script "python -c " & thescript
	if debug then display dialog "watermarkFilePY: " & stampedpdf
	log "watermarkFilePY: " & stampedpdf
	return theNewFile
end watermarkFilePY

-- remove_extension
-- ########################################
-- pass a file name returns without extension

on remove_extension(this_name)
	if this_name contains "." then
		set this_name to ¬
			(the reverse of every character of this_name) as string
		set x to the offset of "." in this_name
		set this_name to (text (x + 1) thru -1 of this_name)
		set this_name to (the reverse of every character of this_name) as string
	end if
	return this_name
end remove_extension



# Logs a text representation of the specified object or objects, which may be of any type, typically for debugging.
# Works hard to find a meaningful text representation of each object.
# SYNOPSIS
#   dlog(anyObjOrListOfObjects)
# USE EXAMPLES
#   dlog("before")  # single object
#     dlog({ "front window: ", front window }) # list of objects
# SETUP
#   At the top of your script, define global variable DLOG_TARGETS and set it to a *list* of targets (even if you only have 1 target).
#     set DLOG_TARGETS to {} # must be a list with any combination of: "log", "syslog", "alert", <posixFilePath>
#   An *empty* list means that logging should be *disabled*.
#   If you specify a POSIX file path, the file will be *appended* to; variable references in the path
#   are allowed, and as a courtesy the path may start with "~" to refer to your home dir.
#   Caveat: while you can *remove* the variable definition to disable logging, you'll take an additional performance hit.
# SETUP EXAMPLES
#    For instance, to use both AppleScript's log command *and* display a GUI alert, use:
#       set DLOG_TARGETS to { "log", "alert" }
# Note: 
#   - Since the subroutine is still called even when DLOG_TARGETS is an empty list, 
#     you pay a performancy penalty for leaving dlog() calls in your code.
#   - Unlike with the built-in log() method, you MUST use parentheses around the parameter.
#   - To specify more than one object, pass a *list*. Note that while you could try to synthesize a single
#     output string by concatenation yourself, you'd lose the benefit of this subroutine's ability to derive
#     readable text representations even of objects that can't simply be converted with `as text`.
on dlog(anyObjOrListOfObjects)
	global DLOG_TARGETS
	try
		if length of DLOG_TARGETS is 0 then return
	on error
		return
	end try
	# The following tries hard to derive a readable representation from the input object(s).
	if class of anyObjOrListOfObjects is not list then set anyObjOrListOfObjects to {anyObjOrListOfObjects}
	local lst, i, txt, errMsg, orgTids, oName, oId, prefix, logTarget, txtCombined, prefixTime, prefixDateTime
	set lst to {}
	repeat with anyObj in anyObjOrListOfObjects
		set txt to ""
		repeat with i from 1 to 2
			try
				if i is 1 then
					if class of anyObj is list then
						set {orgTids, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {", "}} # '
						set txt to ("{" & anyObj as string) & "}"
						set AppleScript's text item delimiters to orgTids # '
					else
						set txt to anyObj as string
					end if
				else
					set txt to properties of anyObj as string
				end if
			on error errMsg
				# Trick for records and record-*like* objects:
				# We exploit the fact that the error message contains the desired string representation of the record, so we extract it from there. This (still) works as of AS 2.3 (OS X 10.9).
				try
					set txt to do shell script "egrep -o '\\{.*\\}' <<< " & quoted form of errMsg
				end try
			end try
			if txt is not "" then exit repeat
		end repeat
		set prefix to ""
		if class of anyObj is not in {text, integer, real, boolean, date, list, record} and anyObj is not missing value then
			set prefix to "[" & class of anyObj
			set oName to ""
			set oId to ""
			try
				set oName to name of anyObj
				if oName is not missing value then set prefix to prefix & " name=\"" & oName & "\""
			end try
			try
				set oId to id of anyObj
				if oId is not missing value then set prefix to prefix & " id=" & oId
			end try
			set prefix to prefix & "] "
			set txt to prefix & txt
		end if
		set lst to lst & txt
	end repeat
	set {orgTids, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {" "}} # '
	set txtCombined to lst as string
	set prefixTime to "[" & time string of (current date) & "] "
	set prefixDateTime to "[" & short date string of (current date) & " " & text 2 thru -1 of prefixTime
	set AppleScript's text item delimiters to orgTids # '
	# Log the result to every target specified.
	repeat with logTarget in DLOG_TARGETS
		if contents of logTarget is "log" then
			log prefixTime & txtCombined
		else if contents of logTarget is "alert" then
			display alert prefixTime & txtCombined
		else if contents of logTarget is "syslog" then
			do shell script "logger -t " & quoted form of ("AS: " & (name of me)) & " " & quoted form of txtCombined
		else # assumed to be a POSIX file path to *append* to.
			set fpath to contents of logTarget
			if fpath starts with "~/" then set fpath to "$HOME/" & text 3 thru -1 of fpath
			do shell script "printf '%s\\n' " & quoted form of (prefixDateTime & txtCombined) & " >> \"" & fpath & "\""
		end if
	end repeat
end dlog


# Converts the specified object - which may be of any type - into a string representation for logging/debugging.
# Tries hard to find a readable representation - sadly, simple conversion with `as text` mostly doesn't work with non-primitive types.
# An attempt is made to list the properties of non-primitive types (does not always work), and the result is prefixed with the type (class) name
# and, if present, the object's name and ID.
# EXAMPLE
#       toString(path to desktop)  # -> "[alias] Macintosh HD:Users:mklement:Desktop:"
# To test this subroutine and see the various representations, use the following:
#   repeat with elem in {42, 3.14, "two", true, (current date), {"one", "two", "three"}, {one:1, two:"deux", three:false}, missing value, me,  path to desktop, front window of application (path to frontmost application as text)}
#       log my toString(contents of elem)
#   end repeat
on toString(anyObj)
	local i, txt, errMsg, orgTids, oName, oId, prefix
	set txt to ""
	repeat with i from 1 to 2
		try
			if i is 1 then
				if class of anyObj is list then
					set {orgTids, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {", "}}
					set txt to ("{" & anyObj as string) & "}"
					set AppleScript's text item delimiters to orgTids # '
				else
					set txt to anyObj as string
				end if
			else
				set txt to properties of anyObj as string
			end if
		on error errMsg
			# Trick for records and record-*like* objects:
			# We exploit the fact that the error message contains the desired string representation of the record, so we extract it from there. This (still) works as of AS 2.3 (OS X 10.9).
			try
				set txt to do shell script "egrep -o '\\{.*\\}' <<< " & quoted form of errMsg
			end try
		end try
		if txt is not "" then exit repeat
	end repeat
	set prefix to ""
	if class of anyObj is not in {text, integer, real, boolean, date, list, record} and anyObj is not missing value then
		set prefix to "[" & class of anyObj
		set oName to ""
		set oId to ""
		try
			set oName to name of anyObj
			if oName is not missing value then set prefix to prefix & " name=\"" & oName & "\""
		end try
		try
			set oId to id of anyObj
			if oId is not missing value then set prefix to prefix & " id=" & oId
		end try
		set prefix to prefix & "] "
	end if
	return prefix & txt
end toString