# Readme

a quick script using python (and obsoleted ObjC CG methods) to generate watermarks on documents for legal case:
What it does
-

- take a PDF and a text description (with a given readable format)
- identify the different attachments
- split the PDF in its individual parts
- apply the watermark (and include numbering of each attachment in the watermark)
- merge back the pdf as one file

ToDo
- Verify max size of the page to avoid watermark printing outisde view

Optimisation 
- use another PDF lib
- allow png to be added once only inside the pdf
- generate numbering manually