FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Pieces Tracker      � 	 	     P i e c e s   T r a c k e r     
  
 l     ��������  ��  ��        p         ������ 0 versionnumber versionNumber��        l     ����  r         m        �    0 . 1 0  o      ���� 0 versionnumber versionNumber��  ��        l     ��  ��      � Xavier Barthe 2019     �   *   �   X a v i e r   B a r t h e   2 0 1 9      l     ��������  ��  ��        l     ��   ��    � � ce script choisit un dossier, y cherche le document "bordereau.txt", le parcourt pour identifier les differentes pi�ces par nom et taille      � ! !   c e   s c r i p t   c h o i s i t   u n   d o s s i e r ,   y   c h e r c h e   l e   d o c u m e n t   " b o r d e r e a u . t x t " ,   l e   p a r c o u r t   p o u r   i d e n t i f i e r   l e s   d i f f e r e n t e s   p i � c e s   p a r   n o m   e t   t a i l l e   " # " l     �� $ %��   $ = 7 ce script a besoin de imagemagick (install� avec Brew)    % � & & n   c e   s c r i p t   a   b e s o i n   d e   i m a g e m a g i c k   ( i n s t a l l �   a v e c   B r e w ) #  ' ( ' l     �� ) *��   ) � � Le fichier bordereau.txt attend le format suivant (les mentions entre parenth�ses sont � remplacer par leur valeur, SANS les parenth�ses au final bien s�r)    * � + +8   L e   f i c h i e r   b o r d e r e a u . t x t   a t t e n d   l e   f o r m a t   s u i v a n t   ( l e s   m e n t i o n s   e n t r e   p a r e n t h � s e s   s o n t   �   r e m p l a c e r   p a r   l e u r   v a l e u r ,   S A N S   l e s   p a r e n t h � s e s   a u   f i n a l   b i e n   s � r ) (  , - , l      �� . /��   .�} ===================
bordereau
avocat : (nom de l'avocat communiquant les pi�ces)
barreau : (barreau de l'avocat)
affaire : (nom du dossier)
instance: (nom de l'instance)
Piece 1 : (nom de la pi�ce) : [nombre de pages, du d�but � la fin, garde incluse !]
Piece 3 : (nom de la pi�ce) : [nombre de pages, du d�but � la fin, garde incluse !]
Piece 3 : (nom de la pi�ce) : [nombre de pages, du d�but � la fin, garde incluse !]
Piece 4 :(nom de la pi�ce) : [nombre de pages, du d�but � la fin, garde incluse !]
[� r�p�ter]
Piece (dernier num�ro) : (nom de la pi�ce) : [nombre de pages, du d�but � la fin, garde incluse !]
===================     / � 0 0�   = = = = = = = = = = = = = = = = = = = 
 b o r d e r e a u 
 a v o c a t   :   ( n o m   d e   l ' a v o c a t   c o m m u n i q u a n t   l e s   p i � c e s ) 
 b a r r e a u   :   ( b a r r e a u   d e   l ' a v o c a t ) 
 a f f a i r e   :   ( n o m   d u   d o s s i e r ) 
 i n s t a n c e :   ( n o m   d e   l ' i n s t a n c e ) 
 P i e c e   1   :   ( n o m   d e   l a   p i � c e )   :   [ n o m b r e   d e   p a g e s ,   d u   d � b u t   �   l a   f i n ,   g a r d e   i n c l u s e   ! ] 
 P i e c e   3   :   ( n o m   d e   l a   p i � c e )   :   [ n o m b r e   d e   p a g e s ,   d u   d � b u t   �   l a   f i n ,   g a r d e   i n c l u s e   ! ] 
 P i e c e   3   :   ( n o m   d e   l a   p i � c e )   :   [ n o m b r e   d e   p a g e s ,   d u   d � b u t   �   l a   f i n ,   g a r d e   i n c l u s e   ! ] 
 P i e c e   4   : ( n o m   d e   l a   p i � c e )   :   [ n o m b r e   d e   p a g e s ,   d u   d � b u t   �   l a   f i n ,   g a r d e   i n c l u s e   ! ] 
 [ �   r � p � t e r ] 
 P i e c e   ( d e r n i e r   n u m � r o )   :   ( n o m   d e   l a   p i � c e )   :   [ n o m b r e   d e   p a g e s ,   d u   d � b u t   �   l a   f i n ,   g a r d e   i n c l u s e   ! ] 
 = = = = = = = = = = = = = = = = = = =   -  1 2 1 l     �� 3 4��   3 � {  il prend ensuite le document "pieces.pdf" dans le m�me dossier, et va apposer un tampon de num�rotation piece par piece.     4 � 5 5 �     i l   p r e n d   e n s u i t e   l e   d o c u m e n t   " p i e c e s . p d f "   d a n s   l e   m � m e   d o s s i e r ,   e t   v a   a p p o s e r   u n   t a m p o n   d e   n u m � r o t a t i o n   p i e c e   p a r   p i e c e .   2  6 7 6 l     �� 8 9��   8 m g (passant par un dossier temporaire et g�n�rant un fichier par pi�ces, qui seront ensuite re-fusionn�s)    9 � : : �   ( p a s s a n t   p a r   u n   d o s s i e r   t e m p o r a i r e   e t   g � n � r a n t   u n   f i c h i e r   p a r   p i � c e s ,   q u i   s e r o n t   e n s u i t e   r e - f u s i o n n � s ) 7  ; < ; l     �� = >��   = � � Si un fichier 'tampon.png' est fourni dans ce dossier ou ailleurs, il s'en servira comme cadre, sinon il g�n�re une image cadre standard � partir des informations communiqu�es    > � ? ?`   S i   u n   f i c h i e r   ' t a m p o n . p n g '   e s t   f o u r n i   d a n s   c e   d o s s i e r   o u   a i l l e u r s ,   i l   s ' e n   s e r v i r a   c o m m e   c a d r e ,   s i n o n   i l   g � n � r e   u n e   i m a g e   c a d r e   s t a n d a r d   �   p a r t i r   d e s   i n f o r m a t i o n s   c o m m u n i q u � e s <  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D   todo    E � F F 
   t o d o C  G H G l     �� I J��   I   NUMBERING is wrong �    J � K K *   N U M B E R I N G   i s   w r o n g  " H  L M L l     �� N O��   N 7 1 verify path for imagemagick (check with space) �    O � P P b   v e r i f y   p a t h   f o r   i m a g e m a g i c k   ( c h e c k   w i t h   s p a c e )  " M  Q R Q l     �� S T��   S 6 0 verify presence of stamp / offer to hunt for it    T � U U `   v e r i f y   p r e s e n c e   o f   s t a m p   /   o f f e r   t o   h u n t   f o r   i t R  V W V l     �� X Y��   X   verify name of file    Y � Z Z (   v e r i f y   n a m e   o f   f i l e W  [ \ [ l     �� ] ^��   ] 9 3 pass list fo file names, return list of file paths    ^ � _ _ f   p a s s   l i s t   f o   f i l e   n a m e s ,   r e t u r n   l i s t   o f   f i l e   p a t h s \  ` a ` l     �� b c��   b 8 2 implement proper log , not working even with dlog    c � d d d   i m p l e m e n t   p r o p e r   l o g   ,   n o t   w o r k i n g   e v e n   w i t h   d l o g a  e f e l     �� g h��   g M G implement cleaner image generation (library is using deprecated calls)    h � i i �   i m p l e m e n t   c l e a n e r   i m a g e   g e n e r a t i o n   ( l i b r a r y   i s   u s i n g   d e p r e c a t e d   c a l l s ) f  j k j l     �� l m��   l E ? offer to split files into size-based individual pieces or else    m � n n ~   o f f e r   t o   s p l i t   f i l e s   i n t o   s i z e - b a s e d   i n d i v i d u a l   p i e c e s   o r   e l s e k  o p o l     �� q r��   q &   add various fields to bordereau    r � s s @   a d d   v a r i o u s   f i e l d s   t o   b o r d e r e a u p  t u t l     �� v w��   v ) # open in Word a templated bordereau    w � x x F   o p e n   i n   W o r d   a   t e m p l a t e d   b o r d e r e a u u  y z y l     �� { |��   { � � allow for arbitrary numering (skip a piece, add a blank piece cover sheet for placeholder (name Nopiece instead of Piece, assume 1 page)    | � } }   a l l o w   f o r   a r b i t r a r y   n u m e r i n g   ( s k i p   a   p i e c e ,   a d d   a   b l a n k   p i e c e   c o v e r   s h e e t   f o r   p l a c e h o l d e r   ( n a m e   N o p i e c e   i n s t e a d   o f   P i e c e ,   a s s u m e   1   p a g e ) z  ~  ~ l     �� � ���   �    allow for number not full    � � � � 4   a l l o w   f o r   n u m b e r   n o t   f u l l   � � � l     �� � ���   � $  check for empty final lines ?    � � � � <   c h e c k   f o r   e m p t y   f i n a l   l i n e s   ? �  � � � l     �� � ���   � $  allow piece or pi�ce (accent)    � � � � <   a l l o w   p i e c e   o r   p i � c e   ( a c c e n t ) �  � � � l     �� � ���   � - ' offer reformatted listing in clipboard    � � � � N   o f f e r   r e f o r m a t t e d   l i s t i n g   i n   c l i p b o a r d �  � � � l     �� � ���   �   change N� to n� �    � � � � $   c h a n g e   N �   t o   n �  " �  � � � l     �� � ���   �   bolden piece number    � � � � (   b o l d e n   p i e c e   n u m b e r �  � � � l     �� � ���   � "  reposition stamp if need be    � � � � 8   r e p o s i t i o n   s t a m p   i f   n e e d   b e �  � � � l     �� � ���   �   insert ToC to PDF ?    � � � � (   i n s e r t   T o C   t o   P D F   ? �  � � � l     ��������  ��  ��   �  � � � p       � � �� ��� 	0 debug   � �� ��� 0 	pieceword 	pieceWord � �� ��� $0 thecountofpieces theCountOfPieces � �� ��� &0 theconvertcommand theConvertCommand � �� ��� 0 verbose   � �� ��� 0 thex theX � �� ��� 0 they theY � ������ 0 defaultfont defaultFont��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l    ����� � r     � � � m     � � � � � 
 4 5 0 . 0 � o      ���� 0 thex theX��  ��   �  � � � l    ����� � r     � � � m    	 � � � � �  7 0 0 � o      ���� 0 they theY��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  
 set debug    � � � �    s e t   d e b u g �  � � � l    ����� � r     � � � m    ��
�� boovfals � o      ���� 	0 debug  ��  ��   �  � � � l    � � � � r     � � � m    ��
�� boovtrue � o      ���� 0 verbose   � . ( this will add much more to debug output    � � � � P   t h i s   w i l l   a d d   m u c h   m o r e   t o   d e b u g   o u t p u t �  � � � l      �� � ���   � � �
set debugbutton to button returned of (display dialog "Debug ?" buttons {"Non", "Oui", "Verbose"} default button 3)
if debugbutton = "Oui" then set debug to true
if debugbutton = "Verbose" then set verbose to true
    � � � �� 
 s e t   d e b u g b u t t o n   t o   b u t t o n   r e t u r n e d   o f   ( d i s p l a y   d i a l o g   " D e b u g   ? "   b u t t o n s   { " N o n " ,   " O u i " ,   " V e r b o s e " }   d e f a u l t   b u t t o n   3 ) 
 i f   d e b u g b u t t o n   =   " O u i "   t h e n   s e t   d e b u g   t o   t r u e 
 i f   d e b u g b u t t o n   =   " V e r b o s e "   t h e n   s e t   v e r b o s e   t o   t r u e 
 �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l   / ����� � Z    / � ��� � � I    �������� $0 checkiminstalled CheckIMInstalled��  ��   � l   �� � ���   � 4 . we check we have to the tool and set its path    � � � � \   w e   c h e c k   w e   h a v e   t o   t h e   t o o l   a n d   s e t   i t s   p a t h��   � k     / � �  � � � I    %�� ���
�� .sysodlogaskr        TEXT � m     ! � � � � � � D � s o l � .   V o u s   d e v e z   i n s t a l l e r   I m a g e M a g i c k   p o u r   u t i l i s e r   c e   s c r i p t   !   P a r   e x e m p l e   a v e c   H o m e B r e w   : 
   $ >   b r e w   i n s t a l l   i m a g e m a g i c k��   �  � � � I   & ,�� ����� 0 dlog   �  ��� � m   ' ( � � � � � � a b o r t i n g :   w e   n e e d   i m a g e m a g i c k   o n   t h i s   M a c :   h t t p s : / / w w w . i m a g e m a g i c k . o r g / s c r i p t / b i n a r y - r e l e a s e s . p h p # m a c o s x��  ��   �  ��� � L   - /����  ��  ��  ��   �  � � � l  0 = ����� � Z  0 = � ����� � o   0 1���� 	0 debug   � I  4 9�� ���
�� .sysodlogaskr        TEXT � o   4 5���� &0 theconvertcommand theConvertCommand��  ��  ��  ��  ��   �  � � � l  > F ����� � I   > F�� ���� 0 dlog    �� b   ? B m   ? @ � D w e   w i l l   u s e   i m a g e m a g i c k ,   f o u n d   a t   o   @ A���� &0 theconvertcommand theConvertCommand��  ��  ��  ��   �  l     ��������  ��  ��   	 l     ��
��  
 #  let's  set the default names    � :   l e t ' s     s e t   t h e   d e f a u l t   n a m e s	  l  G L���� r   G L m   G H �  B o r d e r e a u . t x t o      ���� ,0 defaultnamebordereau defaultNameBordereau��  ��    l  M T���� r   M T m   M P �  P i � c e s . p d f o      ���� 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc��  ��    l  U \���� r   U \ m   U X   �!!  F i n a l P i e c e s . p d f o      ���� "0 finalnamepdfdoc finalNamePDFDoc��  ��   "#" l     �������  ��  �  # $%$ l     �~&'�~  & "  let's set some default vars   ' �(( 8   l e t ' s   s e t   s o m e   d e f a u l t   v a r s% )*) l  ] d+�}�|+ r   ] d,-, m   ] `.. �// 
 P i � c e- o      �{�{ 0 	pieceword 	pieceWord�}  �|  * 010 l  e l2�z�y2 r   e l343 m   e h55 �66  t a m p o n . p n g4 o      �x�x "0 defaultnamelogo defaultNameLogo�z  �y  1 787 l  m t9�w�v9 r   m t:;: m   m p<< �==  t e m p; o      �u�u .0 defaulttempfoldername defaultTempFolderName�w  �v  8 >?> l  u |@�t�s@ r   u |ABA m   u xCC �DD H / L i b r a r y / F o n t s / / C o u r i e r   N e w   B o l d . t t fB o      �r�r 0 defaultfont defaultFont�t  �s  ? EFE l  } �G�q�pG r   } �HIH m   } ~�o�o  I o      �n�n .0 thenumberofpagesinpdf theNumberofPagesInPDF�q  �p  F JKJ l  � �L�m�lL r   � �MNM m   � ��k�k  N o      �j�j $0 thecountofpieces theCountOfPieces�m  �l  K OPO l     �i�h�g�i  �h  �g  P QRQ l  � �S�f�eS I  � ��dT�c
�d .sysodlogaskr        TEXTT b   � �UVU b   � �WXW b   � �YZY b   � �[\[ b   � �]^] b   � �_`_ b   � �aba b   � �cdc b   � �efe m   � �gg �hh , P i e c e s T r a c k e r   v e r s i o n  f o   � ��b�b 0 versionnumber versionNumberd m   � �ii �jj � 
 
 O n   v a   v o u s   d e m a n d e r   l e   d o s s i e r   d a n s   l e q u e l   i l   y   a   : 
 -   l e   b o r d e r e a u   s o u s   l e   n o m   :   'b o   � ��a�a ,0 defaultnamebordereau defaultNameBordereau` m   � �kk �ll \ '   
 l i s t a n t   l e s   p i � c e s   p a r   l i g n e   d � b u t a n t   p a r   '^ o   � ��`�` 0 	pieceword 	pieceWord\ m   � �mm �nn ~ '   s u i v i   d u   n �   d e   p i � c e 
 -   l e   f i c h i e r   P D F   d e   t o u t e s   l e s   p i � c e s   :  Z o   � ��_�_ 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDocX m   � �oo �pp 2 ' 
 -   e t   l e   t a m p o n ,   s o u s   :  V o   � ��^�^ "0 defaultnamelogo defaultNameLogo�c  �f  �e  R qrq l     �]�\�[�]  �\  �[  r sts l     �Z�Y�X�Z  �Y  �X  t uvu l  � �w�W�Vw Z  � �xy�U�Tx H   � �zz o   � ��S�S 	0 debug  y I  � ��R{|
�R .sysonotfnull��� ��� TEXT{ m   � �}} �~~ � R e c h e r c h e   d u   d o s s i e r   o �   s e   t r o u v e n t   v o t r e   f i c h i e r   d e   p i � c e s   e t   v o t r e   b o r d e r e a u .| �Q�
�Q 
appr m   � ��� ��� , N u m � r o t a t i o n   d e   p i � c e s� �P��O
�P 
nsou� m   � ��� ���  B o t t l e�O  �U  �T  �W  �V  v ��� l     �N�M�L�N  �M  �L  � ��� l     �K�J�I�K  �J  �I  � ��� l     �H�G�F�H  �G  �F  � ��� l     �E���E  � S M let's choose where we saved both the bordereau and the pieces.pdf (one file)   � ��� �   l e t ' s   c h o o s e   w h e r e   w e   s a v e d   b o t h   t h e   b o r d e r e a u   a n d   t h e   p i e c e s . p d f   ( o n e   f i l e )� ��� l  � ���D�C� r   � ���� I  � ��B�A�
�B .sysostflalis    ��� null�A  � �@��
�@ 
prmp� b   � ���� b   � ���� m   � ��� ���� C h o i s i s s e z   l e   d o s s i e r   o �   s e   t r o u v e   l e   f i c h i e r   b o r d e r e a u . t x t   e t   l e   f i c h i e r   p i e c e s . p d f   c o m p o r t a n t   t o u t e s   l e s   p i � c e s   e n   u n   s e u l   P D F   
 ( a t t e n t i o n   :   c e   s c r i p t   s ' a t t e n d   �   t r o u v e r   l e s   p i e c e s   l i s t � e s   a v e c   l e   m o t   '� o   � ��?�? 0 	pieceword 	pieceWord� m   � ��� ���  ' )� �>��=
�> 
dflc� l  � ���<�;� I  � ��:��9
�: .earsffdralis        afdr� m   � ��8
�8 afdmdesk�9  �<  �;  �=  � o      �7�7 "0 theoutputfolder theOutputFolder�D  �C  � ��� l  ���6�5� r   ���� l  � ���4�3� n   � ���� 1   � ��2
�2 
psxp� o   � ��1�1 "0 theoutputfolder theOutputFolder�4  �3  � o      �0�0 0 thefolderpath theFolderPath�6  �5  � ��� l     �/�.�-�/  �.  �-  � ��� l ��,�+� r  ��� b  	��� o  �*�* 0 thefolderpath theFolderPath� o  �)�) .0 defaulttempfoldername defaultTempFolderName� o      �(�( 0 thetemppath theTempPath�,  �+  � ��� l ��'�&� r  ��� n  ��� 1  �%
�% 
strq� o  �$�$ 0 thetemppath theTempPath� o      �#�# &0 thequotedtemppath theQuotedTempPath�'  �&  � ��� l     �"�!� �"  �!  �   � ��� l .���� Z .����� o  �� 	0 debug  � I *���
� .sysodlogaskr        TEXT� I  &���� .0 checkfileexistsatpath CheckFileExistsAtPath� ��� o  "�� 0 thetemppath theTempPath�  �  �  �  �  �  �  � ��� l /H���� Z /H����� o  /0�� 0 verbose  � I  3D���� 0 dlog  � ��� b  4@��� m  47�� ��� ( w e   h a v e   a   t e m p   p a t h  � I  7?���� .0 checkfileexistsatpath CheckFileExistsAtPath� ��
� o  8;�	�	 0 thetemppath theTempPath�
  �  �  �  �  �  �  �  � ��� l     ����  �  �  � ��� l Ih���� Z Ih����� H  IR�� I  IQ��� � .0 checkfileexistsatpath CheckFileExistsAtPath� ���� o  JM���� 0 thetemppath theTempPath��  �   � r  Ud��� I  U`������� (0 createfolderatpath createFolderAtPath� ��� o  VY���� 0 thefolderpath theFolderPath� ���� o  Y\���� .0 defaulttempfoldername defaultTempFolderName��  ��  � o      ���� 0 thetemppath theTempPath�  �  �  �  � ��� l     ��������  ��  ��  � ��� l it������ r  it��� b  ip��� l il������ o  il���� 0 thefolderpath theFolderPath��  ��  � o  lo���� ,0 defaultnamebordereau defaultNameBordereau� o      ���� "0 directpathtotxt directPathToTxt��  ��  � ��� l u������� r  u���� l u������� n  u���� 1  |���
�� 
strq� l u|������ b  u|��� o  ux���� 0 thefolderpath theFolderPath� o  x{���� ,0 defaultnamebordereau defaultNameBordereau��  ��  ��  ��  � o      ���� "0 quotedpathtotxt quotedPathToTxt��  ��  � ��� l     ��������  ��  ��  � ��� l �������� Z ��������� o  ������ 0 verbose  � I  ��������� 0 dlog  �  ��  b  �� m  �� � ( w e   h a v e   a   t e x t   f i l e   o  ������ "0 directpathtotxt directPathToTxt��  ��  ��  ��  ��  ��  �  l     ��������  ��  ��    l ��	����	 r  ��

 b  �� l ������ o  ������ 0 thefolderpath theFolderPath��  ��   o  ������ 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc o      ���� "0 directpathtopdf directPathToPDF��  ��    l ������ r  �� l ������ n  �� 1  ����
�� 
strq l ������ b  �� o  ������ 0 thefolderpath theFolderPath o  ������ 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc��  ��  ��  ��   o      ���� "0 quotedpathtopdf quotedPathToPDF��  ��    l     ��������  ��  ��    l ������ Z �� ���� o  ������ 0 verbose    I  ����!���� 0 dlog  ! "��" b  ��#$# m  ��%% �&&  w e   h a v e   a   p d f$ o  ������ "0 directpathtopdf directPathToPDF��  ��  ��  ��  ��  ��   '(' l     ��������  ��  ��  ( )*) l ��+����+ r  ��,-, b  ��./. l ��0����0 o  ������ 0 thefolderpath theFolderPath��  ��  / o  ������ "0 defaultnamelogo defaultNameLogo- o      ���� $0 directpathtologo directPathToLogo��  ��  * 121 l ��3����3 r  ��454 l ��6����6 n  ��787 1  ����
�� 
strq8 l ��9����9 b  ��:;: o  ������ 0 thefolderpath theFolderPath; o  ������ "0 defaultnamelogo defaultNameLogo��  ��  ��  ��  5 o      ���� $0 quotedpathtologo quotedPathToLogo��  ��  2 <=< l     ��������  ��  ��  = >?> l ��@����@ Z ��AB����A o  ������ 0 verbose  B I  ����C���� 0 dlog  C D��D b  ��EFE m  ��GG �HH " w e   h a v e   a   t a m p o n  F o  ������ "0 defaultnamelogo defaultNameLogo��  ��  ��  ��  ��  ��  ? IJI l     ��������  ��  ��  J KLK l �M����M Z �NO����N o  ������ 	0 debug  O I  ��P��
�� .sysodlogaskr        TEXTP b   QRQ b   STS b   UVU b   WXW o   ���� "0 directpathtotxt directPathToTxtX m  YY �ZZ   V o  
���� "0 directpathtopdf directPathToPDFT m  [[ �\\   R o  ���� "0 defaultnamelogo defaultNameLogo��  ��  ��  ��  ��  L ]^] l     ��������  ��  ��  ^ _`_ l :a����a Z :bc����b H  dd o  ���� 	0 debug  c I !6��ef
�� .sysonotfnull��� ��� TEXTe m  !$gg �hh J T o u s   l e s   f i c h i e r s   s o n t   l � ,   a l l o n s - y   !f ��ij
�� 
appri m  '*kk �ll , N u m � r o t a t i o n   d e   p i � c e sj ��m�
�� 
nsoum m  -0nn �oo  B o t t l e�  ��  ��  ��  ��  ` pqp l     �~�}�|�~  �}  �|  q rsr l ;Ft�{�zt r  ;Fuvu b  ;Bwxw o  ;>�y�y 0 thefolderpath theFolderPathx o  >A�x�x "0 finalnamepdfdoc finalNamePDFDocv o      �w�w  0 pathtofinalpdf pathToFinalPDF�{  �z  s yzy l     �v�u�t�v  �u  �t  z {|{ l     �s}~�s  } - ' We stop if we don't find the bordereau   ~ � N   W e   s t o p   i f   w e   d o n ' t   f i n d   t h e   b o r d e r e a u| ��� l Gp��r�q� Z  Gp��p�o�� I  GO�n��m�n .0 checkfileexistsatpath CheckFileExistsAtPath� ��l� o  HK�k�k "0 directpathtotxt directPathToTxt�l  �m  �p  �o  � k  Vp�� ��� I Va�j��i
�j .sysodlogaskr        TEXT� b  V]��� m  VY�� ��� 0 I l   n ' y   a   p a s   d e   f i c h i e r  � o  Y\�h�h ,0 defaultnamebordereau defaultNameBordereau�i  � ��� I bm�g��f
�g .ascrcmnt****      � ****� b  bi��� m  be�� ���  P a s   d e  � o  eh�e�e ,0 defaultnamebordereau defaultNameBordereau�f  � ��� l nn�d�c�b�d  �c  �b  � ��a� L  np�`�`  �a  �r  �q  � ��� l     �_�^�]�_  �^  �]  � ��� l     �\���\  � ' ! We stop if we don't find the pdf   � ��� B   W e   s t o p   i f   w e   d o n ' t   f i n d   t h e   p d f� ��� l q���[�Z� Z  q���Y�X�� I  qy�W��V�W .0 checkfileexistsatpath CheckFileExistsAtPath� ��U� o  ru�T�T "0 directpathtopdf directPathToPDF�U  �V  �Y  �X  � k  ���� ��� I ���S��R
�S .sysodlogaskr        TEXT� b  ����� m  ���� ��� 0 I l   n ' y   a   p a s   d e   f i c h i e r  � o  ���Q�Q 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc�R  � ��P� L  ���O�O  �P  �[  �Z  � ��� l     �N�M�L�N  �M  �L  � ��� l     �K���K  � 5 / We stop if we don't find the pdf (in the name)   � ��� ^   W e   s t o p   i f   w e   d o n ' t   f i n d   t h e   p d f   ( i n   t h e   n a m e )� ��� l ����J�I� Z  ����H�G�� I  ���F��E�F *0 checkthisisapdfpath CheckThisIsAPDFPath� ��D� o  ���C�C "0 directpathtopdf directPathToPDF�D  �E  �H  �G  � k  ���� ��� I ���B��A
�B .sysodlogaskr        TEXT� m  ���� ��� & C e   n ' e s t   p a s   u n   P D F�A  � ��@� L  ���?�?  �@  �J  �I  � ��� l     �>�=�<�>  �=  �<  � ��� l     �;���;  � , & We stop if we don't find the logo.png   � ��� L   W e   s t o p   i f   w e   d o n ' t   f i n d   t h e   l o g o . p n g� ��� l ����:�9� Z  ����8�7�� I  ���6��5�6 .0 checkfileexistsatpath CheckFileExistsAtPath� ��4� o  ���3�3 $0 directpathtologo directPathToLogo�4  �5  �8  �7  � k  ���� ��� I ���2��1
�2 .sysodlogaskr        TEXT� b  ����� m  ���� ��� 0 I l   n ' y   a   p a s   d e   f i c h i e r  � o  ���0�0 "0 defaultnamelogo defaultNameLogo�1  � ��/� L  ���.�.  �/  �:  �9  � ��� l     �-�,�+�-  �,  �+  � ��� l     �*�)�(�*  �)  �(  � ��� l     �'���'  � $  let's load the bordereau info   � ��� <   l e t ' s   l o a d   t h e   b o r d e r e a u   i n f o� ��� l ����&�%� r  ����� I ���$��
�$ .rdwrread****        ****� l ����#�"� o  ���!�! "0 directpathtotxt directPathToTxt�#  �"  � � ��
�  
as  � m  ���
� 
utf8�  � o      �� $0 thebordereautext theBordereauText�&  �%  � ��� l ������ Z ������� o  ���� 	0 debug  � I �����
� .sysodlogaskr        TEXT� o  ���� $0 thebordereautext theBordereauText�  �  �  �  �  � ��� l ������ Z ������� o  ���� 0 verbose  � I �����
� .ascrcmnt****      � ****� b  ����� m  ���� ���  b o r d e r e a u   :  � o  ���� $0 thebordereautext theBordereauText�  �  �  �  �  � ��� l �	 ��  r  �	 I  ��
�	�
 40 returnfilecontentsaslist ReturnFileContentsAsList � o  ��� "0 directpathtotxt directPathToTxt�  �	   o      �� 0 	textlines 	textLines�  �  �  l     ����  �  �    l 
	��	 r  


 I  
� ���  60 countnameandpagesofpieces CountNameAndPagesOfPieces �� o  ���� 0 	textlines 	textLines��  ��   o      ���� <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces�  �    l     ��������  ��  ��    l #���� r  # I  ������ "0 sumtotalofpages SumTotalOfPages �� o  ���� <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces��  ��   o      ���� .0 theexpectedtotalpages theExpectedTotalPages��  ��    l $7���� Z $7���� o  $%���� 	0 debug   I (3����
�� .sysodlogaskr        TEXT b  (/ m  (+ �   R w e   h a v e   s o   m a n y   p a g e s   f r o m   t h e   b o r d e r e a u   o  +.���� .0 theexpectedtotalpages theExpectedTotalPages��  ��  ��  ��  ��   !"! l 8C#����# I 8C��$��
�� .ascrcmnt****      � ****$ b  8?%&% m  8;'' �((   s o   m a n y   p a g e s   :  & o  ;>���� .0 theexpectedtotalpages theExpectedTotalPages��  ��  ��  " )*) l     ��������  ��  ��  * +,+ l DP-����- r  DP./. I  DL��0���� (0 detailsofbordereau DetailsOfBordereau0 1��1 o  EH���� 0 	textlines 	textLines��  ��  / o      ���� $0 thekeyvaluepairs theKeyValuePairs��  ��  , 232 l     ��������  ��  ��  3 454 l     ��67��  6 , &if debug then display dialog textLines   7 �88 L i f   d e b u g   t h e n   d i s p l a y   d i a l o g   t e x t L i n e s5 9:9 l     ��������  ��  ��  : ;<; l     ��=>��  = , & let's find the number of pages in PDF   > �?? L   l e t ' s   f i n d   t h e   n u m b e r   o f   p a g e s   i n   P D F< @A@ l Q]B����B r  Q]CDC I  QY��E���� $0 getpagesoffilepy GetPagesOfFilePYE F��F o  RU���� "0 directpathtopdf directPathToPDF��  ��  D o      ���� .0 thenumberofpagesinpdf theNumberofPagesInPDF��  ��  A GHG l ^qI����I Z ^qJK����J o  ^_���� 	0 debug  K I bm��L��
�� .sysodlogaskr        TEXTL b  biMNM o  be���� .0 thenumberofpagesinpdf theNumberofPagesInPDFN m  ehOO �PP $   p a g e s   i n   t h i s   P D F��  ��  ��  ��  ��  H QRQ l r}S����S r  r}TUT I ry��V��
�� .corecnte****       ****V o  ru���� <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces��  U o      ���� 0 countofpieces countofPieces��  ��  R WXW l ~�Y����Y Z ~�Z[����Z H  ~�\\ o  ~���� 	0 debug  [ I ����]^
�� .sysonotfnull��� ��� TEXT] b  ��_`_ b  ��aba m  ��cc �dd  D a n s   u n   P D F   d e  b o  ������ .0 thenumberofpagesinpdf theNumberofPagesInPDF` m  ��ee �ff    p a g e s .^ ��gh
�� 
apprg b  ��iji b  ��klk m  ��mm �nn  l o  ������ 0 countofpieces countofPiecesj m  ��oo �pp    p i � c e sh ��q��
�� 
nsouq m  ��rr �ss  B o t t l e��  ��  ��  ��  ��  X tut l ��v����v Z ��wx����w o  ������ 	0 debug  x I ����yz
�� .sysonotfnull��� ��� TEXTy b  ��{|{ b  ��}~} m  �� ��� J D a n s   u n   P D F   d e   t h e N u m b e r o f P a g e s I n P D F  ~ o  ������ .0 thenumberofpagesinpdf theNumberofPagesInPDF| m  ���� ���    p a g e s .z ����
�� 
appr� b  ����� b  ����� m  ���� ���  � o  ������ 0 countofpieces countofPieces� m  ���� ���    p i � c e s� �����
�� 
nsou� m  ���� ���  B o t t l e��  ��  ��  ��  ��  u ��� l     ��������  ��  ��  � ��� l �������� I �������
�� .ascrcmnt****      � ****� b  ����� m  ���� ��� . i n   P D F   w e   f i n d   p a g e s   :  � o  ������ .0 thenumberofpagesinpdf theNumberofPagesInPDF��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � H B check consistency between the list and size of pieces and the PDF   � ��� �   c h e c k   c o n s i s t e n c y   b e t w e e n   t h e   l i s t   a n d   s i z e   o f   p i e c e s   a n d   t h e   P D F� ��� l ������� Z  �������� l �������� > ����� ]  ����� o  ������ .0 thenumberofpagesinpdf theNumberofPagesInPDF� m  ������ � ]  ����� o  ������ .0 theexpectedtotalpages theExpectedTotalPages� m  ������ ��  ��  � l ����� k  ��� ��� I ������
�� .sysodlogaskr        TEXT� b  ���� b  ���� b  � ��� b  ����� m  ���� ��� 8 O o o p s   !   V o u s   a v e z   u n   P D F   d e  � o  ������ .0 thenumberofpagesinpdf theNumberofPagesInPDF� m  ���� ��� Z   p a g e s ,   m a i s   v o u s   l i s t e z   d e s   p i � c e s   c o u v r a n t  � o   ���� .0 theexpectedtotalpages theExpectedTotalPages� m  �� ���    f e u i l l e t s   !��  � ��� I �����
�� .ascrcmnt****      � ****� m  �� ��� t e r r o r   :   n o t   s a m e   t o t a l   p a g e s   i n   b o r d e r e a u   a n d   p a g e s   i n   P D F��  � ���� L  ����  ��  � / ) beware equality is not good on variables   � ��� R   b e w a r e   e q u a l i t y   i s   n o t   g o o d   o n   v a r i a b l e s��  ��  ��  ��  � ��� l      ������  � � �
-- check consistency in the numbering of pieces
set countofPieces to count of theCountNameAndPagesOfPieces
if (theCountOfPieces * 1 = countofPieces * 1) then
--
end if
   � ���R 
 - -   c h e c k   c o n s i s t e n c y   i n   t h e   n u m b e r i n g   o f   p i e c e s 
 s e t   c o u n t o f P i e c e s   t o   c o u n t   o f   t h e C o u n t N a m e A n d P a g e s O f P i e c e s 
 i f   ( t h e C o u n t O f P i e c e s   *   1   =   c o u n t o f P i e c e s   *   1 )   t h e n 
 - - 
 e n d   i f 
� ��� l     ��������  ��  ��  � ��� l     ������  �  	 we need    � ���    w e   n e e d  � ��� l     ��������  ��  ��  � ��� l     �������  ��  �  � ��� l +��~�}� Z +���|�{� o  �z�z 	0 debug  � I  '�y��x
�y .sysodlogaskr        TEXT� m   #�� ��� ( O k ,   w e   a r e   a l l   s e t   !�x  �|  �{  �~  �}  � ��� l ,3��w�v� I ,3�u��t
�u .ascrcmnt****      � ****� m  ,/�� ��� ^ A l l   c o n f i g   i s   h e r e ,   l e t ' s   w a t e r m a r k   s o m e   f i l e s !�t  �w  �v  � ��� l     �s�r�q�s  �r  �q  � ��� l     �p���p  � � � split the pdf in the different pieces -- (beware, we have a function that expects to get the first split page number AT 2ND DOC page number)   � ���   s p l i t   t h e   p d f   i n   t h e   d i f f e r e n t   p i e c e s   - -   ( b e w a r e ,   w e   h a v e   a   f u n c t i o n   t h a t   e x p e c t s   t o   g e t   t h e   f i r s t   s p l i t   p a g e   n u m b e r   A T   2 N D   D O C   p a g e   n u m b e r )� ��� l     �o�n�m�o  �n  �m  � ��� l 4:��l�k� r  4:��� J  46�j�j  � o      �i�i &0 thearrayofindexes theArrayOfIndexes�l  �k  � ��� l ;h��h�g� X  ;h��f�� r  Qc��� b  Q_��� o  QT�e�e &0 thearrayofindexes theArrayOfIndexes� l T^��d�c� \  T^� � ]  T\ l TZ�b�a n  TZ 4  UZ�`
�` 
cobj m  XY�_�_  o  TU�^�^ 
0 apiece  �b  �a   m  Z[�]�]   m  \]�\�\ �d  �c  � o      �[�[ &0 thearrayofindexes theArrayOfIndexes�f 
0 apiece  � o  >A�Z�Z <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces�h  �g  �  l     �Y�X�W�Y  �X  �W   	
	 l i|�V�U r  i| n  ix 7 lx�T
�T 
cobj m  rt�S�S  m  uw�R�R�� o  il�Q�Q &0 thearrayofindexes theArrayOfIndexes o      �P�P &0 thearrayofindexes theArrayOfIndexes�V  �U  
  l }��O�N s  }� o  }��M�M .0 theexpectedtotalpages theExpectedTotalPages l     �L�K n        ;  �� o  ���J�J &0 thearrayofindexes theArrayOfIndexes�L  �K  �O  �N    l     �I�I   &  display dialog theArrayOfIndexes    � @ d i s p l a y   d i a l o g   t h e A r r a y O f I n d e x e s   l     �H�G�F�H  �G  �F    !"! l ��#�E�D# r  ��$%$ I  ���C&�B�C 0 	splittext 	splitText& '(' I  ���A)�@�A 0 trim  ) *+* I  ���?,�>�? 20 writexfilespdffromonepy WriteXFilesPDFfromOnePY, -.- o  ���=�= "0 directpathtopdf directPathToPDF. /0/ o  ���<�< 0 thetemppath theTempPath0 1�;1 o  ���:�: &0 thearrayofindexes theArrayOfIndexes�;  �>  + 2�92 1  ���8
�8 
spac�9  �@  ( 3�73 1  ���6
�6 
spac�7  �B  % o      �5�5 .0 thegeneratedfileslist theGeneratedFilesList�E  �D  " 454 l ��6786 Z ��9:�4�39 o  ���2�2 0 verbose  : I ���1;�0
�1 .ascrcmnt****      � ****; b  ��<=< m  ��>> �?? D W e   s p l i t   t h e   o n e   f i l e   i n t o   t h o s e :  = o  ���/�/ .0 thegeneratedfileslist theGeneratedFilesList�0  �4  �3  7   this is an object list   8 �@@ .   t h i s   i s   a n   o b j e c t   l i s t5 ABA l     �.�-�,�.  �-  �,  B CDC l     �+EF�+  E P J we make the watermark image with generateStampImageForPieceNumberIM4param   F �GG �   w e   m a k e   t h e   w a t e r m a r k   i m a g e   w i t h   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M 4 p a r a mD HIH l     �*JK�*  J R L todo : correct generateStampImageForPieceNumberIM to amend quoted path etc.   K �LL �   t o d o   :   c o r r e c t   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M   t o   a m e n d   q u o t e d   p a t h   e t c .I MNM l     �)�(�'�)  �(  �'  N OPO l     �&QR�&  Q � �if not debug then display notification "Dans un dossier '" & defaultTempFolderName & "/' dans votre dossier." with title "Cr�ation des fichiers interm�diaires" sound name "Bottle"   R �SSf i f   n o t   d e b u g   t h e n   d i s p l a y   n o t i f i c a t i o n   " D a n s   u n   d o s s i e r   ' "   &   d e f a u l t T e m p F o l d e r N a m e   &   " / '   d a n s   v o t r e   d o s s i e r . "   w i t h   t i t l e   " C r � a t i o n   d e s   f i c h i e r s   i n t e r m � d i a i r e s "   s o u n d   n a m e   " B o t t l e "P TUT l     �%�$�#�%  �$  �#  U VWV l ��X�"�!X r  ��YZY J  ��� �   Z o      �� 0 themanyimages theManyImages�"  �!  W [\[ l �&]��] Y  �&^�_`�^ k  �!aa bcb l ������  �  �  c ded Z ��fg��f o  ���� 	0 debug  g I ���h�
� .sysodlogaskr        TEXTh b  ��iji b  ��klk b  ��mnm m  ��oo �pp 4 m a k i n g   w a t e r m a r k i n g   i m a g e  n o  ���� 0 i  l m  ��qq �rr    :  j n  ��sts 4  ���u
� 
cobju o  ���� 0 i  t o  ���� .0 thegeneratedfileslist theGeneratedFilesList�  �  �  e vwv l ���xy�  x � �generateStampImageForPieceNumberIM4param(convertcommand, theOriginalImagePathaAndName, thenumber, theResultingImagesPath , theNameOfFile)    y �zz g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M 4 p a r a m ( c o n v e r t c o m m a n d ,   t h e O r i g i n a l I m a g e P a t h a A n d N a m e ,   t h e n u m b e r ,   t h e R e s u l t i n g I m a g e s P a t h   ,   t h e N a m e O f F i l e )  w {|{ l ������  �  �  | }~} r  �� I  ��
��	�
 T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param� ��� o  ���� &0 theconvertcommand theConvertCommand� ��� o  ���� $0 directpathtologo directPathToLogo� ��� o  ���� 0 i  � ��� o  ���� 0 thetemppath theTempPath�  �	  � o      �� 0 theimage  ~ ��� Z ����� o  � �  	0 debug  � I �����
�� .sysodlogaskr        TEXT� o  ���� 0 theimage  ��  �  �  � ��� s  ��� o  ���� 0 theimage  � l     ������ n      ���  ;  � l ������ o  ���� 0 themanyimages theManyImages��  ��  ��  ��  � ���� l   ��������  ��  ��  ��  � 0 i  _ m  ������ ` I �������
�� .corecnte****       ****� o  ������ .0 thegeneratedfileslist theGeneratedFilesList��  �  �  �  \ ��� l     ������  � Q Kdisplay dialog "generated image " & convertlisttostring(theManyImages, ",")   � ��� � d i s p l a y   d i a l o g   " g e n e r a t e d   i m a g e   "   &   c o n v e r t l i s t t o s t r i n g ( t h e M a n y I m a g e s ,   " , " )� ��� l     ������  � ( " we have all watermarks stamps now   � ��� D   w e   h a v e   a l l   w a t e r m a r k s   s t a m p s   n o w� ��� l     ��������  ��  ��  � ��� l     ������  � � ~if not debug then display notification "Nous avons tous les tampons !" with title "Num�rotation de pi�ces" sound name "Bottle"   � ��� � i f   n o t   d e b u g   t h e n   d i s p l a y   n o t i f i c a t i o n   " N o u s   a v o n s   t o u s   l e s   t a m p o n s   ! "   w i t h   t i t l e   " N u m � r o t a t i o n   d e   p i � c e s "   s o u n d   n a m e   " B o t t l e "� ��� l     ��������  ��  ��  � ��� l     ������  � 9 3 now we run through the files and put the watermark   � ��� f   n o w   w e   r u n   t h r o u g h   t h e   f i l e s   a n d   p u t   t h e   w a t e r m a r k� ��� l '-������ r  '-��� J  ')����  � o      ���� 20 thewatermarkedfileslist theWatermarkedFilesList��  ��  � ��� l .������� Y  .��������� k  >��� ��� l >>��������  ��  ��  � ��� r  >J��� n  >F��� 4  AF���
�� 
cobj� o  DE���� 0 i  � o  >A���� .0 thegeneratedfileslist theGeneratedFilesList� o      ���� 0 thefiletomark theFileToMark� ��� r  KZ��� l KV������ b  KV��� b  KR��� o  KN���� 0 thetemppath theTempPath� m  NQ�� ���  /� o  RU���� 0 thefiletomark theFileToMark��  ��  � o      ���� *0 thepathtofiletomark thePathToFileToMark� ��� l [[��������  ��  ��  � ��� r  [j��� l [f������ b  [f��� b  [b��� o  [^���� 0 thetemppath theTempPath� m  ^a�� ���  / M a r k e d _� o  be���� 0 thefiletomark theFileToMark��  ��  � o      ���� *0 thepathtofilemarked thePathToFileMarked� ��� l kk��������  ��  ��  � ��� l kk��������  ��  ��  � ��� r  kw��� n  ks��� 4  ns���
�� 
cobj� o  qr���� 0 i  � o  kn���� 0 themanyimages theManyImages� o      ���� 0 thestampfile theStampFile� ��� r  x���� l x������� b  x���� b  x��� o  x{���� 0 thetemppath theTempPath� m  {~�� ���  /� o  ����� 0 thestampfile theStampFile��  ��  � o      ���� (0 thepathtostampfile thePathToStampFile� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� Z ��������� o  ������ 	0 debug  � I �������
�� .sysodlogaskr        TEXT� b  ����� b  ����� b  ��   b  �� b  �� m  �� � : m a r k i n g   w a t e r m a r k i n g   i n   f i l e   o  ������ 0 i   m  �� �		    :   o  ������ *0 thepathtofiletomark thePathToFileToMark� m  ��

 �    w i t h   s t a m p  � o  ������ 0 thestampfile theStampFile��  ��  ��  �  l ����������  ��  ��    l ������   @ :watermarkFilePY(theFileToStamp, theNewFile, theStampFile)     � t w a t e r m a r k F i l e P Y ( t h e F i l e T o S t a m p ,   t h e N e w F i l e ,   t h e S t a m p F i l e )    r  �� I  �������� "0 watermarkfilepy watermarkFilePY  o  ������ *0 thepathtofiletomark thePathToFileToMark  o  ������ *0 thepathtofilemarked thePathToFileMarked �� o  ������ (0 thepathtostampfile thePathToStampFile��  ��   o      ���� 0 themarkedfile    r  ��  o  ������ *0 thepathtofilemarked thePathToFileMarked  o      ���� 0 themarkedfile   !"! s  ��#$# o  ������ 0 themarkedfile  $ l     %����% n      &'&  ;  ��' l ��(����( o  ������ 20 thewatermarkedfileslist theWatermarkedFilesList��  ��  ��  ��  " )*) l ����������  ��  ��  * +��+ l ����������  ��  ��  ��  �� 0 i  � m  12���� � I 29��,��
�� .corecnte****       ****, o  25���� .0 thegeneratedfileslist theGeneratedFilesList��  ��  ��  ��  � -.- l ��/����/ Z ��01����0 o  ������ 	0 debug  1 I ����2��
�� .sysodlogaskr        TEXT2 b  ��343 m  ��55 �66 & a d d e d   w a t e r m a r k   t o  4 I  ����7���� 0 convertlisttostring  7 898 o  ������ 20 thewatermarkedfileslist theWatermarkedFilesList9 :��: m  ��;; �<<  ,��  ��  ��  ��  ��  ��  ��  . =>= l �?����? Z �@A���@ H  ��BB o  ���~�~ 	0 debug  A I ��}CD
�} .sysonotfnull��� ��� TEXTC m  ��EE �FF Z N o u s   a v o n s   t a m p o n n �   l e s   f i c h i e r s   t e m p o r a i r e s .D �|GH
�| 
apprG m  ��II �JJ " T a m p o n n a g e   f i n i   !H �{K�z
�{ 
nsouK m  LL �MM  B o t t l e�z  ��  �  ��  ��  > NON l     �y�x�w�y  �x  �w  O PQP l     �v�u�t�v  �u  �t  Q RSR l     �s�r�q�s  �r  �q  S TUT l     �p�o�n�p  �o  �n  U VWV l 'X�m�lX Z 'YZ�k�jY o  �i�i 	0 debug  Z I #�h[�g
�h .sysodlogaskr        TEXT[ c  \]\ b  ^_^ m  `` �aa N t h o s e   a r e   a l l   t h e   f i l e s   w e   w i l l   m e r g e :  _ o  �f�f 20 thewatermarkedfileslist theWatermarkedFilesList] m  �e
�e 
TEXT�g  �k  �j  �m  �l  W bcb l (3d�d�cd I (3�be�a
�b .ascrcmnt****      � ****e b  (/fgf m  (+hh �ii 6 t h e   f i l e   l i s t   w e   w i l l   m e r g eg o  +.�`�` 20 thewatermarkedfileslist theWatermarkedFilesList�a  �d  �c  c jkj l     �_�^�]�_  �^  �]  k lml l 4Fn�\�[n r  4Fopo I  4B�Zq�Y�Z 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPYq rsr o  58�X�X  0 pathtofinalpdf pathToFinalPDFs tut o  8;�W�W 0 thetemppath theTempPathu v�Vv o  ;>�U�U 20 thewatermarkedfileslist theWatermarkedFilesList�V  �Y  p o      �T�T 60 theresultlogofthepyscript theResultLogOfThePyScript�\  �[  m wxw l Gey�S�Ry Z Gez{�Q�Pz H  GI|| o  GH�O�O 	0 debug  { I La�N}~
�N .sysonotfnull��� ��� TEXT} m  LO ��� � N o u s   a v o n s   f a i t   l e   n o u v e a u   f i c h i e r   d e   p i � c e s ,   t a m p o n n � e s   e t   n u m � r o t � e s .~ �M��
�M 
appr� m  RU�� ���  C ' e s t   f i n i   !� �L��K
�L 
nsou� m  X[�� ���  B o t t l e�K  �Q  �P  �S  �R  x ��� l     �J�I�H�J  �I  �H  � ��� l     �G���G  �   remove temporary folder   � ��� 0   r e m o v e   t e m p o r a r y   f o l d e r� ��� l fq��F�E� I  fq�D��C�D (0 deletefolderatpath deleteFolderAtPath� ��� o  gj�B�B 0 thefolderpath theFolderPath� ��A� o  jm�@�@ .0 defaulttempfoldername defaultTempFolderName�A  �C  �F  �E  � ��� l     �?�>�=�?  �>  �=  � ��� l rw��<�;� I rw�:�9�8
�: .miscactvnull��� ��� null�9  �8  �<  �;  � ��� l x���7�6� r  x���� n  x���� 1  ���5
�5 
bhit� l x���4�3� I x��2��
�2 .sysodlogaskr        TEXT� m  x{�� ��� 6 L e   f i c h i e r   f i n a l   e s t   p r � t   !� �1��
�1 
btns� J  ~��� ��� m  ~��� ���   M o n t r e z   l e   m o i   !� ��0� m  ���� ���  O k�0  � �/��.
�/ 
dflt� m  ���-�- �.  �4  �3  � o      �,�, 0 
showbutton  �7  �6  � ��� l ����+�*� Z �����)�(� >  ����� o  ���'�' 0 
showbutton  � m  ���� ���  O k� O ����� I ���&��%
�& .aevtodocnull  �    alis� c  ����� 4  ���$�
�$ 
psxf� l ����#�"� o  ���!�!  0 pathtofinalpdf pathToFinalPDF�#  �"  � m  ��� 
�  
alis�%  � m  �����                                                                                  MACS  alis    :  	MacOSSlim                      BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p   	 M a c O S S l i m  &System/Library/CoreServices/Finder.app  / ��  �)  �(  �+  �*  � ��� l     ����  �  �  � ��� l     ����  �   end of script    � ���    e n d   o f   s c r i p t  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �   routines and functions   � ��� .   r o u t i n e s   a n d   f u n c t i o n s� ��� l     ����  �  �  � ��� l     ��
�	�  �
  �	  � ��� l     ����  �  �  � ��� l     ����  �   GetPagesOfFilePY   � ��� "   G e t P a g e s O f F i l e P Y� ��� l     ����  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ����  � N H Python script that gets a file path and returns the PDF number of pages   � ��� �   P y t h o n   s c r i p t   t h a t   g e t s   a   f i l e   p a t h   a n d   r e t u r n s   t h e   P D F   n u m b e r   o f   p a g e s� ��� l     ��� �  �  �   � ��� i     ��� I      ������� $0 getpagesoffilepy GetPagesOfFilePY� ���� o      ���� 0 
thepdffile  ��  ��  � k     &�� ��� l     ������  � D > we need a pdf file : ensure you test with CheckThisIsAPDFPath   � ��� |   w e   n e e d   a   p d f   f i l e   :   e n s u r e   y o u   t e s t   w i t h   C h e c k T h i s I s A P D F P a t h� ��� r     ��� b     ��� b        m      � �   ' # ! / u s r / b i n / p y t h o n ; 
 # i m p o r t   s y s 
 # i m p o r t   C o r e G r a p h i c s 
 f r o m   Q u a r t z . I m a g e I O   i m p o r t   * 
 n u m b e r   =   0 
 p d f f i l e   =   " o    ���� 0 
thepdffile  � m     �� " 
 p d f   =   C G P D F D o c u m e n t C r e a t e W i t h U R L ( C F U R L C r e a t e F r o m F i l e S y s t e m R e p r e s e n t a t i o n ( k C F A l l o c a t o r D e f a u l t ,   p d f f i l e ,   l e n ( p d f f i l e ) ,   F a l s e ) ) 
 i f   p d f : 
 	 n u m b e r   =   C G P D F D o c u m e n t G e t N u m b e r O f P a g e s ( p d f ) 
 	 d e l   p d f 
 p r i n t   n u m b e r '� o      ���� 0 	thescript  �  l   ��������  ��  ��   	 r    

 I   ����
�� .sysoexecTEXT���     TEXT b     m    	 �  p y t h o n   - c   o   	 
���� 0 	thescript  ��   o      ���� 0 	thenumber  	  Z   !���� o    ���� 	0 debug   I   ����
�� .sysodlogaskr        TEXT b     m     � & G e t P a g e s O f F i l e P Y   :   o    ���� 0 	thenumber  ��  ��  ��    L   " $ o   " #���� 0 	thenumber   �� l  % %��������  ��  ��  ��  �  l     ��������  ��  ��    !  l     ��������  ��  ��  ! "#" l     ��$%��  $   WriteXFilesPDFfromOnePY   % �&& 0   W r i t e X F i l e s P D F f r o m O n e P Y# '(' l     ��)*��  ) / ) ########################################   * �++ R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #( ,-, l     ��./��  . � � python script that gets a file path, a number (X-1) of pages indexes (starting at 2nd document's first page, as we know the first doc first, it is 1, duh)   / �006   p y t h o n   s c r i p t   t h a t   g e t s   a   f i l e   p a t h ,   a   n u m b e r   ( X - 1 )   o f   p a g e s   i n d e x e s   ( s t a r t i n g   a t   2 n d   d o c u m e n t ' s   f i r s t   p a g e ,   a s   w e   k n o w   t h e   f i r s t   d o c   f i r s t ,   i t   i s   1 ,   d u h )- 121 l     ��34��  3 !  and write X many PDF files   4 �55 6   a n d   w r i t e   X   m a n y   P D F   f i l e s2 676 l     ��89��  8 W Q -- NOTE : we need to replace method CGPDFDocumentGetMediaBox which is deprecated   9 �:: �   - -   N O T E   :   w e   n e e d   t o   r e p l a c e   m e t h o d   C G P D F D o c u m e n t G e t M e d i a B o x   w h i c h   i s   d e p r e c a t e d7 ;<; l     ��������  ��  ��  < =>= i    ?@? I      ��A���� 20 writexfilespdffromonepy WriteXFilesPDFfromOnePYA BCB o      ���� 0 
thepdffile  C DED o      ���� "0 wheretosavepath whereToSavePathE F��F o      ���� 0 indexeslist indexesList��  ��  @ l    fGHIG k     fJJ KLK l     ��������  ��  ��  L MNM r     OPO b     QRQ b     	STS m     UU �VV  (T I    ��W���� 0 convertlisttostring  W XYX o    ���� 0 indexeslist indexesListY Z��Z m    [[ �\\  ,��  ��  R m   	 
]] �^^    )P o      ���� $0 theindexesstring theIndexesStringN _`_ Z   ab����a o    ���� 	0 debug  b I   ��c��
�� .sysodlogaskr        TEXTc b    ded m    ff �gg N W r i t e X F i l e s P D F f r o m O n e P Y   :   a l l   i n d e x e s   =e o    ���� $0 theindexesstring theIndexesString��  ��  ��  ` hih Z   -jk����j o    ���� 0 verbose  k I  " )��l��
�� .ascrcmnt****      � ****l b   " %mnm m   " #oo �pp P W e   h a v e   a l l   t h o s e   i n d e x e s   f o r   a l l   f i l e s :n o   # $���� $0 theindexesstring theIndexesString��  ��  ��  i qrq r   . =sts b   . ;uvu b   . 9wxw b   . 7yzy b   . 5{|{ b   . 3}~} b   . 1� m   . /�� ��� � ' 
 # ! / u s r / b i n / p y t h o n 
 # #   t h i s   u s e s   t h e   s p l i t P D F . 0 . 4 . p y   s c r i p t   
 i m p o r t   s y s 
 i m p o r t   o s 
 f r o m   C o r e G r a p h i c s   i m p o r t   * 
 
 i n p u t F N   =   "� o   / 0���� 0 
thepdffile  ~ m   1 2�� ���   " 
 o u t p u t P a t h   =   "| o   3 4���� "0 wheretosavepath whereToSavePathz m   5 6�� ��� " 
 b a s e F N   =   o s . p a t h . s p l i t e x t ( o s . p a t h . b a s e n a m e ( i n p u t F N ) ) [ 0 ] 
 p a g e R e c t   =   C G R e c t M a k e   ( 0 ,   0 ,   6 1 2 ,   7 9 2 ) 
 t h e C r e a t e d F i l e s   =   " " 
 s p l i t p a g e s   =  x o   7 8���� $0 theindexesstring theIndexesStringv m   9 :�� ���	p 
 i n p u t D o c   =   C G P D F D o c u m e n t C r e a t e W i t h P r o v i d e r (   C G D a t a P r o v i d e r C r e a t e W i t h F i l e n a m e ( i n p u t F N ) ) 
 d e f   w r i t e P a g e F r o m D o c ( w r i t e C o n t e x t ,   d o c ,   p a g e N u m ) : 
 
 	 p a g e   =   C G P D F D o c u m e n t G e t P a g e ( d o c ,   p a g e N u m ) 
 	 i f   p a g e : 
 	 	 m e d i a B o x   =   C G P D F P a g e G e t B o x R e c t ( p a g e ,   k C G P D F M e d i a B o x ) 
 	 	 i f   C G R e c t I s E m p t y ( m e d i a B o x ) : 
 	 	 	 m e d i a B o x   =   N o n e 
                           
 	 	 C G C o n t e x t B e g i n P a g e ( w r i t e C o n t e x t ,   m e d i a B o x ) 
 	 	 C G C o n t e x t D r a w P D F P a g e ( w r i t e C o n t e x t ,   p a g e ) 
 	 	 C G C o n t e x t E n d P a g e ( w r i t e C o n t e x t ) 
 
 
 d e f   w r i t e F i l e f r o m P a g e s ( w r i t e C o n t e x t ,   d o c ,   m a x P a g e s ) : 
 	 f o r   p a g e N u m   i n   x r a n g e ( 1 ,   m a x P a g e s   +   1 )   : 
 	 	 w r i t e P a g e F r o m D o c ( w r i t e C o n t e x t ,   d o c ,   p a g e N u m ) 
 
 s t a r t P a g e N u m   =   1 
 f o r   i ,   s p l i t P a g e N u m   i n   e n u m e r a t e ( s p l i t p a g e s ) : 
 	 o u t p u t F N   =   " % s . p a r t % d . % d _ % d . p d f "   %   ( b a s e F N ,   i   +   1 ,   s t a r t P a g e N u m ,   s p l i t P a g e N u m ) 
 	 w r i t e C o n t e x t   =   C G P D F C o n t e x t C r e a t e W i t h F i l e n a m e ( o u t p u t P a t h   + " / "   +   o u t p u t F N ,   p a g e R e c t ) 
 	 # p r i n t   " W r i t i n g   p a g e   % d - % d   t o   % s . . . "   %   ( s t a r t P a g e N u m ,   s p l i t P a g e N u m ,   o u t p u t F N ) 
 	 f o r   p a g e N u m   i n   x r a n g e ( s t a r t P a g e N u m ,   s p l i t P a g e N u m   +   1 ) : 
 	 	 m e d i a B o x   =   i n p u t D o c . g e t M e d i a B o x (   p a g e N u m   ) 
 	 	 w r i t e C o n t e x t . b e g i n P a g e ( m e d i a B o x ) 
 	 	 w r i t e C o n t e x t . d r a w P D F D o c u m e n t ( m e d i a B o x ,   i n p u t D o c ,   p a g e N u m ) 
 	 	 w r i t e C o n t e x t . e n d P a g e ( ) 
 	 t h e C r e a t e d F i l e s   + = "   " + o u t p u t F N 
 	 s t a r t P a g e N u m   =   s p l i t P a g e N u m   +   1 
 d e l   w r i t e C o n t e x t 
 p r i n t   t h e C r e a t e d F i l e s 't o      ���� 0 	thescript  r ��� l  > >��������  ��  ��  � ��� r   > G��� I  > E�����
�� .sysoexecTEXT���     TEXT� b   > A��� m   > ?�� ���  p y t h o n   - c  � o   ? @���� 0 	thescript  ��  � o      ���� 0 thecreatedfiles  � ��� Z  H Y������� o   H I���� 	0 debug  � I  L U�����
�� .sysodlogaskr        TEXT� b   L Q��� m   L O�� ��� 2 W r i t e X F i l e s P D F f r o m O n e P Y :  � o   O P���� 0 thecreatedfiles  ��  ��  ��  � ��� I  Z c�����
�� .ascrcmnt****      � ****� b   Z _��� m   Z ]�� ��� 2 W r i t e X F i l e s P D F f r o m O n e P Y :  � o   ] ^���� 0 thecreatedfiles  ��  � ���� L   d f�� o   d e���� 0 thecreatedfiles  ��  H * $ returns INT number of files created   I ��� H   r e t u r n s   I N T   n u m b e r   o f   f i l e s   c r e a t e d> ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  	 FindText   � ���    F i n d T e x t� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � 0 * find the string toFind in the text inText   � ��� T   f i n d   t h e   s t r i n g   t o F i n d   i n   t h e   t e x t   i n T e x t� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 findtext FindText� ��� o      ���� 0 tofind toFind� ���� o      ���� 0 intext inText��  ��  � L     �� l    ������ E    ��� o     ���� 0 intext inText� o    ���� 0 tofind toFind��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �    writeOnePDFFileFromManyPY   � ��� 4   w r i t e O n e P D F F i l e F r o m M a n y P Y� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � Q K pass a file path, a number of files as list and write one file in the path   � ��� �   p a s s   a   f i l e   p a t h ,   a   n u m b e r   o f   f i l e s   a s   l i s t   a n d   w r i t e   o n e   f i l e   i n   t h e   p a t h� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPY� ��� o      ���� 0 thefinalfile theFinalFile� ��� o      ���� 20 wheretofindthefilespath whereToFindTheFilesPath� ���� o      �� 60 thefileslistwiththeirpath theFilesListWithTheirPath��  ��  � l    P���� k     P�� ��� l      �~���~  � � �
	set theNewList to {}
	repeat with thefile in theNamesOfFilesList
		copy (whereToFindPath & "/" & thefile) to end of theNewList
	end repeat
	   � ��� 
 	 s e t   t h e N e w L i s t   t o   { } 
 	 r e p e a t   w i t h   t h e f i l e   i n   t h e N a m e s O f F i l e s L i s t 
 	 	 c o p y   ( w h e r e T o F i n d P a t h   &   " / "   &   t h e f i l e )   t o   e n d   o f   t h e N e w L i s t 
 	 e n d   r e p e a t 
 	� ��� r     ��� b     ��� b     	��� m     �� ���  ( "� I    �}��|�} 0 convertlisttostring  � ��� o    �{�{ 60 thefileslistwiththeirpath theFilesListWithTheirPath� ��z� m       �  " ,   "�z  �|  � m   	 
 �  " )� o      �y�y H0 "thecorrectedfileslistwiththeirpath "theCorrectedFilesListWithTheirPath�  Z   �x�w o    �v�v 	0 debug   I   �u�t
�u .sysodlogaskr        TEXT b    	
	 m     � N w r i t e O n e P D F F i l e F r o m M a n y P Y :   t h e   f i l e s   =  
 o    �s�s H0 "thecorrectedfileslistwiththeirpath "theCorrectedFilesListWithTheirPath�t  �x  �w    l   �r�q�p�r  �q  �p    l   �o�n�m�o  �n  �m    l    �l�l   * $ formatted as path and quote, comma     � H   f o r m a t t e d   a s   p a t h   a n d   q u o t e ,   c o m m a    l   �k�j�i�k  �j  �i    l   �h�g�f�h  �g  �f    r    + b    ) b    ' !  b    %"#" b    #$%$ b    !&'& m    (( �)) � ' # !   / u s r / b i n / p y t h o n 
 
 f r o m   Q u a r t z . C o r e G r a p h i c s   i m p o r t   * 
 
 t h e F i l e   =   "' o     �e�e 0 thefinalfile theFinalFile% m   ! "** �++  " 
 t h e F o l d e r   =   "# m   # $,, �-- $ "   
 t h e F i l e s L i s t   =  ! o   % &�d�d H0 "thecorrectedfileslistwiththeirpath "theCorrectedFilesListWithTheirPath m   ' (.. �//� 
 
 #   f o r   a   P A T H ,   w i l l   c r e a t e   a   f i l e   t o   m e r g e   i n s i d e 
 d e f   c r e a t e P D F D o c u m e n t W i t h P a t h ( a F i l e ) : 
 
 	 p r i n t   " C r e a t i n g   P D F   d o c u m e n t   f r o m   f i l e   % s "   %   ( a F i l e ) 
 	 r e t u r n   C G P D F D o c u m e n t C r e a t e W i t h U R L ( C F U R L C r e a t e F r o m F i l e S y s t e m R e p r e s e n t a t i o n ( k C F A l l o c a t o r D e f a u l t ,   a F i l e ,   l e n ( a F i l e ) ,   F a l s e ) ) 
 
 
 
 
 
 
 d e f   w r i t e P a g e F r o m D o c ( w r i t e C o n t e x t ,   d o c ,   p a g e N u m ) : 
   
 	 g l o b a l   v e r b o s e 
 	 p a g e   =   C G P D F D o c u m e n t G e t P a g e ( d o c ,   p a g e N u m ) 
 	 i f   p a g e : 
 	 	 m e d i a B o x   =   C G P D F P a g e G e t B o x R e c t ( p a g e ,   k C G P D F M e d i a B o x ) 
 	 	 i f   C G R e c t I s E m p t y ( m e d i a B o x ) : 
 	 	 	 m e d i a B o x   =   N o n e 
 	 	 	   
 	 	 C G C o n t e x t B e g i n P a g e ( w r i t e C o n t e x t ,   m e d i a B o x ) 
 	 	 C G C o n t e x t D r a w P D F P a g e ( w r i t e C o n t e x t ,   p a g e ) 
 	 	 C G C o n t e x t E n d P a g e ( w r i t e C o n t e x t ) 
 	 	 p r i n t   " C o p i e d   p a g e   % d   f r o m   % s "   %   ( p a g e N u m ,   d o c ) 
 
 
 
 
 d e f   a p p e n d ( w r i t e C o n t e x t ,   d o c s ,   m a x P a g e s ) : 
   
 	 f o r   d o c   i n   d o c s : 
 	 	 f o r   p a g e N u m   i n   x r a n g e ( 1 ,   m a x P a g e s   +   1 )   : 
 	 	 	 w r i t e P a g e F r o m D o c ( w r i t e C o n t e x t ,   d o c ,   p a g e N u m ) 
 	 	 	 p r i n t   " W r i t t e n   p a g e " ,   p a g e N u m 
 
 
 
 w r i t e C o n t e x t   =   C G P D F C o n t e x t C r e a t e W i t h U R L ( C F U R L C r e a t e F r o m F i l e S y s t e m R e p r e s e n t a t i o n ( k C F A l l o c a t o r D e f a u l t ,   t h e F i l e ,   l e n ( t h e F i l e ) ,   F a l s e ) ,   N o n e ,   N o n e ) 
 
 i f   w r i t e C o n t e x t : 
 	 #   c r e a t e   P D F D o c u m e n t s   f o r   a l l   o f   t h e   f i l e s . 
 	 d o c s   =   m a p ( c r e a t e P D F D o c u m e n t W i t h P a t h ,   t h e F i l e s L i s t ) 
 	 p r i n t   d o c s 
 	 #   f i n d   t h e   m a x i m u m   n u m b e r   o f   p a g e s . 
 	 m a x P a g e s   =   0 
 	 f o r   d o c   i n   d o c s : 
 	 	 i f   C G P D F D o c u m e n t G e t N u m b e r O f P a g e s ( d o c )   >   m a x P a g e s : 
 	 	 	 p r i n t   " m a x P a g e s "   ,   m a x P a g e s 
 	 	 	 m a x P a g e s   =   C G P D F D o c u m e n t G e t N u m b e r O f P a g e s ( d o c ) 
 	 	 	 
 	 a p p e n d ( w r i t e C o n t e x t ,   d o c s ,   m a x P a g e s ) 
 	 p r i n t   " a l l   t h i s   i n   "   ,   t h e F i l e 
 	 C G P D F C o n t e x t C l o s e ( w r i t e C o n t e x t ) 
 	 d e l   w r i t e C o n t e x t 
 	 # C G C o n t e x t R e l e a s e ( w r i t e C o n t e x t ) ' o      �c�c 0 	thescript   010 l  , ,�b�a�`�b  �a  �`  1 232 r   , 5454 I  , 3�_6�^
�_ .sysoexecTEXT���     TEXT6 b   , /787 m   , -99 �::  p y t h o n   - c  8 o   - .�]�] 0 	thescript  �^  5 o      �\�\ 
0 thedoc  3 ;<; Z  6 E=>�[�Z= o   6 7�Y�Y 	0 debug  > I  : A�X?�W
�X .sysodlogaskr        TEXT? b   : =@A@ m   : ;BB �CC t w r i t e O n e P D F F i l e F r o m M a n y P Y :   r e t u r n e d   O n e   P D F   f i l e   :   t h e d o c  A o   ; <�V�V 
0 thedoc  �W  �[  �Z  < DED I  F M�UF�T
�U .ascrcmnt****      � ****F b   F IGHG m   F GII �JJ d w r i t e O n e P D F F i l e F r o m M a n y P Y :   r e t u r n e d   O n e   P D F   f i l e   :H o   G H�S�S 
0 thedoc  �T  E K�RK L   N PLL o   N O�Q�Q 
0 thedoc  �R  �   return the file   � �MM     r e t u r n   t h e   f i l e� NON l     �P�O�N�P  �O  �N  O PQP l     �M�L�K�M  �L  �K  Q RSR l     �JTU�J  T   CheckIMInstalled   U �VV "   C h e c k I M I n s t a l l e dS WXW l     �IYZ�I  Y / ) ########################################   Z �[[ R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #X \]\ l     �H^_�H  ^ d ^ verify that we have a "convert" command available, and sets the value fo the command location   _ �`` �   v e r i f y   t h a t   w e   h a v e   a   " c o n v e r t "   c o m m a n d   a v a i l a b l e ,   a n d   s e t s   t h e   v a l u e   f o   t h e   c o m m a n d   l o c a t i o n] aba l     �G�F�E�G  �F  �E  b cdc i    efe I      �D�C�B�D $0 checkiminstalled CheckIMInstalled�C  �B  f l    ghig Q     jklj k    mm non r    
pqp I   �Ar�@
�A .sysoexecTEXT���     TEXTr m    ss �tt 4 b a s h   - l   - c   ' w h i c h   c o n v e r t '�@  q o      �?�? &0 theconvertcommand theConvertCommando u�>u L    vv m    �=
�= boovtrue�>  k R      �<�;�:
�< .ascrerr ****      � ****�;  �:  l L    ww m    �9
�9 boovfalsh + % returns location of convert or empty   i �xx J   r e t u r n s   l o c a t i o n   o f   c o n v e r t   o r   e m p t yd yzy l     �8�7�6�8  �7  �6  z {|{ l     �5}~�5  }   insertToCInPDF   ~ �    i n s e r t T o C I n P D F| ��� i    ��� I      �4�3�2�4  0 inserttocinpdf insertToCInPDF�3  �2  � l     �1���1  � T N we need to pull the bordereau info as elements and page number to add the ToC   � ��� �   w e   n e e d   t o   p u l l   t h e   b o r d e r e a u   i n f o   a s   e l e m e n t s   a n d   p a g e   n u m b e r   t o   a d d   t h e   T o C� ��� l     �0�/�.�0  �/  �.  � ��� l     �-���-  � ) # generateStampImageForPieceNumberIM   � ��� F   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M� ��� l     �,���,  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     �+���+  � � � use imagemagick, passes the command syntax (convert in its installed place), an original stamp image (located with path), a number a file path and returns the name of the image created at the path   � ����   u s e   i m a g e m a g i c k ,   p a s s e s   t h e   c o m m a n d   s y n t a x   ( c o n v e r t   i n   i t s   i n s t a l l e d   p l a c e ) ,   a n   o r i g i n a l   s t a m p   i m a g e   ( l o c a t e d   w i t h   p a t h ) ,   a   n u m b e r   a   f i l e   p a t h   a n d   r e t u r n s   t h e   n a m e   o f   t h e   i m a g e   c r e a t e d   a t   t h e   p a t h� ��� l     �*���*  � [ U beware ! passing the path doesn't work wih quoted form, but the space will break it.   � ��� �   b e w a r e   !   p a s s i n g   t h e   p a t h   d o e s n ' t   w o r k   w i h   q u o t e d   f o r m ,   b u t   t h e   s p a c e   w i l l   b r e a k   i t .� ��� l     �)���)  � j d !! this is not used, we now pass 4 parameters and will use generateStampImageForPieceNumberIM4param   � ��� �   ! !   t h i s   i s   n o t   u s e d ,   w e   n o w   p a s s   4   p a r a m e t e r s   a n d   w i l l   u s e   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M 4 p a r a m� ��� i    ��� I      �(��'�( H0 "generatestampimageforpiecenumberim "generateStampImageForPieceNumberIM� ��� o      �&�& 0 convertcommand  � ��� o      �%�% <0 theoriginalimagepathaandname theOriginalImagePathaAndName� ��� o      �$�$ 0 	thenumber  � ��� o      �#�# 00 theresultingimagespath theResultingImagesPath� ��"� o      �!�! 0 thenameoffile theNameOfFile�"  �'  � l    C���� k     C�� ��� l     � ���   �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � ( "display dialog PathToOriginalImage   � ��� D d i s p l a y   d i a l o g   P a t h T o O r i g i n a l I m a g e� ��� r     ��� n     ��� 1    �
� 
strq� l    ���� o     �� <0 theoriginalimagepathaandname theOriginalImagePathaAndName�  �  � o      �� *0 pathtooriginalimage pathToOriginalImage� ��� r    ��� n    	��� 1    	�
� 
strq� l   ���� o    �� 00 theresultingimagespath theResultingImagesPath�  �  � o      ��  0 pathtonewimage PathToNewImage� ��� l   ���
�  �  �
  � ��� r    ��� b    ��� m    �� ���  P i � c e \ n n �� o    �	�	 0 	thenumber  � o      �� "0 piecenumbertext pieceNumberText� ��� r    ��� b    ��� b    ��� o    �� 0 thenameoffile theNameOfFile� o    �� 0 	thenumber  � m    �� ���  . p n g� o      �� 0 newimagename  � ��� l   ����  � ; 5display dialog "Now trying for image " & newimagename   � ��� j d i s p l a y   d i a l o g   " N o w   t r y i n g   f o r   i m a g e   "   &   n e w i m a g e n a m e� ��� r    +��� b    )��� b    '��� b    %��� b    #��� b    !��� b    ��� b    ��� o    �� 0 convertcommand  � m    �� ���   � o    �� <0 theoriginalimagepathaandname theOriginalImagePathaAndName� m     �� ��� t   - g r a v i t y   c e n t e r   - p o i n t s i z e   7 0   - f i l l   ' b l a c k '   - a n n o t a t e   0   '� o   ! "�� "0 piecenumbertext pieceNumberText� m   # $�� ���  '  � o   % &� �   0 pathtonewimage PathToNewImage� o   ' (���� 0 newimagename  � o      ����  0 theimagescript theImageScript� ��� l  , ,��������  ��  ��  �    l  , ,����   # display dialog theImageScript    � : d i s p l a y   d i a l o g   t h e I m a g e S c r i p t  Q   , A	 k   / 7

  I  / 4����
�� .sysoexecTEXT���     TEXT o   / 0����  0 theimagescript theImageScript��   �� L   5 7 o   5 6���� 0 newimagename  ��   R      ������
�� .ascrerr ****      � ****��  ��  	 L   ? A m   ? @ � 
 e r r o r �� l  B B��������  ��  ��  ��  �   return new image name   � � ,   r e t u r n   n e w   i m a g e   n a m e�  l     ��������  ��  ��    l     ����   / ) generateStampImageForPieceNumberIM4param    � R   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M 4 p a r a m  l     ����   / ) ########################################    �   R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # !"! l     ��#$��  # � � use imagemagick, passes the command syntax (convert in its installed place), an original stamp image (located with path), a number a file path and returns the name of the image created at the path   $ �%%�   u s e   i m a g e m a g i c k ,   p a s s e s   t h e   c o m m a n d   s y n t a x   ( c o n v e r t   i n   i t s   i n s t a l l e d   p l a c e ) ,   a n   o r i g i n a l   s t a m p   i m a g e   ( l o c a t e d   w i t h   p a t h ) ,   a   n u m b e r   a   f i l e   p a t h   a n d   r e t u r n s   t h e   n a m e   o f   t h e   i m a g e   c r e a t e d   a t   t h e   p a t h" &'& l     ��()��  ( [ U beware ! passing the path doesn't work wih quoted form, but the space will break it.   ) �** �   b e w a r e   !   p a s s i n g   t h e   p a t h   d o e s n ' t   w o r k   w i h   q u o t e d   f o r m ,   b u t   t h e   s p a c e   w i l l   b r e a k   i t .' +,+ l     ��������  ��  ��  , -.- i    /0/ I      ��1���� T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param1 232 o      ���� 0 convertcommand  3 454 o      ���� <0 theoriginalimagepathaandname theOriginalImagePathaAndName5 676 o      ���� 0 	thenumber  7 8��8 o      ���� 00 theresultingimagespath theResultingImagesPath��  ��  0 l    q9:;9 k     q<< =>= l     ��������  ��  ��  > ?@? l     ��������  ��  ��  @ ABA l     ��������  ��  ��  B CDC l     ��������  ��  ��  D EFE l     ��GH��  G ( "display dialog PathToOriginalImage   H �II D d i s p l a y   d i a l o g   P a t h T o O r i g i n a l I m a g eF JKJ r     LML b     NON m     PP �QQ  P i � c e \ n n �O o    ���� 0 	thenumber  M o      ���� "0 piecenumbertext pieceNumberTextK RSR r    TUT n    	VWV 1    	��
�� 
strqW l   X����X o    ���� <0 theoriginalimagepathaandname theOriginalImagePathaAndName��  ��  U o      ���� *0 pathtooriginalimage pathToOriginalImageS YZY l   ��������  ��  ��  Z [\[ r    ]^] b    _`_ b    aba m    cc �dd  p i e c e _ n _b o    ���� 0 	thenumber  ` m    ee �ff  . p n g^ o      ���� 0 	imagename 	imageName\ ghg l   ��������  ��  ��  h iji l   klmk r    non l   p����p b    qrq b    sts o    ���� 00 theresultingimagespath theResultingImagesPatht m    uu �vv  /r o    ���� 0 	imagename 	imageName��  ��  o o      ����  0 pathtonewimage PathToNewImagel   path is not proper if no /   m �ww 4 p a t h   i s   n o t   p r o p e r   i f   n o   /j xyx r    !z{z n    |}| 1    ��
�� 
strq} o    ����  0 pathtonewimage PathToNewImage{ o      ����  0 pathtonewimage PathToNewImagey ~~ Z  " 1������� o   " #���� 	0 debug  � I  & -�����
�� .sysodlogaskr        TEXT� b   & )��� m   & '�� ��� 6 t h e   p a t h   t o   n e w   i m a g e   i s   :  � o   ' (����  0 pathtonewimage PathToNewImage��  ��  ��   ��� l  2 2��������  ��  ��  � ��� r   2 E��� b   2 C��� b   2 A��� b   2 ?��� b   2 =��� b   2 ;��� b   2 9��� b   2 7��� b   2 5��� o   2 3���� 0 convertcommand  � m   3 4�� ���   � o   5 6���� *0 pathtooriginalimage pathToOriginalImage� m   7 8�� ���      - f o n t   '� o   9 :���� 0 defaultfont defaultFont� m   ; <�� ��� x '   - g r a v i t y   c e n t e r   - p o i n t s i z e   7 0   - f i l l   ' b l a c k '   - a n n o t a t e   0     '� o   = >���� "0 piecenumbertext pieceNumberText� m   ? @�� ���  '    � o   A B����  0 pathtonewimage PathToNewImage� o      ����  0 theimagescript theImageScript� ��� l  F F��������  ��  ��  � ��� Z  F W������� o   F G���� 	0 debug  � I  J S�����
�� .sysodlogaskr        TEXT� b   J O��� b   J M��� m   J K�� ���  t h e   s c r i p t   i s   [� o   K L����  0 theimagescript theImageScript� m   M N�� ���  ]��  ��  ��  � ��� Q   X o���� k   [ c�� ��� I  [ `�����
�� .sysoexecTEXT���     TEXT� o   [ \����  0 theimagescript theImageScript��  � ���� L   a c�� o   a b���� 0 	imagename 	imageName��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   k o�� m   k n�� ��� 
 e r r o r� ��� l  p p��������  ��  ��  � ���� l  p p��������  ��  ��  ��  :   return new image name   ; ��� ,   r e t u r n   n e w   i m a g e   n a m e. ��� l     ��������  ��  ��  � ��� l     ������  �   CheckThisIsAPDFPath   � ��� (   C h e c k T h i s I s A P D F P a t h� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � ' ! verify the path ends with ".pdf"   � ��� B   v e r i f y   t h e   p a t h   e n d s   w i t h   " . p d f "� ��� l     ��������  ��  ��  � ��� i     #��� I      ������� *0 checkthisisapdfpath CheckThisIsAPDFPath� ���� o      ���� 0 thefile  ��  ��  � L     �� l    ������ =     ��� l    	������ I    	����
�� .sysooffslong    ��� null�  � �~��
�~ 
psof� m    �� ���  . p d f� �}��|
�} 
psin� o    �{�{ 0 thefile  �|  ��  ��  � l  	 ��z�y� \   	 ��� l  	 ��x�w� n   	 ��� 1   
 �v
�v 
leng� o   	 
�u�u 0 thefile  �x  �w  � m    �t�t �z  �y  ��  ��  � ��� l     �s�r�q�s  �r  �q  � ��� l     �p���p  �   CheckThisIsATxtPath   � ��� (   C h e c k T h i s I s A T x t P a t h� ��� l     �o���o  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     �n���n  � ' ! verify the path ends with ".txt"   � �	 	  B   v e r i f y   t h e   p a t h   e n d s   w i t h   " . t x t "� 			 l     �m�l�k�m  �l  �k  	 			 i   $ '			 I      �j	�i�j *0 checkthisisatxtpath CheckThisIsATxtPath	 	�h	 o      �g�g 0 thefile  �h  �i  	 L     				 l    	
�f�e	
 =     			 l    		�d�c	 I    	�b�a	
�b .sysooffslong    ��� null�a  	 �`		
�` 
psof	 m    		 �		  . t x t	 �_	�^
�_ 
psin	 o    �]�] 0 thefile  �^  �d  �c  	 l  	 	�\�[	 \   	 			 l  	 	�Z�Y	 n   	 			 1   
 �X
�X 
leng	 o   	 
�W�W 0 thefile  �Z  �Y  	 m    �V�V �\  �[  �f  �e  	 			 l     �U�T�S�U  �T  �S  	 			 l     �R		�R  	   CheckFileExistsAtPath   	 �	 	  ,   C h e c k F i l e E x i s t s A t P a t h	 	!	"	! l     �Q	#	$�Q  	# / ) ########################################   	$ �	%	% R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	" 	&	'	& l     �P	(	)�P  	( 8 2 verify the file we need is present at given path    	) �	*	* d   v e r i f y   t h e   f i l e   w e   n e e d   i s   p r e s e n t   a t   g i v e n   p a t h  	' 	+	,	+ l     �O�N�M�O  �N  �M  	, 	-	.	- i   ( +	/	0	/ I      �L	1�K�L .0 checkfileexistsatpath CheckFileExistsAtPath	1 	2�J	2 o      �I�I 0 thefile  �J  �K  	0 l    	3	4	5	3 Q     	6	7	8	6 k    	9	9 	:	;	: c    		<	=	< 4    �H	>
�H 
psxf	> o    �G�G 0 thefile  	= m    �F
�F 
alis	; 	?�E	? L   
 	@	@ m   
 �D
�D boovtrue�E  	7 R      �C�B�A
�C .ascrerr ****      � ****�B  �A  	8 L    	A	A m    �@
�@ boovfals	4 / ) expect a POSIX file path -- returns BOOL   	5 �	B	B R   e x p e c t   a   P O S I X   f i l e   p a t h   - -   r e t u r n s   B O O L	. 	C	D	C l     �?�>�=�?  �>  �=  	D 	E	F	E l     �<	G	H�<  	G   ReturnFileContentsAsList   	H �	I	I 2   R e t u r n F i l e C o n t e n t s A s L i s t	F 	J	K	J l     �;	L	M�;  	L / ) ########################################   	M �	N	N R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	K 	O	P	O l     �:	Q	R�:  	Q F @ An AppleScript function that reads a file and returns the lines   	R �	S	S �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   r e a d s   a   f i l e   a n d   r e t u r n s   t h e   l i n e s	P 	T	U	T l     �9	V	W�9  	V    from that file as a list.   	W �	X	X 4   f r o m   t h a t   f i l e   a s   a   l i s t .	U 	Y	Z	Y l     �8�7�6�8  �7  �6  	Z 	[	\	[ i   , /	]	^	] I      �5	_�4�5 40 returnfilecontentsaslist ReturnFileContentsAsList	_ 	`�3	` o      �2�2 0 thefile  �3  �4  	^ k     	a	a 	b	c	b r     	d	e	d I    �1	f�0
�1 .rdwropenshor       file	f o     �/�/ 0 thefile  �0  	e o      �.�. 0 
filehandle 
fileHandle	c 	g	h	g l   	i	j	k	i r    	l	m	l n    	n	o	n 2   �-
�- 
cpar	o l   	p�,�+	p I   �*	q	r
�* .rdwrread****        ****	q o    	�)�) 0 
filehandle 
fileHandle	r �(	s�'
�( 
as  	s m   
 �&
�& 
utf8�'  �,  �+  	m o      �%�% 0 thelines theLines	j   important to read UTF8   	k �	t	t .   i m p o r t a n t   t o   r e a d   U T F 8	h 	u	v	u I   �$	w�#
�$ .rdwrclosnull���     ****	w o    �"�" 0 
filehandle 
fileHandle�#  	v 	x�!	x L    	y	y o    � �  0 thelines theLines�!  	\ 	z	{	z l     ����  �  �  	{ 	|	}	| l     �	~	�  	~    CountNameAndPagesOfPieces   	 �	�	� 4   C o u n t N a m e A n d P a g e s O f P i e c e s	} 	�	�	� l     �	�	��  	� / ) ########################################   	� �	�	� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	� 	�	�	� l     �	�	��  	� p j An AppleScript function that finds lines with "piece X : WWWWWw [Y]" and picks number X and picks pages Y   	� �	�	� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   f i n d s   l i n e s   w i t h   " p i e c e   X   :   W W W W W w   [ Y ] "   a n d   p i c k s   n u m b e r   X   a n d   p i c k s   p a g e s   Y	� 	�	�	� l     ����  �  �  	� 	�	�	� l     �	�	��  	�    CountNameAndPagesOfPieces   	� �	�	� 4   C o u n t N a m e A n d P a g e s O f P i e c e s	� 	�	�	� l     �	�	��  	� / ) ########################################   	� �	�	� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	� 	�	�	� l     �	�	��  	� p j An AppleScript function that finds lines with "piece X : WWWWWw [Y]" and picks number X and picks pages Y   	� �	�	� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   f i n d s   l i n e s   w i t h   " p i e c e   X   :   W W W W W w   [ Y ] "   a n d   p i c k s   n u m b e r   X   a n d   p i c k s   p a g e s   Y	� 	�	�	� l     ����  �  �  	� 	�	�	� i   0 3	�	�	� I      �	��� 60 countnameandpagesofpieces CountNameAndPagesOfPieces	� 	��	� o      �� 0 thelist theList�  �  	� l   �	�	�	�	� k    �	�	� 	�	�	� r     	�	�	� J     ��  	� o      �� 0 thepieceslist thePiecesList	� 	�	�	� r    	�	�	� m    �
�
  	� o      �	�	 0 thepageindex thePageIndex	� 	�	�	� r   	 	�	�	� m   	 
��  	� o      �� 0 i  	� 	�	�	� X   �	��	�	� k   �	�	� 	�	�	� l   ����  �  �  	� 	��	� Z   �	�	��� 	� I    $��	����� 0 findtext FindText	� 	�	�	� o    ���� 0 	pieceword 	pieceWord	� 	���	� o     ���� 0 theline theLine��  ��  	� k   '�	�	� 	�	�	� r   ' ,	�	�	� [   ' *	�	�	� o   ' (���� 0 i  	� m   ( )���� 	� o      ���� 0 i  	� 	�	�	� r   - 2	�	�	� [   - 0	�	�	� o   - .���� 0 thepageindex thePageIndex	� m   . /���� 	� o      ���� 0 thepageindex thePageIndex	� 	�	�	� Z  3 B	�	�����	� o   3 4���� 	0 debug  	� I  7 >��	���
�� .sysodlogaskr        TEXT	� b   7 :	�	�	� m   7 8	�	� �	�	�  S t a r t s   a t  	� o   8 9���� 0 thepageindex thePageIndex��  ��  ��  	� 	�	�	� I  C J��	���
�� .ascrcmnt****      � ****	� b   C F	�	�	� m   C D	�	� �	�	�  S t a r t s   a t  	� o   D E���� 0 thepageindex thePageIndex��  	� 	�	�	� r   K Z	�	�	� [   K X	�	�	� l  K T	�����	� I  K T����	�
�� .sysooffslong    ��� null��  	� ��	�	�
�� 
psof	� o   M N���� 0 	pieceword 	pieceWord	� ��	���
�� 
psin	� o   O P���� 0 theline theLine��  ��  ��  	� l  T W	�����	� n   T W	�	�	� 1   U W��
�� 
leng	� o   T U���� 0 	pieceword 	pieceWord��  ��  	� o      ���� &0 piecewordposition pieceWordPosition	� 	�	�	� r   [ f	�	�	� I  [ d����	�
�� .sysooffslong    ��� null��  	� ��	�	�
�� 
psof	� m   ] ^	�	� �	�	�  :	� ��	���
�� 
psin	� o   _ `���� 0 theline theLine��  	� o      ���� 0 
semicolumn 
semiColumn	� 	�	�	� r   g t	�	�	� I  g r����	�
�� .sysooffslong    ��� null��  	� ��	�	�
�� 
psof	� m   i l	�	� �	�	�  [	� ��
 ��
�� 
psin
  o   m n���� 0 theline theLine��  	� o      ���� 0 firstbracket firstBracket	� 


 r   u �


 I  u �����

�� .sysooffslong    ��� null��  
 ��


�� 
psof
 m   w z

 �
	
	  ]
 ��

��
�� 
psin

 o   { |���� 0 theline theLine��  
 o      ���� 0 lastbracket lastBracket
 


 l  � ���������  ��  ��  
 


 l  � ���

��  
 - ' put the number after piece in theCount   
 �

 N   p u t   t h e   n u m b e r   a f t e r   p i e c e   i n   t h e C o u n t
 


 r   � �


 I   � ���
���� 0 trim  
 


 n   � �


 7  � ���


�� 
ctxt
 l  � �
����
 [   � �


 o   � ����� &0 piecewordposition pieceWordPosition
 m   � ����� ��  ��  
 l  � �
 ����
  \   � �
!
"
! o   � ����� 0 
semicolumn 
semiColumn
" m   � ����� ��  ��  
 o   � ����� 0 theline theLine
 
#��
# m   � �
$
$ �
%
%   ��  ��  
 o      ���� 0 	thenumber  
 
&
'
& l  � ���������  ��  ��  
' 
(
)
( l  � ���
*
+��  
* I Cif debug then display dialog thenumber & " trouv� en position " & i   
+ �
,
, � i f   d e b u g   t h e n   d i s p l a y   d i a l o g   t h e n u m b e r   &   "   t r o u v �   e n   p o s i t i o n   "   &   i
) 
-
.
- Z  � �
/
0����
/ o   � ����� 0 verbose  
0 I   � ���
1���� 0 dlog  
1 
2��
2 b   � �
3
4
3 b   � �
5
6
5 o   � ����� 0 	thenumber  
6 m   � �
7
7 �
8
8 &   f o u n d   i n   p o s i t i o n  
4 o   � ����� 0 i  ��  ��  ��  ��  
. 
9
:
9 Z   � �
;
<��
=
; l  � �
>����
> =   � �
?
@
? ]   � �
A
B
A l  � �
C����
C c   � �
D
E
D o   � ����� 0 	thenumber  
E m   � ���
�� 
long��  ��  
B m   � ����� 
@ ]   � �
F
G
F l  � �
H����
H c   � �
I
J
I o   � ����� 0 i  
J m   � ���
�� 
long��  ��  
G m   � ����� ��  ��  
< r   � �
K
L
K o   � ����� 0 i  
L o      ���� $0 thecountofpieces theCountOfPieces��  
= k   � �
M
M 
N
O
N I  � ���
P��
�� .sysodlogaskr        TEXT
P b   � �
Q
R
Q b   � �
S
T
S b   � �
U
V
U b   � �
W
X
W m   � �
Y
Y �
Z
Z ` N u m e r o t a t i o n   d e s   p i � c e s   e r r o n � e s   a p r � s   l a   p i � c e  
X l  � �
[����
[ \   � �
\
]
\ o   � ����� 0 i  
] m   � ����� ��  ��  
V m   � �
^
^ �
_
_ $   ( p i � c e   n u m � r o t � e  
T o   � ����� 0 	thenumber  
R m   � �
`
` �
a
a  ) .��  
O 
b
c
b I  � ���
d��
�� .ascrcmnt****      � ****
d b   � �
e
f
e m   � �
g
g �
h
h l s t o p p i n g   :   e r r o r   i n   a t t a c h m e n t s   n u m b e r i n g   a f t e r   p i e c e  
f l  � �
i����
i \   � �
j
k
j o   � ����� 0 i  
k m   � ����� ��  ��  ��  
c 
l��
l R   � �����
m
�� .ascrerr ****      � ****��  
m ��
n��
�� 
errn
n m   � ���������  ��  
: 
o
p
o l  � ���������  ��  ��  
p 
q
r
q l  � ���
s
t��  
s , & put the number in bracket in thePages   
t �
u
u L   p u t   t h e   n u m b e r   i n   b r a c k e t   i n   t h e P a g e s
r 
v
w
v r   �
x
y
x I   ���
z���� 0 trim  
z 
{
|
{ n   �
}
~
} 7  ���

�
�� 
ctxt
 l 	
�����
� [  	
�
�
� o  �� 0 firstbracket firstBracket
� m  �~�~ ��  ��  
� l 

��}�|
� \  

�
�
� o  �{�{ 0 lastbracket lastBracket
� m  �z�z �}  �|  
~ o   � ��y�y 0 theline theLine
| 
��x
� m  
�
� �
�
�   �x  ��  
y o      �w�w 0 thepages thePages
w 
�
�
� l �v�u�t�v  �u  �t  
� 
�
�
� l �s�r�q�s  �r  �q  
� 
�
�
� l �p
�
��p  
�   put the name in theName   
� �
�
� 0   p u t   t h e   n a m e   i n   t h e N a m e
� 
�
�
� r  4
�
�
� I  2�o
��n�o 0 trim  
� 
�
�
� n  +
�
�
� 7 +�m
�
�
�m 
ctxt
� l !%
��l�k
� [  !%
�
�
� o  "#�j�j 0 
semicolumn 
semiColumn
� m  #$�i�i �l  �k  
� l &*
��h�g
� \  &*
�
�
� o  '(�f�f 0 firstbracket firstBracket
� m  ()�e�e �h  �g  
� o  �d�d 0 theline theLine
� 
��c
� m  +.
�
� �
�
�   �c  �n  
� o      �b�b 0 thename theName
� 
�
�
� l 55�a�`�_�a  �`  �_  
� 
�
�
� l 55�^�]�\�^  �]  �\  
� 
�
�
� l 55�[�Z�Y�[  �Z  �Y  
� 
�
�
� Z 5N
�
��X�W
� o  56�V�V 	0 debug  
� I 9J�U
��T
�U .sysodlogaskr        TEXT
� b  9F
�
�
� b  9D
�
�
� b  9@
�
�
� b  9>
�
�
� o  9:�S�S 0 	thenumber  
� m  :=
�
� �
�
�    |  
� o  >?�R�R 0 thename theName
� m  @C
�
� �
�
�  � | �
� o  DE�Q�Q 0 thepages thePages�T  �X  �W  
� 
�
�
� l OO�P
�
��P  
� . ( add theCounts, the Pages in the listing   
� �
�
� P   a d d   t h e C o u n t s ,   t h e   P a g e s   i n   t h e   l i s t i n g
� 
�
�
� l OO�O�N�M�O  �N  �M  
� 
�
�
� l O[
�
�
�
� r  O[
�
�
� b  OY
�
�
� o  OP�L�L 0 thepieceslist thePiecesList
� J  PX
�
� 
��K
� J  PV
�
� 
�
�
� o  PQ�J�J 0 	thenumber  
� 
�
�
� o  QR�I�I 0 thepages thePages
� 
�
�
� o  RS�H�H 0 thepageindex thePageIndex
� 
��G
� o  ST�F�F 0 thename theName�G  �K  
� o      �E�E 0 thepieceslist thePiecesList
� - ' beware : we add a list INSIDE the list   
� �
�
� N   b e w a r e   :   w e   a d d   a   l i s t   I N S I D E   t h e   l i s t
� 
�
�
� I \e�D
��C
�D .ascrcmnt****      � ****
� b  \a
�
�
� m  \_
�
� �
�
� L t h i s   i s   t h e   l i s t   o f   f i l e s   w e   w i l l   n e e d
� o  _`�B�B 0 thepieceslist thePiecesList�C  
� 
�
�
� r  fo
�
�
� l fm
��A�@
� \  fm
�
�
� [  fk
�
�
� o  fg�?�? 0 thepageindex thePageIndex
� ]  gj
�
�
� o  gh�>�> 0 thepages thePages
� m  hi�=�= 
� m  kl�<�< �A  �@  
� o      �;�; 0 thepageindex thePageIndex
� 
�
�
� Z p�
�
��:�9
� o  pq�8�8 	0 debug  
� I t}�7
��6
�7 .sysodlogaskr        TEXT
� b  ty
�
�
� m  tw
�
� �
�
�  F i n i s h e s   a t  
� o  wx�5�5 0 thepageindex thePageIndex�6  �:  �9  
� 
��4
� I ���3
��2
�3 .ascrcmnt****      � ****
� b  ��
�
�
� m  ��
�
� �
�
�  F i n i s h e s   a t  
� o  ���1�1 0 thepageindex thePageIndex�2  �4  �  �   �  � 0 theline theLine	� o    �0�0 0 thelist theList	� 
��/
� L  ��
�
� o  ���.�. 0 thepieceslist thePiecesList�/  	� < 6 returns array of { { X, Y } { X', Y'}, {X", Y"}, ...}   	� �
�
� l   r e t u r n s   a r r a y   o f   {   {   X ,   Y   }   {   X ' ,   Y ' } ,   { X " ,   Y " } ,   . . . }	� 
�
�
� l     �-�,�+�-  �,  �+  
� 
� 
� l     �*�)�(�*  �)  �(     l     �'�&�%�'  �&  �%    l     �$�$     DetailsOfBordereau    � &   D e t a i l s O f B o r d e r e a u 	 l     �#
�#  
 / ) ########################################    � R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	  l     �"�"   | v An AppleScript function that finds lines with "ITEM : NAME " returns array of { { ITEM1, NAME1}, {ITEM2, NAME2}, ...}    � �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   f i n d s   l i n e s   w i t h   " I T E M   :   N A M E   "   r e t u r n s   a r r a y   o f   {   {   I T E M 1 ,   N A M E 1 } ,   { I T E M 2 ,   N A M E 2 } ,   . . . }  l     �!� ��!  �   �    i   4 7 I      ��� (0 detailsofbordereau DetailsOfBordereau � o      �� 0 thelist theList�  �   l    � k     �  r      !  J     ��  ! o      ��  0 thedetailslist theDetailsList "#" X    �$�%$ Z    �&'�(& I    �)�� 0 findtext FindText) *+* o    �� 0 	pieceword 	pieceWord+ ,�, o    �� 0 theline theLine�  �  ' l   �-.�  -  ignore   . �//  i g n o r e�  ( k   # �00 121 r   # .343 I  # ,��5
� .sysooffslong    ��� null�  5 �67
� 
psof6 m   % &88 �99  :7 �:�
� 
psin: o   ' (�� 0 theline theLine�  4 o      �
�
 0 
semicolumn 
semiColumn2 ;<; r   / D=>= I   / B�	?��	 0 trim  ? @A@ n   0 =BCB 7  1 =�DE
� 
ctxtD m   5 7�� E l  8 <F��F \   8 <GHG o   9 :�� 0 
semicolumn 
semiColumnH m   : ;�� �  �  C o   0 1�� 0 theline theLineA I� I m   = >JJ �KK   �   �  > o      ���� 0 thekey theKey< LML r   E \NON I   E Z��P���� 0 trim  P QRQ n   F USTS 7  G U��UV
�� 
ctxtU l  K OW����W [   K OXYX o   L M���� 0 
semicolumn 
semiColumnY m   M N���� ��  ��  V l  P TZ����Z n   P T[\[ 1   R T��
�� 
leng\ o   P R���� 0 theline theLine��  ��  T o   F G���� 0 theline theLineR ]��] m   U V^^ �__   ��  ��  O o      ���� 0 thevalue theValueM `a` l  ] ]��������  ��  ��  a bcb Z  ] pde����d o   ] ^���� 	0 debug  e I  a l��f��
�� .sysodlogaskr        TEXTf b   a hghg b   a fiji o   a b���� 0 thekey theKeyj m   b ekk �ll    |  h o   f g���� 0 thevalue theValue��  ��  ��  c mnm Z  q �op����o o   q t���� 0 verbose  p b   w �qrq b   w �sts b   w |uvu m   w zww �xx * D e t a i l s O f B o r d e r e a u   :  v o   z {���� 0 thekey theKeyt m   | yy �zz    |  r o   � ����� 0 thevalue theValue��  ��  n {��{ r   � �|}| b   � �~~ o   � �����  0 thedetailslist theDetailsList K   � ��� ������� 0 thekey theKey� o   � ����� 0 thevalue theValue��  } o      ����  0 thedetailslist theDetailsList��  � 0 theline theLine% o    	���� 0 thelist theList# ���� L   � ��� o   � �����  0 thedetailslist theDetailsList��   < 6 returns array of { { X, Y } { X', Y'}, {X", Y"}, ...}    ��� l   r e t u r n s   a r r a y   o f   {   {   X ,   Y   }   {   X ' ,   Y ' } ,   { X " ,   Y " } ,   . . . } ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   SumTotalOfPages   � ���     S u m T o t a l O f P a g e s� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   8 ;��� I      ������� "0 sumtotalofpages SumTotalOfPages� ���� o      ���� @0 anarrayofarrayofnumberandpages anArrayofArrayOfNumberAndPages��  ��  � k     [�� ��� r     ��� m     ����  � o      ���� 0 thetotal theTotal� ��� X    V����� k    Q�� ��� r    ��� n    ��� 4    ���
�� 
cobj� m    ���� � o    ���� 0 thearray theArray� o      ����  0 thepiecenumber thePieceNumber� ��� r    %��� l   #������ ]    #��� m    ���� � l   "������ c    "��� l    ������ n     ��� 4     ���
�� 
cobj� m    ���� � o    ���� 0 thearray theArray��  ��  � m     !��
�� 
long��  ��  ��  ��  � o      ���� 0 thepagecount thePageCount� ��� Z  & ;������� o   & '���� 	0 debug  � I  * 7�����
�� .sysodlogaskr        TEXT� b   * 3��� b   * 1��� b   * /��� b   * -��� m   * +�� ���  P i e c e  � o   + ,����  0 thepiecenumber thePieceNumber� m   - .�� ��� 
   h a s  � o   / 0���� 0 thepagecount thePageCount� m   1 2�� ���    p a g e s .��  ��  ��  � ��� I  < I�����
�� .ascrcmnt****      � ****� b   < E��� b   < C��� b   < A��� b   < ?��� m   < =�� ���  P i e c e  � o   = >����  0 thepiecenumber thePieceNumber� m   ? @�� ��� 
   h a s  � o   A B���� 0 thepagecount thePageCount� m   C D�� ���    p a g e s .��  � ���� r   J Q��� [   J O��� o   J K���� 0 thetotal theTotal� ]   K N��� o   K L���� 0 thepagecount thePageCount� m   L M���� � o      ���� 0 thetotal theTotal��  �� 0 thearray theArray� o    ���� @0 anarrayofarrayofnumberandpages anArrayofArrayOfNumberAndPages� ��� L   W Y�� o   W X���� 0 thetotal theTotal� ���� l  Z Z��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   trim   � ��� 
   t r i m� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � F @ An AppleScript function that trim theseCharacters from someText   � ��� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   t r i m   t h e s e C h a r a c t e r s   f r o m   s o m e T e x t� ��� l     ��������  ��  ��  �    i   < ? I      ������ 0 trim    o      ���� 0 sometext someText �� o      ���� "0 thesecharacters theseCharacters��  ��   k     ] 	
	 l     ����   @ : Lazy default (AppleScript doesn't support default values)    � t   L a z y   d e f a u l t   ( A p p l e S c r i p t   d o e s n ' t   s u p p o r t   d e f a u l t   v a l u e s )
  Z    ���� =     o     ���� "0 thesecharacters theseCharacters m    ��
�� boovtrue r     J      m     �     1    ��
�� 
tab   I   ����
�� .sysontocTEXT       shor m    	���� 
��    !  o    ��
�� 
ret ! "#" m    $$ �%%  
# &��& I   ��'��
�� .sysontocTEXT       shor' m    ��  ��  ��   o      �~�~ "0 thesecharacters theseCharacters��  ��   ()( l   �}�|�{�}  �|  �{  ) *+* W    ;,-, r   ) 6./. n   ) 4010 7  * 4�z23
�z 
ctxt2 m   . 0�y�y 3 m   1 3�x�x��1 o   ) *�w�w 0 sometext someText/ o      �v�v 0 sometext someText- H   ! (44 E  ! '565 o   ! "�u�u "0 thesecharacters theseCharacters6 n   " &787 4  # &�t9
�t 
cha 9 m   $ %�s�s 8 o   " #�r�r 0 sometext someText+ :;: l  < <�q�p�o�q  �p  �o  ; <=< W   < Z>?> r   H U@A@ n   H SBCB 7  I S�nDE
�n 
ctxtD m   M O�m�m E m   P R�l�l��C o   H I�k�k 0 sometext someTextA o      �j�j 0 sometext someText? H   @ GFF E  @ FGHG o   @ A�i�i "0 thesecharacters theseCharactersH n   A EIJI 4  B E�hK
�h 
cha K m   C D�g�g��J o   A B�f�f 0 sometext someText= LML l  [ [�e�d�c�e  �d  �c  M N�bN L   [ ]OO o   [ \�a�a 0 sometext someText�b   PQP l     �`�_�^�`  �_  �^  Q RSR l     �]�\�[�]  �\  �[  S TUT l     �Z�Y�X�Z  �Y  �X  U VWV l     �WXY�W  X  
 splitText   Y �ZZ    s p l i t T e x tW [\[ l     �V]^�V  ] / ) ########################################   ^ �__ R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #\ `a` l     �Ubc�U  b I C An AppleScript function that explodes into a list the string items   c �dd �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   e x p l o d e s   i n t o   a   l i s t   t h e   s t r i n g   i t e m sa efe l     �T�S�R�T  �S  �R  f ghg i   @ Ciji I      �Qk�P�Q 0 	splittext 	splitTextk lml o      �O�O 0 thetext theTextm n�Nn o      �M�M 0 thedelimiter theDelimiter�N  �P  j l    opqo k     rr sts r     uvu o     �L�L 0 thedelimiter theDelimiterv n     wxw 1    �K
�K 
txdlx 1    �J
�J 
ascrt yzy r    {|{ n    	}~} 2    	�I
�I 
citm~ o    �H�H 0 thetext theText| o      �G�G 0 thetextitems theTextItemsz � r    ��� m    �� ���  � n     ��� 1    �F
�F 
txdl� 1    �E
�E 
ascr� ��D� L    �� o    �C�C 0 thetextitems theTextItems�D  p   returns a list   q ���    r e t u r n s   a   l i s th ��� l     �B�A�@�B  �A  �@  � ��� l     �?�>�=�?  �>  �=  � ��� l     �<���<  �   convertListToString   � ��� (   c o n v e r t L i s t T o S t r i n g� ��� l     �;���;  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     �:���:  � I C An AppleScript function that explodes into a list the string items   � ��� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   e x p l o d e s   i n t o   a   l i s t   t h e   s t r i n g   i t e m s� ��� l     �9�8�7�9  �8  �7  � ��� i   D G��� I      �6��5�6 0 convertlisttostring  � ��� o      �4�4 0 thelist theList� ��3� o      �2�2 0 thedelimiter theDelimiter�3  �5  � k     �� ��� r     ��� o     �1�1 0 thedelimiter theDelimiter� n     ��� 1    �0
�0 
txdl� 1    �/
�/ 
ascr� ��� r    ��� c    	��� o    �.�. 0 thelist theList� m    �-
�- 
TEXT� o      �,�, 0 	thestring 	theString� ��� r    ��� m    �� ���  � n     ��� 1    �+
�+ 
txdl� 1    �*
�* 
ascr� ��)� L    �� o    �(�( 0 	thestring 	theString�)  � ��� l     �'�&�%�'  �&  �%  � ��� l     �$�#�"�$  �#  �"  � ��� l     �!���!  �   deleteFolderAtPath   � ��� &   d e l e t e F o l d e r A t P a t h� ��� l     � ���   � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ����  � C = An AppleScript function that delete a folder in a given path   � ��� z   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   d e l e t e   a   f o l d e r   i n   a   g i v e n   p a t h� ��� l     ����  �  �  � ��� i   H K��� I      ���� (0 deletefolderatpath deleteFolderAtPath� ��� o      �� 0 thepath  � ��� o      �� 0 
foldername  �  �  � l    -���� Q     -���� k    �� ��� O    ��� k    �� ��� l   ����  � l fset newfo to POSIX path of (make new folder at POSIX file (thepath) with properties {name:foldername})   � ��� � s e t   n e w f o   t o   P O S I X   p a t h   o f   ( m a k e   n e w   f o l d e r   a t   P O S I X   f i l e   ( t h e p a t h )   w i t h   p r o p e r t i e s   { n a m e : f o l d e r n a m e } )� ��� r    ��� c    ��� 4    ��
� 
psxf� l  	 ���� b   	 ��� o   	 
�� 0 thepath  � o   
 �� 0 
foldername  �  �  � m    �
� 
ctxt� o      �� 0 
deletefile 
deleteFile� ��� I   ���
� .coredelonull���     obj � o    �� 0 
deletefile 
deleteFile�  �  � m    ���                                                                                  MACS  alis    :  	MacOSSlim                      BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p   	 M a c O S S l i m  &System/Library/CoreServices/Finder.app  / ��  � ��
� L    �� o    �	�	 	0 newfo  �
  � R      ���
� .ascrerr ****      � ****�  �  � k   # -�� ��� I  # (���
� .ascrcmnt****      � ****� m   # $�� �    f a i l�  � � L   ) - b   ) , o   ) *�� 0 thepath   o   * +�� 0 
foldername  �  �   return bool   � �    r e t u r n   b o o l�  l     � �����   ��  ��   	 l     ��������  ��  ��  	 

 l     ��������  ��  ��    l     ����     createFolderAtPath    � &   c r e a t e F o l d e r A t P a t h  l     ����   / ) ########################################    � R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #  l     ����   D > An AppleScript function that creates a folder in a given path    � |   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   c r e a t e s   a   f o l d e r   i n   a   g i v e n   p a t h  l     ��������  ��  ��    i   L O  I      ��!���� (0 createfolderatpath createFolderAtPath! "#" o      ���� 0 thepath  # $��$ o      ���� 0 
foldername  ��  ��    l    ,%&'% Q     ,()*( k     ++ ,-, O    ./. r    010 n    232 1    ��
�� 
psxp3 l   4����4 I   ����5
�� .corecrel****      � null��  5 ��67
�� 
kocl6 m   	 
��
�� 
cfol7 ��89
�� 
insh8 4    ��:
�� 
psxf: l   ;����; o    ���� 0 thepath  ��  ��  9 ��<��
�� 
prdt< K    == ��>��
�� 
pnam> o    ���� 0 
foldername  ��  ��  ��  ��  1 o      ���� 	0 newfo  / m    ??�                                                                                  MACS  alis    :  	MacOSSlim                      BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p   	 M a c O S S l i m  &System/Library/CoreServices/Finder.app  / ��  - @��@ L     AA o    ���� 	0 newfo  ��  ) R      ������
�� .ascrerr ****      � ****��  ��  * L   ( ,BB b   ( +CDC o   ( )���� 0 thepath  D o   ) *���� 0 
foldername  &   return bool   ' �EE    r e t u r n   b o o l FGF l     ��������  ��  ��  G HIH l     ��������  ��  ��  I JKJ l     ��LM��  L   prefixFileListWithPath   M �NN .   p r e f i x F i l e L i s t W i t h P a t hK OPO l     ��QR��  Q / ) ########################################   R �SS R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #P TUT l     ��VW��  V f ` An AppleScript function that takes a list of files and return their locations with a given path   W �XX �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   t a k e s   a   l i s t   o f   f i l e s   a n d   r e t u r n   t h e i r   l o c a t i o n s   w i t h   a   g i v e n   p a t hU YZY l     ��������  ��  ��  Z [\[ i   P S]^] I      ��_���� 00 prefixfilelistwithpath prefixFileListWithPath_ `a` o      ���� 0 thepath  a b��b o      ���� 0 filelist  ��  ��  ^ l    (cdec k     (ff ghg r     iji J     ����  j o      ���� 0 filelistwithpath  h klk X    %m��nm k     oo pqp r    rsr b    tut o    ���� 0 filelistwithpath  u J    vv w��w l   x����x b    yzy o    ���� 0 thepath  z o    ���� 0 thefile  ��  ��  ��  s o      ���� 0 filelistwithpath  q {��{ l   ��������  ��  ��  ��  �� 0 thefile  n o    	���� 0 filelist  l |��| L   & (}} o   & '���� 0 filelistwithpath  ��  d !  return file list with path   e �~~ 6   r e t u r n   f i l e   l i s t   w i t h   p a t h\ � l     ��������  ��  ��  � ��� l     ������  � #  prefixFileListWithPathQuoted   � ��� :   p r e f i x F i l e L i s t W i t h P a t h Q u o t e d� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � m g An AppleScript function that takes a list of files and return their locations with a given QUOTED path   � ��� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   t a k e s   a   l i s t   o f   f i l e s   a n d   r e t u r n   t h e i r   l o c a t i o n s   w i t h   a   g i v e n   Q U O T E D   p a t h� ��� l     ��������  ��  ��  � ��� i   T W��� I      ������� <0 prefixfilelistwithpathquoted prefixFileListWithPathQuoted� ��� o      ���� 0 thepath  � ���� o      ���� 0 filelist  ��  ��  � l    *���� k     *�� ��� r     ��� J     ����  � o      ���� 0 filelistwithpath  � ��� X    '����� k    "�� ��� r     ��� b    ��� o    ���� 0 filelistwithpath  � J    �� ���� l   ������ n    ��� 1    ��
�� 
strq� l   ������ b    ��� o    ���� 0 thepath  � o    ���� 0 thefile  ��  ��  ��  ��  ��  � o      ���� 0 filelistwithpath  � ���� l  ! !��������  ��  ��  ��  �� 0 thefile  � o    	���� 0 filelist  � ���� L   ( *�� o   ( )���� 0 filelistwithpath  ��  �    return file list with pth   � ��� 4   r e t u r n   f i l e   l i s t   w i t h   p t h� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   watermarkFilePY   � ���     w a t e r m a r k F i l e P Y� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � D > pass a file to watermark, a file to save in, and a stamp file   � ��� |   p a s s   a   f i l e   t o   w a t e r m a r k ,   a   f i l e   t o   s a v e   i n ,   a n d   a   s t a m p   f i l e� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   X [��� I      ������ "0 watermarkfilepy watermarkFilePY� ��� o      �~�~  0 thefiletostamp theFileToStamp� ��� o      �}�} 0 
thenewfile 
theNewFile� ��|� o      �{�{ 0 thestampfile theStampFile�|  �  � l    Z���� k     Z�� ��� l     �z�y�x�z  �y  �x  � ��� l     �w���w  �  set theX to "450.0"   � ��� & s e t   t h e X   t o   " 4 5 0 . 0 "� ��� l     �v���v  �  set theY to "700"   � ��� " s e t   t h e Y   t o   " 7 0 0 "� ��� l     �u���u  � B < we now use global position variables, declared at beginning   � ��� x   w e   n o w   u s e   g l o b a l   p o s i t i o n   v a r i a b l e s ,   d e c l a r e d   a t   b e g i n n i n g� ��� r     ��� m     �� ���  - 2 0� o      �t�t 0 theangle  � ��� r    ��� m    �� ���  0 . 2� o      �s�s 0 thesize  � ��� r    ��� m    	�� �    1� o      �r�r 0 
theopacity 
theOpacity�  l   �q�p�o�q  �p  �o    r    / b    - b    +	
	 b    ) b    ' b    % b    # b    ! b     b     b     b     b     b      b    !"! b    #$# b    %&% m    '' �((n ' # ! / u s r / b i n / p y t h o n 
 #   W a t e r m a r k   e a c h   p a g e   i n   a   P D F   d o c u m e n t 
 # f r o m   d o t h e w a t e r m a r k . p y 
 i m p o r t   s y s 
 i m p o r t   g e t o p t 
 i m p o r t   m a t h 
 i m p o r t   s h u t i l 
 i m p o r t   C o r e G r a p h i c s 
 f r o m   Q u a r t z . I m a g e I O   i m p o r t   * 
 
 d e f   d r a w W a t e r m a r k ( c t x ,   i m a g e ,   x O f f s e t ,   y O f f s e t ,   a n g l e ,   s c a l e ,   o p a c i t y ) : 
 	 i f   i m a g e : 
 	 	 i m a g e W i d t h   =   C G I m a g e G e t W i d t h ( i m a g e ) 
 	 	 i m a g e H e i g h t   =   C G I m a g e G e t H e i g h t ( i m a g e ) 
 	 	 i m a g e B o x   =   C G R e c t M a k e ( 0 ,   0 ,   i m a g e W i d t h ,   i m a g e H e i g h t ) 
 	 	 
 	 	 C G C o n t e x t S a v e G S t a t e ( c t x ) 
 	 	 C G C o n t e x t S e t A l p h a ( c t x ,   o p a c i t y ) 
 	 	 C G C o n t e x t T r a n s l a t e C T M ( c t x ,   x O f f s e t ,   y O f f s e t ) 
 	 	 C G C o n t e x t S c a l e C T M ( c t x ,   s c a l e ,   s c a l e ) 
 	 	 C G C o n t e x t T r a n s l a t e C T M ( c t x ,   i m a g e W i d t h   /   2 ,   i m a g e H e i g h t   /   2 ) 
 	 	 C G C o n t e x t R o t a t e C T M ( c t x ,   a n g l e   *   m a t h . p i   /   1 8 0 ) 
 	 	 C G C o n t e x t T r a n s l a t e C T M ( c t x ,   - i m a g e W i d t h   /   2 ,   - i m a g e H e i g h t   /   2 ) 
 	 	 C G C o n t e x t D r a w I m a g e ( c t x ,   i m a g e B o x ,   i m a g e ) 
 	 	 C G C o n t e x t R e s t o r e G S t a t e ( c t x ) 
 	 	 
 d e f   c r e a t e I m a g e ( i m a g e P a t h ) : 
 	 i m a g e   =   N o n e 
 	 p r o v i d e r   =   C G D a t a P r o v i d e r C r e a t e W i t h F i l e n a m e ( i m a g e P a t h ) 
 	 i f   p r o v i d e r : 
 	 	 i m a g e S r c   =   C G I m a g e S o u r c e C r e a t e W i t h D a t a P r o v i d e r ( p r o v i d e r ,   N o n e ) 
 	 	 i f   i m a g e S r c : 
 	 	 	 i m a g e   =   C G I m a g e S o u r c e C r e a t e I m a g e A t I n d e x ( i m a g e S r c ,   0 ,   N o n e ) 
 	 i f   n o t   i m a g e : 
 	 	 p r i n t   " C a n n o t   i m p o r t   t h e   i m a g e   f r o m   f i l e   % s "   %   i m a g e P a t h 
 	 r e t u r n   i m a g e 
 	 
 d e f   w a t e r m a r k ( i n p u t F i l e ,   w a t e r m a r k F i l e s ,   o u t p u t F i l e ,   u n d e r ,   x O f f s e t ,   y O f f s e t ,   a n g l e ,   s c a l e ,   o p a c i t y ,   v e r b o s e ) : 
 	 
 	 
 	 i m a g e s   =   m a p ( c r e a t e I m a g e ,   w a t e r m a r k F i l e s ) 
 	 
 	 c t x   =   C G P D F C o n t e x t C r e a t e W i t h U R L ( C F U R L C r e a t e F r o m F i l e S y s t e m R e p r e s e n t a t i o n ( k C F A l l o c a t o r D e f a u l t ,   o u t p u t F i l e ,   l e n ( o u t p u t F i l e ) ,   F a l s e ) ,   N o n e ,   N o n e ) 
 	 i f   c t x : 
 	 	 p d f   =   C G P D F D o c u m e n t C r e a t e W i t h U R L ( C F U R L C r e a t e F r o m F i l e S y s t e m R e p r e s e n t a t i o n ( k C F A l l o c a t o r D e f a u l t ,   i n p u t F i l e ,   l e n ( i n p u t F i l e ) ,   F a l s e ) ) 
 	 	 i f   p d f : 
 	 
 	 	 	 f o r   i   i n   r a n g e ( 1 ,   C G P D F D o c u m e n t G e t N u m b e r O f P a g e s ( p d f )   +   1 ) : 
 	 	 	 	 i m a g e   =   i m a g e s [ i   %   l e n ( i m a g e s )   -   1 ] 
 	 	 	 	 p a g e   =   C G P D F D o c u m e n t G e t P a g e ( p d f ,   i ) 
 	 	 	 	 i f   p a g e : 
 	 	 	 	 	 m e d i a B o x   =   C G P D F P a g e G e t B o x R e c t ( p a g e ,   k C G P D F M e d i a B o x ) 
 	 	 	 	 	 i f   C G R e c t I s E m p t y ( m e d i a B o x ) : 
 	 	 	 	 	 	 m e d i a B o x   =   N o n e 
 	 	 
 	 	 	 	 	 C G C o n t e x t B e g i n P a g e ( c t x ,   m e d i a B o x ) 
 	 	 	 	 	 i f   u n d e r : 
 	 	 	 	 	 	 d r a w W a t e r m a r k ( c t x ,   i m a g e ,   x O f f s e t ,   y O f f s e t ,   a n g l e ,   s c a l e ,   o p a c i t y ) 
 	 	 	 	 	 C G C o n t e x t D r a w P D F P a g e ( c t x ,   p a g e ) 
 	 	 	 	 	 i f   n o t   u n d e r : 
 	 	 	 	 	 	 d r a w W a t e r m a r k ( c t x ,   i m a g e ,   x O f f s e t ,   y O f f s e t ,   a n g l e ,   s c a l e ,   o p a c i t y ) 
 	 	 	 	 	 C G C o n t e x t E n d P a g e ( c t x ) 
 	 	 	 	 	 # p r i n t   " I n s e r t e d   i n   p a g e   " , i 
 	 	 	 	 	 
 	 	 	 d e l   p d f 
 	 	 C G P D F C o n t e x t C l o s e ( c t x ) 
 	 	 d e l   c t x 
 	 	 
 # w a t e r m a r k ( r e a d F i l e n a m e ,   a r g s ,   w r i t e F i l e n a m e ,   u n d e r ,   x O f f s e t ,   y O f f s e t ,   a n g l e ,   s c a l e ,   o p a c i t y ,   v e r b o s e ) ; 
 i n p u t F i l e =   "& o    �n�n  0 thefiletostamp theFileToStamp$ m    )) �** $ " 
 i m a g e s f i l e s   =   ( "" o    �m�m 0 thestampfile theStampFile  m    ++ �,, " " , ) 
 o u t p u t F i l e =   " o    �l�l 0 
thenewfile 
theNewFile m    -- �.. n " 
 w a t e r m a r k ( i n p u t F i l e ,   i m a g e s f i l e s ,   o u t p u t F i l e ,   F a l s e ,   o    �k�k 0 thex theX m    // �00  ,   o    �j�j 0 they theY m     11 �22  ,   o   ! "�i�i 0 theangle   m   # $33 �44  , o   % &�h�h 0 thesize   m   ' (55 �66    ,  
 o   ) *�g�g 0 
theopacity 
theOpacity m   + ,77 �88  ,   F a l s e ) ' o      �f�f 0 	thescript   9:9 l  0 0�e�d�c�e  �d  �c  : ;<; r   0 9=>= I  0 7�b?�a
�b .sysoexecTEXT���     TEXT? b   0 3@A@ m   0 1BB �CC  p y t h o n   - c  A o   1 2�`�` 0 	thescript  �a  > o      �_�_ 0 
stampedpdf  < DED Z  : MFG�^�]F o   : =�\�\ 	0 debug  G I  @ I�[H�Z
�[ .sysodlogaskr        TEXTH b   @ EIJI m   @ CKK �LL " w a t e r m a r k F i l e P Y :  J o   C D�Y�Y 0 
stampedpdf  �Z  �^  �]  E MNM I  N W�XO�W
�X .ascrcmnt****      � ****O b   N SPQP m   N QRR �SS " w a t e r m a r k F i l e P Y :  Q o   Q R�V�V 0 
stampedpdf  �W  N T�UT L   X ZUU o   X Y�T�T 0 
thenewfile 
theNewFile�U  �   return the file   � �VV     r e t u r n   t h e   f i l e� WXW l     �S�R�Q�S  �R  �Q  X YZY l     �P[\�P  [   remove_extension   \ �]] "   r e m o v e _ e x t e n s i o nZ ^_^ l     �O`a�O  ` / ) ########################################   a �bb R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #_ cdc l     �Nef�N  e 1 + pass a file name returns without extension   f �gg V   p a s s   a   f i l e   n a m e   r e t u r n s   w i t h o u t   e x t e n s i o nd hih l     �M�L�K�M  �L  �K  i jkj i   \ _lml I      �Jn�I�J 0 remove_extension  n o�Ho o      �G�G 0 	this_name  �H  �I  m k     <pp qrq Z     9st�F�Es E     uvu o     �D�D 0 	this_name  v m    ww �xx  .t k    5yy z{z r    |}| c    ~~ l 	  ��C�B� l   ��A�@� l   ��?�>� n    ��� 1   	 �=
�= 
rvse� n    	��� 2    	�<
�< 
cha � o    �;�; 0 	this_name  �?  �>  �A  �@  �C  �B   m    �:
�: 
TEXT} o      �9�9 0 	this_name  { ��� r    ��� l   ��8�7� I   �6�5�
�6 .sysooffslong    ��� null�5  � �4��
�4 
psof� m    �� ���  .� �3��2
�3 
psin� o    �1�1 0 	this_name  �2  �8  �7  � o      �0�0 0 x  � ��� r    +��� l   )��/�.� n    )��� 7   )�-��
�- 
ctxt� l  ! %��,�+� [   ! %��� o   " #�*�* 0 x  � m   # $�)�) �,  �+  � m   & (�(�(��� o    �'�' 0 	this_name  �/  �.  � o      �&�& 0 	this_name  � ��%� r   , 5��� c   , 3��� l  , 1��$�#� l  , 1��"�!� n   , 1��� 1   / 1� 
�  
rvse� n   , /��� 2   - /�
� 
cha � o   , -�� 0 	this_name  �"  �!  �$  �#  � m   1 2�
� 
TEXT� o      �� 0 	this_name  �%  �F  �E  r ��� L   : <�� o   : ;�� 0 	this_name  �  k ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � x r Logs a text representation of the specified object or objects, which may be of any type, typically for debugging.   � ��� �   L o g s   a   t e x t   r e p r e s e n t a t i o n   o f   t h e   s p e c i f i e d   o b j e c t   o r   o b j e c t s ,   w h i c h   m a y   b e   o f   a n y   t y p e ,   t y p i c a l l y   f o r   d e b u g g i n g .� ��� l     ����  � J D Works hard to find a meaningful text representation of each object.   � ��� �   W o r k s   h a r d   t o   f i n d   a   m e a n i n g f u l   t e x t   r e p r e s e n t a t i o n   o f   e a c h   o b j e c t .� ��� l     ����  �  	 SYNOPSIS   � ���    S Y N O P S I S� ��� l     ����  � $    dlog(anyObjOrListOfObjects)   � ��� <       d l o g ( a n y O b j O r L i s t O f O b j e c t s )� ��� l     ����  �   USE EXAMPLES   � ���    U S E   E X A M P L E S� ��� l     ����  � ( "   dlog("before")  # single object   � ��� D       d l o g ( " b e f o r e " )     #   s i n g l e   o b j e c t� ��� l     �
���
  � E ?     dlog({ "front window: ", front window }) # list of objects   � ��� ~           d l o g ( {   " f r o n t   w i n d o w :   " ,   f r o n t   w i n d o w   } )   #   l i s t   o f   o b j e c t s� ��� l     �	���	  �   SETUP   � ���    S E T U P� ��� l     ����  � � �   At the top of your script, define global variable DLOG_TARGETS and set it to a *list* of targets (even if you only have 1 target).   � ���
       A t   t h e   t o p   o f   y o u r   s c r i p t ,   d e f i n e   g l o b a l   v a r i a b l e   D L O G _ T A R G E T S   a n d   s e t   i t   t o   a   * l i s t *   o f   t a r g e t s   ( e v e n   i f   y o u   o n l y   h a v e   1   t a r g e t ) .� ��� l     ����  � u o     set DLOG_TARGETS to {} # must be a list with any combination of: "log", "syslog", "alert", <posixFilePath>   � ��� �           s e t   D L O G _ T A R G E T S   t o   { }   #   m u s t   b e   a   l i s t   w i t h   a n y   c o m b i n a t i o n   o f :   " l o g " ,   " s y s l o g " ,   " a l e r t " ,   < p o s i x F i l e P a t h >� ��� l     ����  � A ;   An *empty* list means that logging should be *disabled*.   � ��� v       A n   * e m p t y *   l i s t   m e a n s   t h a t   l o g g i n g   s h o u l d   b e   * d i s a b l e d * .� ��� l     ����  � j d   If you specify a POSIX file path, the file will be *appended* to; variable references in the path   � ��� �       I f   y o u   s p e c i f y   a   P O S I X   f i l e   p a t h ,   t h e   f i l e   w i l l   b e   * a p p e n d e d *   t o ;   v a r i a b l e   r e f e r e n c e s   i n   t h e   p a t h� ��� l     ����  � ^ X   are allowed, and as a courtesy the path may start with "~" to refer to your home dir.   � ��� �       a r e   a l l o w e d ,   a n d   a s   a   c o u r t e s y   t h e   p a t h   m a y   s t a r t   w i t h   " ~ "   t o   r e f e r   t o   y o u r   h o m e   d i r .� ��� l     ����  � ~ x   Caveat: while you can *remove* the variable definition to disable logging, you'll take an additional performance hit.   � ��� �       C a v e a t :   w h i l e   y o u   c a n   * r e m o v e *   t h e   v a r i a b l e   d e f i n i t i o n   t o   d i s a b l e   l o g g i n g ,   y o u ' l l   t a k e   a n   a d d i t i o n a l   p e r f o r m a n c e   h i t .� ��� l     ����  �   SETUP EXAMPLES   � ���    S E T U P   E X A M P L E S� ��� l     ����  � ] W    For instance, to use both AppleScript's log command *and* display a GUI alert, use:   � �   �         F o r   i n s t a n c e ,   t o   u s e   b o t h   A p p l e S c r i p t ' s   l o g   c o m m a n d   * a n d *   d i s p l a y   a   G U I   a l e r t ,   u s e :�  l     � �    3 -       set DLOG_TARGETS to { "log", "alert" }    � Z               s e t   D L O G _ T A R G E T S   t o   {   " l o g " ,   " a l e r t "   }  l     ��	��     Note:    	 �

    N o t e :    l     ����   Y S   - Since the subroutine is still called even when DLOG_TARGETS is an empty list,     � �       -   S i n c e   t h e   s u b r o u t i n e   i s   s t i l l   c a l l e d   e v e n   w h e n   D L O G _ T A R G E T S   i s   a n   e m p t y   l i s t ,    l     ����   O I     you pay a performancy penalty for leaving dlog() calls in your code.    � �           y o u   p a y   a   p e r f o r m a n c y   p e n a l t y   f o r   l e a v i n g   d l o g ( )   c a l l s   i n   y o u r   c o d e .  l     ����   ` Z   - Unlike with the built-in log() method, you MUST use parentheses around the parameter.    � �       -   U n l i k e   w i t h   t h e   b u i l t - i n   l o g ( )   m e t h o d ,   y o u   M U S T   u s e   p a r e n t h e s e s   a r o u n d   t h e   p a r a m e t e r .  l     ����   o i   - To specify more than one object, pass a *list*. Note that while you could try to synthesize a single    � �       -   T o   s p e c i f y   m o r e   t h a n   o n e   o b j e c t ,   p a s s   a   * l i s t * .   N o t e   t h a t   w h i l e   y o u   c o u l d   t r y   t o   s y n t h e s i z e   a   s i n g l e   l     ��!"��  ! q k     output string by concatenation yourself, you'd lose the benefit of this subroutine's ability to derive   " �## �           o u t p u t   s t r i n g   b y   c o n c a t e n a t i o n   y o u r s e l f ,   y o u ' d   l o s e   t h e   b e n e f i t   o f   t h i s   s u b r o u t i n e ' s   a b i l i t y   t o   d e r i v e  $%$ l     ��&'��  & g a     readable text representations even of objects that can't simply be converted with `as text`.   ' �(( �           r e a d a b l e   t e x t   r e p r e s e n t a t i o n s   e v e n   o f   o b j e c t s   t h a t   c a n ' t   s i m p l y   b e   c o n v e r t e d   w i t h   ` a s   t e x t ` .% )*) i   ` c+,+ I      ��-���� 0 dlog  - .��. o      ���� .0 anyobjorlistofobjects anyObjOrListOfObjects��  ��  , k    �// 010 p      22 ������ 0 dlog_targets DLOG_TARGETS��  1 343 Q     5675 Z   89����8 =   :;: n    <=< 1    ��
�� 
leng= o    ���� 0 dlog_targets DLOG_TARGETS; m    ����  9 L    ����  ��  ��  6 R      ������
�� .ascrerr ****      � ****��  ��  7 L    ����  4 >?> l   ��@A��  @ ] W The following tries hard to derive a readable representation from the input object(s).   A �BB �   T h e   f o l l o w i n g   t r i e s   h a r d   t o   d e r i v e   a   r e a d a b l e   r e p r e s e n t a t i o n   f r o m   t h e   i n p u t   o b j e c t ( s ) .? CDC Z   -EF����E >   !GHG n    IJI m    ��
�� 
pclsJ o    ���� .0 anyobjorlistofobjects anyObjOrListOfObjectsH m     ��
�� 
listF r   $ )KLK J   $ 'MM N��N o   $ %���� .0 anyobjorlistofobjects anyObjOrListOfObjects��  L o      ���� .0 anyobjorlistofobjects anyObjOrListOfObjects��  ��  D OPO q   . .QQ ��R�� 0 lst  R ��S�� 0 i  S ��T�� 0 txt  T ��U�� 0 errmsg errMsgU ��V�� 0 orgtids orgTidsV ��W�� 0 oname oNameW ��X�� 
0 oid oIdX ��Y�� 
0 prefix  Y ��Z�� 0 	logtarget 	logTargetZ ��[�� 0 txtcombined txtCombined[ ��\�� 0 
prefixtime 
prefixTime\ ������  0 prefixdatetime prefixDateTime��  P ]^] r   . 2_`_ J   . 0����  ` o      ���� 0 lst  ^ aba X   3�c��dc k   C�ee fgf r   C Fhih m   C Djj �kk  i o      ���� 0 txt  g lml Y   G �n��op��n k   Q �qq rsr Q   Q �tuvt Z   T �wx��yw =  T Wz{z o   T U���� 0 i  { m   U V���� x Z   Z �|}��~| =  Z _� n   Z ]��� m   [ ]��
�� 
pcls� o   Z [���� 0 anyobj anyObj� m   ] ^��
�� 
list} k   b ��� ��� l  b {���� r   b {��� J   b j�� ��� n  b e��� 1   c e��
�� 
txdl� 1   b c��
�� 
ascr� ���� J   e h�� ���� m   e f�� ���  ,  ��  ��  � J      �� ��� o      ���� 0 orgtids orgTids� ���� n     ��� 1   w y��
�� 
txdl� 1   v w��
�� 
ascr��  �   '   � ���    '� ��� r   | ���� b   | ���� l  | ������� c   | ���� b   | ��� m   | }�� ���  {� o   } ~���� 0 anyobj anyObj� m    ���
�� 
TEXT��  ��  � m   � ��� ���  }� o      ���� 0 txt  � ���� l  � ����� r   � ���� o   � ����� 0 orgtids orgTids� n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr�   '   � ���    '��  ��  ~ r   � ���� c   � ���� o   � ����� 0 anyobj anyObj� m   � ���
�� 
TEXT� o      ���� 0 txt  ��  y r   � ���� c   � ���� n   � ���� 1   � ���
�� 
pALL� o   � ����� 0 anyobj anyObj� m   � ���
�� 
TEXT� o      ���� 0 txt  u R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg��  v k   � ��� ��� l  � �������  � 3 - Trick for records and record-*like* objects:   � ��� Z   T r i c k   f o r   r e c o r d s   a n d   r e c o r d - * l i k e *   o b j e c t s :� ��� l  � �������  � � � We exploit the fact that the error message contains the desired string representation of the record, so we extract it from there. This (still) works as of AS 2.3 (OS X 10.9).   � ���^   W e   e x p l o i t   t h e   f a c t   t h a t   t h e   e r r o r   m e s s a g e   c o n t a i n s   t h e   d e s i r e d   s t r i n g   r e p r e s e n t a t i o n   o f   t h e   r e c o r d ,   s o   w e   e x t r a c t   i t   f r o m   t h e r e .   T h i s   ( s t i l l )   w o r k s   a s   o f   A S   2 . 3   ( O S   X   1 0 . 9 ) .� ���� Q   � ������ r   � ���� I  � ������
�� .sysoexecTEXT���     TEXT� b   � ���� m   � ��� ��� , e g r e p   - o   ' \ { . * \ } '   < < <  � n   � ���� 1   � ���
�� 
strq� o   � ����� 0 errmsg errMsg��  � o      ���� 0 txt  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  s ���� Z  � �������� >  � ���� o   � ����� 0 txt  � m   � ��� ���  �  S   � ���  ��  ��  �� 0 i  o m   J K���� p m   K L���� ��  m ��� r   � ���� m   � ��� ���  � o      ���� 
0 prefix  � ��� Z   ��������� F   ���� H   � ��� E  � ���� J   � ��� ��� m   � ���
�� 
ctxt� ��� m   � ���
�� 
long� ��� m   � ���
�� 
doub� ��� m   � ���
�� 
bool� ��� m   � ���
�� 
ldt � ��� m   � ���
�� 
list� ���� m   � ���
�� 
reco��  � n   � ���� m   � ���
�� 
pcls� o   � ����� 0 anyobj anyObj� >  � ��� o   � ����� 0 anyobj anyObj� m   � ���
�� 
msng� k  ��� � � r   b   m  
 �  [ n  
 m  ��
�� 
pcls o  
���� 0 anyobj anyObj o      ���� 
0 prefix    	
	 r   m   �   o      ���� 0 oname oName
  r   m   �   o      ���� 
0 oid oId  Q  J�� k   A  r   ' n   % 1  !%��
�� 
pnam o   !���� 0 anyobj anyObj o      ���� 0 oname oName  ��  Z (A!"��~! > (-#$# o  ()�}�} 0 oname oName$ m  ),�|
�| 
msng" r  0=%&% b  0;'(' b  07)*) b  05+,+ o  01�{�{ 
0 prefix  , m  14-- �..    n a m e = "* o  56�z�z 0 oname oName( m  7:// �00  "& o      �y�y 
0 prefix  �  �~  ��   R      �x�w�v
�x .ascrerr ****      � ****�w  �v  ��   121 Q  Kt34�u3 k  Nk55 676 r  NU898 n  NS:;: 1  OS�t
�t 
ID  ; o  NO�s�s 0 anyobj anyObj9 o      �r�r 
0 oid oId7 <�q< Z Vk=>�p�o= > V[?@? o  VW�n�n 
0 oid oId@ m  WZ�m
�m 
msng> r  ^gABA b  ^eCDC b  ^cEFE o  ^_�l�l 
0 prefix  F m  _bGG �HH    i d =D o  cd�k�k 
0 oid oIdB o      �j�j 
0 prefix  �p  �o  �q  4 R      �i�h�g
�i .ascrerr ****      � ****�h  �g  �u  2 IJI r  u|KLK b  uzMNM o  uv�f�f 
0 prefix  N m  vyOO �PP  ]  L o      �e�e 
0 prefix  J Q�dQ r  }�RSR b  }�TUT o  }~�c�c 
0 prefix  U o  ~�b�b 0 txt  S o      �a�a 0 txt  �d  ��  ��  � V�`V r  ��WXW b  ��YZY o  ���_�_ 0 lst  Z o  ���^�^ 0 txt  X o      �]�] 0 lst  �`  �� 0 anyobj anyObjd o   6 7�\�\ .0 anyobjorlistofobjects anyObjOrListOfObjectsb [\[ l ��]^_] r  ��`a` J  ��bb cdc n ��efe 1  ���[
�[ 
txdlf 1  ���Z
�Z 
ascrd g�Yg J  ��hh i�Xi m  ��jj �kk   �X  �Y  a J      ll mnm o      �W�W 0 orgtids orgTidsn o�Vo n     pqp 1  ���U
�U 
txdlq 1  ���T
�T 
ascr�V  ^   '   _ �rr    '\ sts r  ��uvu c  ��wxw o  ���S�S 0 lst  x m  ���R
�R 
TEXTv o      �Q�Q 0 txtcombined txtCombinedt yzy r  ��{|{ b  ��}~} b  ��� m  ���� ���  [� n  ����� 1  ���P
�P 
tstr� l ����O�N� I ���M�L�K
�M .misccurdldt    ��� null�L  �K  �O  �N  ~ m  ���� ���  ]  | o      �J�J 0 
prefixtime 
prefixTimez ��� r  ����� b  ����� b  ����� b  ����� m  ���� ���  [� n  ����� 1  ���I
�I 
shdt� l ����H�G� I ���F�E�D
�F .misccurdldt    ��� null�E  �D  �H  �G  � m  ���� ���   � n  ����� 7 ���C��
�C 
ctxt� m  ���B�B � m  ���A�A��� o  ���@�@ 0 
prefixtime 
prefixTime� o      �?�?  0 prefixdatetime prefixDateTime� ��� l ������ r  ����� o  ���>�> 0 orgtids orgTids� n     ��� 1  ���=
�= 
txdl� 1  ���<
�< 
ascr�   '   � ���    '� ��� l ���;���;  � 0 * Log the result to every target specified.   � ��� T   L o g   t h e   r e s u l t   t o   e v e r y   t a r g e t   s p e c i f i e d .� ��:� X  ����9�� Z   ������ =  	��� n   ��� 1  �8
�8 
pcnt� o   �7�7 0 	logtarget 	logTarget� m  �� ���  l o g� I �6��5
�6 .ascrcmnt****      � ****� b  ��� o  �4�4 0 
prefixtime 
prefixTime� o  �3�3 0 txtcombined txtCombined�5  � ��� = ��� n  ��� 1  �2
�2 
pcnt� o  �1�1 0 	logtarget 	logTarget� m  �� ��� 
 a l e r t� ��� I ")�0��/
�0 .sysodisAaleR        TEXT� b  "%��� o  "#�.�. 0 
prefixtime 
prefixTime� o  #$�-�- 0 txtcombined txtCombined�/  � ��� = ,5��� n  ,1��� 1  -1�,
�, 
pcnt� o  ,-�+�+ 0 	logtarget 	logTarget� m  14�� ���  s y s l o g� ��*� I 8W�)��(
�) .sysoexecTEXT���     TEXT� b  8S��� b  8M��� b  8I��� m  8;�� ���  l o g g e r   - t  � n  ;H��� 1  DH�'
�' 
strq� l ;D��&�%� b  ;D��� m  ;>�� ���  A S :  � l >C��$�#� n  >C��� 1  ?C�"
�" 
pnam�  f  >?�$  �#  �&  �%  � m  IL�� ���   � n  MR��� 1  NR�!
�! 
strq� o  MN� �  0 txtcombined txtCombined�(  �*  � l Z����� k  Z��� ��� r  Za��� n  Z_��� 1  [_�
� 
pcnt� o  Z[�� 0 	logtarget 	logTarget� o      �� 	0 fpath  � ��� Z b������ C  bg��� o  bc�� 	0 fpath  � m  cf�� ���  ~ /� r  j}��� b  j{��� m  jm�� �    $ H O M E /� n  mz 7 nz�
� 
ctxt m  tv��  m  wy���� o  mn�� 	0 fpath  � o      �� 	0 fpath  �  �  � � I ����
� .sysoexecTEXT���     TEXT b  �� b  ��	
	 b  �� b  �� m  �� �  p r i n t f   ' % s \ n '   n  �� 1  ���
� 
strq l ���� b  �� o  ����  0 prefixdatetime prefixDateTime o  ���� 0 txtcombined txtCombined�  �   m  �� � 
   > >   "
 o  ���� 	0 fpath   m  �� �  "�  �  � 6 0 assumed to be a POSIX file path to *append* to.   � � `   a s s u m e d   t o   b e   a   P O S I X   f i l e   p a t h   t o   * a p p e n d *   t o .�9 0 	logtarget 	logTarget� o  ���� 0 dlog_targets DLOG_TARGETS�:  *  l     �
�	��
  �	  �    l     ����  �  �     l     �!"�  ! u o Converts the specified object - which may be of any type - into a string representation for logging/debugging.   " �## �   C o n v e r t s   t h e   s p e c i f i e d   o b j e c t   -   w h i c h   m a y   b e   o f   a n y   t y p e   -   i n t o   a   s t r i n g   r e p r e s e n t a t i o n   f o r   l o g g i n g / d e b u g g i n g .  $%$ l     �&'�  & � � Tries hard to find a readable representation - sadly, simple conversion with `as text` mostly doesn't work with non-primitive types.   ' �((
   T r i e s   h a r d   t o   f i n d   a   r e a d a b l e   r e p r e s e n t a t i o n   -   s a d l y ,   s i m p l e   c o n v e r s i o n   w i t h   ` a s   t e x t `   m o s t l y   d o e s n ' t   w o r k   w i t h   n o n - p r i m i t i v e   t y p e s .% )*) l     �+,�  + � � An attempt is made to list the properties of non-primitive types (does not always work), and the result is prefixed with the type (class) name   , �--   A n   a t t e m p t   i s   m a d e   t o   l i s t   t h e   p r o p e r t i e s   o f   n o n - p r i m i t i v e   t y p e s   ( d o e s   n o t   a l w a y s   w o r k ) ,   a n d   t h e   r e s u l t   i s   p r e f i x e d   w i t h   t h e   t y p e   ( c l a s s )   n a m e* ./. l     �01�  0 1 + and, if present, the object's name and ID.   1 �22 V   a n d ,   i f   p r e s e n t ,   t h e   o b j e c t ' s   n a m e   a n d   I D ./ 343 l     � 56�   5   EXAMPLE   6 �77    E X A M P L E4 898 l     ��:;��  : [ U       toString(path to desktop)  # -> "[alias] Macintosh HD:Users:mklement:Desktop:"   ; �<< �               t o S t r i n g ( p a t h   t o   d e s k t o p )     #   - >   " [ a l i a s ]   M a c i n t o s h   H D : U s e r s : m k l e m e n t : D e s k t o p : "9 =>= l     ��?@��  ? V P To test this subroutine and see the various representations, use the following:   @ �AA �   T o   t e s t   t h i s   s u b r o u t i n e   a n d   s e e   t h e   v a r i o u s   r e p r e s e n t a t i o n s ,   u s e   t h e   f o l l o w i n g :> BCB l     ��DE��  D � �   repeat with elem in {42, 3.14, "two", true, (current date), {"one", "two", "three"}, {one:1, two:"deux", three:false}, missing value, me,  path to desktop, front window of application (path to frontmost application as text)}   E �FF�       r e p e a t   w i t h   e l e m   i n   { 4 2 ,   3 . 1 4 ,   " t w o " ,   t r u e ,   ( c u r r e n t   d a t e ) ,   { " o n e " ,   " t w o " ,   " t h r e e " } ,   { o n e : 1 ,   t w o : " d e u x " ,   t h r e e : f a l s e } ,   m i s s i n g   v a l u e ,   m e ,     p a t h   t o   d e s k t o p ,   f r o n t   w i n d o w   o f   a p p l i c a t i o n   ( p a t h   t o   f r o n t m o s t   a p p l i c a t i o n   a s   t e x t ) }C GHG l     ��IJ��  I . (       log my toString(contents of elem)   J �KK P               l o g   m y   t o S t r i n g ( c o n t e n t s   o f   e l e m )H LML l     ��NO��  N     end repeat   O �PP        e n d   r e p e a tM Q��Q i   d gRSR I      ��T���� 0 tostring toStringT U��U o      ���� 0 anyobj anyObj��  ��  S k    <VV WXW q      YY ��Z�� 0 i  Z ��[�� 0 txt  [ ��\�� 0 errmsg errMsg\ ��]�� 0 orgtids orgTids] ��^�� 0 oname oName^ ��_�� 
0 oid oId_ ������ 
0 prefix  ��  X `a` r     bcb m     dd �ee  c o      ���� 0 txt  a fgf Y    �h��ij��h k    �kk lml Q    ynopn Z    Zqr��sq =   tut o    ���� 0 i  u m    ���� r Z    Pvw��xv =   yzy n    {|{ m    ��
�� 
pcls| o    ���� 0 anyobj anyObjz m    ��
�� 
listw k    H}} ~~ r    8��� J    '�� ��� n   "��� 1     "��
�� 
txdl� 1     ��
�� 
ascr� ���� J   " %�� ���� m   " #�� ���  ,  ��  ��  � J      �� ��� o      ���� 0 orgtids orgTids� ���� n     ��� 1   4 6��
�� 
txdl� 1   3 4��
�� 
ascr��   ��� r   9 B��� b   9 @��� l  9 >������ c   9 >��� b   9 <��� m   9 :�� ���  {� o   : ;���� 0 anyobj anyObj� m   < =��
�� 
TEXT��  ��  � m   > ?�� ���  }� o      ���� 0 txt  � ���� l  C H���� r   C H��� o   C D���� 0 orgtids orgTids� n     ��� 1   E G��
�� 
txdl� 1   D E��
�� 
ascr�   '   � ���    '��  ��  x r   K P��� c   K N��� o   K L���� 0 anyobj anyObj� m   L M��
�� 
TEXT� o      ���� 0 txt  ��  s r   S Z��� c   S X��� n   S V��� 1   T V��
�� 
pALL� o   S T���� 0 anyobj anyObj� m   V W��
�� 
TEXT� o      ���� 0 txt  o R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg��  p k   b y�� ��� l  b b������  � 3 - Trick for records and record-*like* objects:   � ��� Z   T r i c k   f o r   r e c o r d s   a n d   r e c o r d - * l i k e *   o b j e c t s :� ��� l  b b������  � � � We exploit the fact that the error message contains the desired string representation of the record, so we extract it from there. This (still) works as of AS 2.3 (OS X 10.9).   � ���^   W e   e x p l o i t   t h e   f a c t   t h a t   t h e   e r r o r   m e s s a g e   c o n t a i n s   t h e   d e s i r e d   s t r i n g   r e p r e s e n t a t i o n   o f   t h e   r e c o r d ,   s o   w e   e x t r a c t   i t   f r o m   t h e r e .   T h i s   ( s t i l l )   w o r k s   a s   o f   A S   2 . 3   ( O S   X   1 0 . 9 ) .� ���� Q   b y����� r   e p��� I  e n�����
�� .sysoexecTEXT���     TEXT� b   e j��� m   e f�� ��� , e g r e p   - o   ' \ { . * \ } '   < < <  � n   f i��� 1   g i��
�� 
strq� o   f g���� 0 errmsg errMsg��  � o      ���� 0 txt  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  m ���� Z  z �������� >  z ��� o   z {���� 0 txt  � m   { ~�� ���  �  S   � ���  ��  ��  �� 0 i  i m    ���� j m    	���� ��  g ��� r   � ���� m   � ��� ���  � o      ���� 
0 prefix  � ��� Z   �7������� F   � ���� H   � ��� E  � ���� J   � ��� ��� m   � ���
�� 
ctxt� ��� m   � ���
�� 
long� ��� m   � ���
�� 
doub� ��� m   � ���
�� 
bool� ��� m   � ���
�� 
ldt � ��� m   � ���
�� 
list� ���� m   � ���
�� 
reco��  � n   � ���� m   � ���
�� 
pcls� o   � ����� 0 anyobj anyObj� >  � ���� o   � ����� 0 anyobj anyObj� m   � ���
�� 
msng� k   �3�� ��� r   � ���� b   � ���� m   � ��� ���  [� n   � ���� m   � ���
�� 
pcls� o   � ����� 0 anyobj anyObj� o      ���� 
0 prefix  � � � r   � � m   � � �   o      ���� 0 oname oName   r   � � m   � �		 �

   o      ���� 
0 oid oId  Q   ��� k   � �  r   � � n   � � 1   � ���
�� 
pnam o   � ����� 0 anyobj anyObj o      ���� 0 oname oName �� Z  � ����� >  � � o   � ����� 0 oname oName m   � ���
�� 
msng r   � � b   � � b   � �  b   � �!"! o   � ����� 
0 prefix  " m   � �## �$$    n a m e = "  o   � ����� 0 oname oName m   � �%% �&&  " o      ���� 
0 prefix  ��  ��  ��   R      ������
�� .ascrerr ****      � ****��  ��  ��   '(' Q  +)*��) k  "++ ,-, r  ./. n  
010 1  
��
�� 
ID  1 o  ���� 0 anyobj anyObj/ o      ���� 
0 oid oId- 2��2 Z "34����3 > 565 o  ���� 
0 oid oId6 m  ��
�� 
msng4 r  787 b  9:9 b  ;<; o  ���� 
0 prefix  < m  == �>>    i d =: o  ���� 
0 oid oId8 o      ���� 
0 prefix  ��  ��  ��  * R      ������
�� .ascrerr ****      � ****��  ��  ��  ( ?��? r  ,3@A@ b  ,1BCB o  ,-���� 
0 prefix  C m  -0DD �EE  ]  A o      ���� 
0 prefix  ��  ��  ��  � F��F L  8<GG b  8;HIH o  89���� 
0 prefix  I o  9:�� 0 txt  ��  ��       n�~JKLMNOPQRSTUVWXYZ[\]^_`abcde  � ��}�|f .5<Cg�{hijklmnopqrstu�zv�ywxyz{|}~z~���x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�~  J l�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ����������������������
�	��������� �����������������������������������������������T $0 getpagesoffilepy GetPagesOfFilePY�S 20 writexfilespdffromonepy WriteXFilesPDFfromOnePY�R 0 findtext FindText�Q 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPY�P $0 checkiminstalled CheckIMInstalled�O  0 inserttocinpdf insertToCInPDF�N H0 "generatestampimageforpiecenumberim "generateStampImageForPieceNumberIM�M T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param�L *0 checkthisisapdfpath CheckThisIsAPDFPath�K *0 checkthisisatxtpath CheckThisIsATxtPath�J .0 checkfileexistsatpath CheckFileExistsAtPath�I 40 returnfilecontentsaslist ReturnFileContentsAsList�H 60 countnameandpagesofpieces CountNameAndPagesOfPieces�G (0 detailsofbordereau DetailsOfBordereau�F "0 sumtotalofpages SumTotalOfPages�E 0 trim  �D 0 	splittext 	splitText�C 0 convertlisttostring  �B (0 deletefolderatpath deleteFolderAtPath�A (0 createfolderatpath createFolderAtPath�@ 00 prefixfilelistwithpath prefixFileListWithPath�? <0 prefixfilelistwithpathquoted prefixFileListWithPathQuoted�> "0 watermarkfilepy watermarkFilePY�= 0 remove_extension  �< 0 dlog  �; 0 tostring toString
�: .aevtoappnull  �   � ****�9 0 versionnumber versionNumber�8 0 thex theX�7 0 they theY�6 	0 debug  �5 0 verbose  �4 &0 theconvertcommand theConvertCommand�3 ,0 defaultnamebordereau defaultNameBordereau�2 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc�1 "0 finalnamepdfdoc finalNamePDFDoc�0 0 	pieceword 	pieceWord�/ "0 defaultnamelogo defaultNameLogo�. .0 defaulttempfoldername defaultTempFolderName�- 0 defaultfont defaultFont�, .0 thenumberofpagesinpdf theNumberofPagesInPDF�+ $0 thecountofpieces theCountOfPieces�* "0 theoutputfolder theOutputFolder�) 0 thefolderpath theFolderPath�( 0 thetemppath theTempPath�' &0 thequotedtemppath theQuotedTempPath�& "0 directpathtotxt directPathToTxt�% "0 quotedpathtotxt quotedPathToTxt�$ "0 directpathtopdf directPathToPDF�# "0 quotedpathtopdf quotedPathToPDF�" $0 directpathtologo directPathToLogo�! $0 quotedpathtologo quotedPathToLogo�   0 pathtofinalpdf pathToFinalPDF� $0 thebordereautext theBordereauText� 0 	textlines 	textLines� <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces� .0 theexpectedtotalpages theExpectedTotalPages� $0 thekeyvaluepairs theKeyValuePairs� 0 countofpieces countofPieces� &0 thearrayofindexes theArrayOfIndexes� .0 thegeneratedfileslist theGeneratedFilesList� 0 themanyimages theManyImages� 0 theimage  � 20 thewatermarkedfileslist theWatermarkedFilesList� 0 thefiletomark theFileToMark� *0 thepathtofiletomark thePathToFileToMark� *0 thepathtofilemarked thePathToFileMarked� 0 thestampfile theStampFile� (0 thepathtostampfile thePathToStampFile� 0 themarkedfile  � 60 theresultlogofthepyscript theResultLogOfThePyScript� 0 
showbutton  �  �  �
  �	  �  �  �  �  �  �  �  �  �   ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  K ������������� $0 getpagesoffilepy GetPagesOfFilePY�� ����� �  ���� 0 
thepdffile  ��  � �������� 0 
thepdffile  �� 0 	thescript  �� 0 	thenumber  � ������
�� .sysoexecTEXT���     TEXT�� 	0 debug  
�� .sysodlogaskr        TEXT�� '�%�%E�O�%j E�O� �%j Y hO�OPL ��@���������� 20 writexfilespdffromonepy WriteXFilesPDFfromOnePY�� ����� �  �������� 0 
thepdffile  �� "0 wheretosavepath whereToSavePath�� 0 indexeslist indexesList��  � �������������� 0 
thepdffile  �� "0 wheretosavepath whereToSavePath�� 0 indexeslist indexesList�� $0 theindexesstring theIndexesString�� 0 	thescript  �� 0 thecreatedfiles  � U[��]��f����o������������� 0 convertlisttostring  �� 	0 debug  
�� .sysodlogaskr        TEXT�� 0 verbose  
�� .ascrcmnt****      � ****
�� .sysoexecTEXT���     TEXT�� g�*��l+ %�%E�O� �%j Y hO� �%j 	Y hO�%�%�%�%�%�%E�O�%j E�O� a �%j Y hOa �%j 	O�M ������������� 0 findtext FindText�� ����� �  ������ 0 tofind toFind�� 0 intext inText��  � ������ 0 tofind toFind�� 0 intext inText�  �� ��N ������������� 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPY�� ����� �  �������� 0 thefinalfile theFinalFile�� 20 wheretofindthefilespath whereToFindTheFilesPath�� 60 thefileslistwiththeirpath theFilesListWithTheirPath��  � �������������� 0 thefinalfile theFinalFile�� 20 wheretofindthefilespath whereToFindTheFilesPath�� 60 thefileslistwiththeirpath theFilesListWithTheirPath�� H0 "thecorrectedfileslistwiththeirpath "theCorrectedFilesListWithTheirPath�� 0 	thescript  �� 
0 thedoc  � � ������(*,.9��BI���� 0 convertlisttostring  �� 	0 debug  
�� .sysodlogaskr        TEXT
�� .sysoexecTEXT���     TEXT
�� .ascrcmnt****      � ****�� Q�*��l+ %�%E�O� �%j Y hO�%�%�%�%�%E�O�%j E�O� ��%j Y hO�%j O�O ��f���������� $0 checkiminstalled CheckIMInstalled��  ��  �  � s��������
�� .sysoexecTEXT���     TEXT�� &0 theconvertcommand theConvertCommand��  ��  ��  �j E�OeW 	X  fP �������������  0 inserttocinpdf insertToCInPDF��  ��  �  �  �� hQ ������������� H0 "generatestampimageforpiecenumberim "generateStampImageForPieceNumberIM�� ����� �  ������������ 0 convertcommand  �� <0 theoriginalimagepathaandname theOriginalImagePathaAndName�� 0 	thenumber  �� 00 theresultingimagespath theResultingImagesPath�� 0 thenameoffile theNameOfFile��  � 
������������������� 0 convertcommand  �� <0 theoriginalimagepathaandname theOriginalImagePathaAndName�� 0 	thenumber  �� 00 theresultingimagespath theResultingImagesPath�� 0 thenameoffile theNameOfFile�� *0 pathtooriginalimage pathToOriginalImage��  0 pathtonewimage PathToNewImage� "0 piecenumbertext pieceNumberText� 0 newimagename  �  0 theimagescript theImageScript� 
���������
� 
strq
� .sysoexecTEXT���     TEXT�  �  �� D��,E�O��,E�O�%E�O��%�%E�O��%�%�%�%�%�%�%E�O �j O�W 	X  �OPR �0������ T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param� ��� �  ����� 0 convertcommand  � <0 theoriginalimagepathaandname theOriginalImagePathaAndName� 0 	thenumber  � 00 theresultingimagespath theResultingImagesPath�  � 	��~�}�|�{�z�y�x�w� 0 convertcommand  �~ <0 theoriginalimagepathaandname theOriginalImagePathaAndName�} 0 	thenumber  �| 00 theresultingimagespath theResultingImagesPath�{ "0 piecenumbertext pieceNumberText�z *0 pathtooriginalimage pathToOriginalImage�y 0 	imagename 	imageName�x  0 pathtonewimage PathToNewImage�w  0 theimagescript theImageScript� P�vceu�u��t���s�����r�q�p�
�v 
strq�u 	0 debug  
�t .sysodlogaskr        TEXT�s 0 defaultfont defaultFont
�r .sysoexecTEXT���     TEXT�q  �p  � r�%E�O��,E�O�%�%E�O��%�%E�O��,E�O� �%j Y hO��%�%�%�%�%�%�%�%E�O� ��%�%j Y hO �j O�W X  a OPS �o��n�m���l�o *0 checkthisisapdfpath CheckThisIsAPDFPath�n �k��k �  �j�j 0 thefile  �m  � �i�i 0 thefile  � �h��g�f�e�d
�h 
psof
�g 
psin�f 
�e .sysooffslong    ��� null
�d 
leng�l *���� ��,m T �c	�b�a���`�c *0 checkthisisatxtpath CheckThisIsATxtPath�b �_��_ �  �^�^ 0 thefile  �a  � �]�] 0 thefile  � �\	�[�Z�Y�X
�\ 
psof
�[ 
psin�Z 
�Y .sysooffslong    ��� null
�X 
leng�` *���� ��,m U �W	0�V�U���T�W .0 checkfileexistsatpath CheckFileExistsAtPath�V �S��S �  �R�R 0 thefile  �U  � �Q�Q 0 thefile  � �P�O�N�M
�P 
psxf
�O 
alis�N  �M  �T  *�/�&OeW 	X  fV �L	^�K�J���I�L 40 returnfilecontentsaslist ReturnFileContentsAsList�K �H��H �  �G�G 0 thefile  �J  � �F�E�D�F 0 thefile  �E 0 
filehandle 
fileHandle�D 0 thelines theLines� �C�B�A�@�?�>
�C .rdwropenshor       file
�B 
as  
�A 
utf8
�@ .rdwrread****        ****
�? 
cpar
�> .rdwrclosnull���     ****�I �j  E�O���l �-E�O�j O�W �=	��<�;���:�= 60 countnameandpagesofpieces CountNameAndPagesOfPieces�< �9��9 �  �8�8 0 thelist theList�;  � �7�6�5�4�3�2�1�0�/�.�-�,�7 0 thelist theList�6 0 thepieceslist thePiecesList�5 0 thepageindex thePageIndex�4 0 i  �3 0 theline theLine�2 &0 piecewordposition pieceWordPosition�1 0 
semicolumn 
semiColumn�0 0 firstbracket firstBracket�/ 0 lastbracket lastBracket�. 0 	thenumber  �- 0 thepages thePages�, 0 thename theName� '�+�*�)�(�'�&	��%	��$�#�"�!� �	�	�
�
$��
7���
Y
^
`
g��
�
�
�
�
�
�
�
�+ 
kocl
�* 
cobj
�) .corecnte****       ****�( 0 	pieceword 	pieceWord�' 0 findtext FindText�& 	0 debug  
�% .sysodlogaskr        TEXT
�$ .ascrcmnt****      � ****
�# 
psof
�" 
psin�! 
�  .sysooffslong    ��� null
� 
leng
� 
ctxt� 0 trim  � 0 verbose  � 0 dlog  
� 
long� $0 thecountofpieces theCountOfPieces
� 
errn����:�jvE�OjE�OjE�O��[��l kh *äl+ i�kE�O�kE�O� �%j Y hO�%j 	O*���� ��,E�O*���� E�O*�a �� E�O*�a �� E�O*�[a \[Z�k\Z�k2a l+ E�O_  *�a %�%k+ Y hO�a &k �a &k   
�E` Y .a �k%a %�%a %j Oa �k%j 	O)a a lhO*�[a \[Z�k\Z�k2a  l+ E�O*�[a \[Z�k\Z�k2a !l+ E�O� �a "%�%a #%�%j Y hO������vkv%E�Oa $�%j 	O��k kE�O� a %�%j Y hOa &�%j 	Y h[OY��O�X ������� (0 detailsofbordereau DetailsOfBordereau� ��� �  �� 0 thelist theList�  � ������� 0 thelist theList�  0 thedetailslist theDetailsList� 0 theline theLine� 0 
semicolumn 
semiColumn� 0 thekey theKey� 0 thevalue theValue� �
�	����8����J� ��^��k����wy��
�
 
kocl
�	 
cobj
� .corecnte****       ****� 0 	pieceword 	pieceWord� 0 findtext FindText
� 
psof
� 
psin� 
� .sysooffslong    ��� null
� 
ctxt�  0 trim  
�� 
leng�� 	0 debug  
�� .sysodlogaskr        TEXT�� 0 verbose  �� 0 thekey theKey� �jvE�O ��[��l kh *âl+  hY p*���� 	E�O*�[�\[Zk\Z�k2�l+ E�O*�[�\[Z�k\Z��,2�l+ E�O� �a %�%j Y hO_  a �%a %�%Y hO�a �l%E�[OY�~O�Y ������������� "0 sumtotalofpages SumTotalOfPages�� ����� �  ���� @0 anarrayofarrayofnumberandpages anArrayofArrayOfNumberAndPages��  � ������������ @0 anarrayofarrayofnumberandpages anArrayofArrayOfNumberAndPages�� 0 thetotal theTotal�� 0 thearray theArray��  0 thepiecenumber thePieceNumber�� 0 thepagecount thePageCount� ��������������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
long�� 	0 debug  
�� .sysodlogaskr        TEXT
�� .ascrcmnt****      � ****�� \jE�O Q�[��l kh ��k/E�Ok��l/�& E�O� �%�%�%�%j Y hO�%�%�%�%j O��k E�[OY��O�OPZ ������������ 0 trim  �� ����� �  ������ 0 sometext someText�� "0 thesecharacters theseCharacters��  � ������ 0 sometext someText�� "0 thesecharacters theseCharacters� 
��������$��������
�� 
tab �� 

�� .sysontocTEXT       shor
�� 
ret �� 
�� 
cha 
�� 
ctxt������ ^�e  ���j ��jj �vE�Y hO h���k/�[�\[Zl\Zi2E�[OY��O h���i/�[�\[Zk\Z�2E�[OY��O�[ ��j���������� 0 	splittext 	splitText�� ����� �  ������ 0 thetext theText�� 0 thedelimiter theDelimiter��  � �������� 0 thetext theText�� 0 thedelimiter theDelimiter�� 0 thetextitems theTextItems� �������
�� 
ascr
�� 
txdl
�� 
citm�� ���,FO��-E�O���,FO�\ ������������� 0 convertlisttostring  �� ����� �  ������ 0 thelist theList�� 0 thedelimiter theDelimiter��  � �������� 0 thelist theList�� 0 thedelimiter theDelimiter�� 0 	thestring 	theString� �����
�� 
ascr
� 
txdl
� 
TEXT�� ���,FO��&E�O���,FO�] �������� (0 deletefolderatpath deleteFolderAtPath� ��� �  ��� 0 thepath  � 0 
foldername  �  � ����� 0 thepath  � 0 
foldername  � 0 
deletefile 
deleteFile� 	0 newfo  � ��������
� 
psxf
� 
ctxt
� .coredelonull���     obj �  �  
� .ascrcmnt****      � ****� . � *ᠡ%/�&E�O�j UO�W X  �j O��%^ � ������ (0 createfolderatpath createFolderAtPath� ��� �  ��� 0 thepath  � 0 
foldername  �  � ���� 0 thepath  � 0 
foldername  � 	0 newfo  � ?�����������
� 
kocl
� 
cfol
� 
insh
� 
psxf
� 
prdt
� 
pnam� 
� .corecrel****      � null
� 
psxp�  �  � - "� *���*�/��l� �,E�UO�W X 
 ��%_ �^������ 00 prefixfilelistwithpath prefixFileListWithPath� ��� �  ��� 0 thepath  � 0 filelist  �  � ����� 0 thepath  � 0 filelist  � 0 filelistwithpath  � 0 thefile  � ���
� 
kocl
� 
cobj
� .corecnte****       ****� )jvE�O �[��l kh ���%kv%E�OP[OY��O�` �������� <0 prefixfilelistwithpathquoted prefixFileListWithPathQuoted� ��� �  ��� 0 thepath  � 0 filelist  �  � ����� 0 thepath  � 0 filelist  � 0 filelistwithpath  � 0 thefile  � �~�}�|�{
�~ 
kocl
�} 
cobj
�| .corecnte****       ****
�{ 
strq� +jvE�O !�[��l kh ���%�,kv%E�OP[OY��O�a �z��y�x���w�z "0 watermarkfilepy watermarkFilePY�y �v��v �  �u�t�s�u  0 thefiletostamp theFileToStamp�t 0 
thenewfile 
theNewFile�s 0 thestampfile theStampFile�x  � �r�q�p�o�n�m�l�k�r  0 thefiletostamp theFileToStamp�q 0 
thenewfile 
theNewFile�p 0 thestampfile theStampFile�o 0 theangle  �n 0 thesize  �m 0 
theopacity 
theOpacity�l 0 	thescript  �k 0 
stampedpdf  � ���')+-�j/�i1357B�h�gK�fR�e�j 0 thex theX�i 0 they theY
�h .sysoexecTEXT���     TEXT�g 	0 debug  
�f .sysodlogaskr        TEXT
�e .ascrcmnt****      � ****�w [�E�O�E�O�E�O�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%E�O�%j E�O_  a �%j Y hOa �%j O�b �dm�c�b���a�d 0 remove_extension  �c �`��` �  �_�_ 0 	this_name  �b  � �^�]�^ 0 	this_name  �] 0 x  � 
w�\�[�Z�Y��X�W�V�U
�\ 
cha 
�[ 
rvse
�Z 
TEXT
�Y 
psof
�X 
psin�W 
�V .sysooffslong    ��� null
�U 
ctxt�a =�� 4��-�,�&E�O*���� E�O�[�\[Z�k\Zi2E�O��-�,�&E�Y hO�c �T,�S�R���Q�T 0 dlog  �S �P��P �  �O�O .0 anyobjorlistofobjects anyObjOrListOfObjects�R  � �N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�N .0 anyobjorlistofobjects anyObjOrListOfObjects�M 0 lst  �L 0 i  �K 0 txt  �J 0 errmsg errMsg�I 0 orgtids orgTids�H 0 oname oName�G 
0 oid oId�F 
0 prefix  �E 0 	logtarget 	logTarget�D 0 txtcombined txtCombined�C 0 
prefixtime 
prefixTime�B  0 prefixdatetime prefixDateTime�A 0 anyobj anyObj�@ 	0 fpath  � >�?�>�=�<�;�:�9�8�7j�6�5���4��3�2��1�0���/�.�-�,�+�*�)�(�'-/�&GOj��%�$���#��"��!�� �������? 0 dlog_targets DLOG_TARGETS
�> 
leng�=  �<  
�; 
pcls
�: 
list
�9 
kocl
�8 
cobj
�7 .corecnte****       ****
�6 
ascr
�5 
txdl
�4 
TEXT
�3 
pALL�2 0 errmsg errMsg
�1 
strq
�0 .sysoexecTEXT���     TEXT
�/ 
ctxt
�. 
long
�- 
doub
�, 
bool
�+ 
ldt 
�* 
reco�) 
�( 
msng
�' 
pnam
�& 
ID  
�% .misccurdldt    ��� null
�$ 
tstr
�# 
shdt
�" 
pcnt
�! .ascrcmnt****      � ****
�  .sysodisAaleR        TEXT�Q� ��,j  hY hW 	X  hO��,� 
�kvE�Y hOjvE�O]�[��l kh �E�O �klkh  P�k  >��,�  .��,�kvlvE[�k/E�Z[�l/��,FZO��%�&�%E�O���,FY ��&E�Y �a ,�&E�W "X   a �a ,%j E�W X  hO�a  Y h[OY�{Oa E�Oa a a a a �a a v��,	 �a a & �a ��,%E�Oa  E�Oa !E�O &�a ",E�O�a  �a #%�%a $%E�Y hW X  hO "�a %,E�O�a  �a &%�%E�Y hW X  hO�a '%E�O��%E�Y hO��%E�[OY��O��,a (kvlvE[�k/E�Z[�l/��,FZO��&E�Oa )*j *a +,%a ,%E�Oa -*j *a .,%a /%�[a \[Zl\Zi2%E�O���,FO ��[��l kh 	�a 0,a 1  ��%j 2Y ��a 0,a 3  ��%j 4Y q�a 0,a 5  $a 6a 7)a ",%a ,%a 8%�a ,%j Y C�a 0,E�O�a 9 a :�[a \[Zm\Zi2%E�Y hOa ;��%a ,%a <%�%a =%j [OY�_d �S������ 0 tostring toString� ��� �  �� 0 anyobj anyObj�  � ��������� 0 anyobj anyObj� 0 i  � 0 txt  � 0 errmsg errMsg� 0 orgtids orgTids� 0 oname oName� 
0 oid oId� 
0 prefix  � $d�����������
�	������������ �����	��#%��=D
� 
pcls
� 
list
� 
ascr
� 
txdl
� 
cobj
� 
TEXT
� 
pALL�
 0 errmsg errMsg�	  
� 
strq
� .sysoexecTEXT���     TEXT�  
� 
ctxt
� 
long
� 
doub
� 
bool
� 
ldt 
�  
reco�� 
�� 
msng
�� 
pnam
�� 
ID  �=�E�O �klkh  N�k  >��,�  .��,�kvlvE[�k/E�Z[�l/��,FZO�%�&�%E�O���,FY ��&E�Y 	��,�&E�W X   ���,%j E�W X  hO�a  Y h[OY��Oa E�Oa a a a a �a a v��,	 �a a & za ��,%E�Oa E�Oa E�O &�a ,E�O�a  �a %�%a  %E�Y hW X  hO "�a !,E�O�a  �a "%�%E�Y hW X  hO�a #%E�Y hO��%e �����������
�� .aevtoappnull  �   � ****� k    ���  ��  ���  ���  ���  ���  ���  ���  ��� �� �� �� )�� 0�� 7�� >�� E�� J�� Q�� u�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �� �� )�� 1�� >�� K�� _�� r�� ��� ��� ��� ��� ��� ��� ��� ���      ! + @ G Q W t		 �

 � � � � � 	  ! 4 V [ � � - = V b l w � � �   �����  ��  ��  � ������ 
0 apiece  �� 0 i  � � �� ��� ��������� ��� ��������� ��.��5��<��C������gikmo}�����������������������������������������������%����GY[gkn�������������������������������'���O��cemor�������������������>�oq�����������
��5;�EIL`�h�������������������� 0 versionnumber versionNumber�� 0 thex theX�� 0 they theY�� 	0 debug  �� 0 verbose  �� $0 checkiminstalled CheckIMInstalled
�� .sysodlogaskr        TEXT�� 0 dlog  �� &0 theconvertcommand theConvertCommand�� ,0 defaultnamebordereau defaultNameBordereau�� 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc�� "0 finalnamepdfdoc finalNamePDFDoc�� 0 	pieceword 	pieceWord�� "0 defaultnamelogo defaultNameLogo�� .0 defaulttempfoldername defaultTempFolderName�� 0 defaultfont defaultFont�� .0 thenumberofpagesinpdf theNumberofPagesInPDF�� $0 thecountofpieces theCountOfPieces
�� 
appr
�� 
nsou�� 
�� .sysonotfnull��� ��� TEXT
�� 
prmp
�� 
dflc
�� afdmdesk
�� .earsffdralis        afdr
�� .sysostflalis    ��� null�� "0 theoutputfolder theOutputFolder
�� 
psxp�� 0 thefolderpath theFolderPath�� 0 thetemppath theTempPath
�� 
strq�� &0 thequotedtemppath theQuotedTempPath�� .0 checkfileexistsatpath CheckFileExistsAtPath�� (0 createfolderatpath createFolderAtPath�� "0 directpathtotxt directPathToTxt�� "0 quotedpathtotxt quotedPathToTxt�� "0 directpathtopdf directPathToPDF�� "0 quotedpathtopdf quotedPathToPDF�� $0 directpathtologo directPathToLogo�� $0 quotedpathtologo quotedPathToLogo��  0 pathtofinalpdf pathToFinalPDF
�� .ascrcmnt****      � ****�� *0 checkthisisapdfpath CheckThisIsAPDFPath
�� 
as  
�� 
utf8
�� .rdwrread****        ****�� $0 thebordereautext theBordereauText�� 40 returnfilecontentsaslist ReturnFileContentsAsList�� 0 	textlines 	textLines�� 60 countnameandpagesofpieces CountNameAndPagesOfPieces�� <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces�� "0 sumtotalofpages SumTotalOfPages� .0 theexpectedtotalpages theExpectedTotalPages� (0 detailsofbordereau DetailsOfBordereau� $0 thekeyvaluepairs theKeyValuePairs� $0 getpagesoffilepy GetPagesOfFilePY
� .corecnte****       ****� 0 countofpieces countofPieces� &0 thearrayofindexes theArrayOfIndexes
� 
kocl
� 
cobj� 20 writexfilespdffromonepy WriteXFilesPDFfromOnePY
� 
spac� 0 trim  � 0 	splittext 	splitText� .0 thegeneratedfileslist theGeneratedFilesList� 0 themanyimages theManyImages� T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param� 0 theimage  � 20 thewatermarkedfileslist theWatermarkedFilesList� 0 thefiletomark theFileToMark� *0 thepathtofiletomark thePathToFileToMark� *0 thepathtofilemarked thePathToFileMarked� 0 thestampfile theStampFile� (0 thepathtostampfile thePathToStampFile� "0 watermarkfilepy watermarkFilePY� 0 themarkedfile  � 0 convertlisttostring  
� 
TEXT� 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPY� 60 theresultlogofthepyscript theResultLogOfThePyScript� (0 deletefolderatpath deleteFolderAtPath
� .miscactvnull��� ��� null
� 
btns
� 
dflt
� 
bhit� 0 
showbutton  
� 
psxf
� 
alis
� .aevtodocnull  �    alis����E�O�E�O�E�OfE�OeE�O*j+  hY �j 
O*�k+ OhO� 
�j 
Y hO*��%k+ O�E` Oa E` Oa E` Oa E` Oa E` Oa E` Oa E` OjE` OjE` Oa �%a  %_ %a !%_ %a "%_ %a #%_ %j 
O� a $a %a &a 'a (a ) *Y hO*a +a ,_ %a -%a .a /j 0a ) 1E` 2O_ 2a 3,E` 4O_ 4_ %E` 5O_ 5a 6,E` 7O� *_ 5k+ 8j 
Y hO� *a 9*_ 5k+ 8%k+ Y hO*_ 5k+ 8 *_ 4_ l+ :E` 5Y hO_ 4_ %E` ;O_ 4_ %a 6,E` <O� *a =_ ;%k+ Y hO_ 4_ %E` >O_ 4_ %a 6,E` ?O� *a @_ >%k+ Y hO_ 4_ %E` AO_ 4_ %a 6,E` BO� *a C_ %k+ Y hO� _ ;a D%_ >%a E%_ %j 
Y hO� a Fa %a Ga 'a Ha ) *Y hO_ 4_ %E` IO*_ ;k+ 8 hY a J_ %j 
Oa K_ %j LOhO*_ >k+ 8 hY a M_ %j 
OhO*_ >k+ N hY a Oj 
OhO*_ Ak+ 8 hY a P_ %j 
OhO_ ;a Qa Rl SE` TO� _ Tj 
Y hO� a U_ T%j LY hO*_ ;k+ VE` WO*_ Wk+ XE` YO*_ Yk+ ZE` [O� a \_ [%j 
Y hOa ]_ [%j LO*_ Wk+ ^E` _O*_ >k+ `E` O� _ a a%j 
Y hO_ Yj bE` cO� *a d_ %a e%a %a f_ c%a g%a 'a ha ) *Y hO� *a i_ %a j%a %a k_ c%a l%a 'a ma ) *Y hOa n_ %j LO_ k _ [k  'a o_ %a p%_ [%a q%j 
Oa rj LOhY hO� a sj 
Y hOa tj LOjvE` uO ,_ Y[a va wl bkh  _ u�a wm/k k%E` u[OY��O_ u[a w\[Zl\Zi2E` uO_ [_ u6GO***_ >_ 5_ um+ x_ yl+ z_ yl+ {E` |O� a }_ |%j LY hOjvE` ~O ak_ |j bkh � a �%a �%_ |a w�/%j 
Y hO*�_ A�_ 5a )+ �E` �O� _ �j 
Y hO_ �_ ~6GOP[OY��OjvE` �O �k_ |j bkh _ |a w�/E` �O_ 5a �%_ �%E` �O_ 5a �%_ �%E` �O_ ~a w�/E` �O_ 5a �%_ �%E` �O� a ��%a �%_ �%a �%_ �%j 
Y hO*_ �_ �_ �m+ �E` �O_ �E` �O_ �_ �6GOP[OY�iO� a �*_ �a �l+ �%j 
Y hO� a �a %a �a 'a �a ) *Y hO� a �_ �%a �&j 
Y hOa �_ �%j LO*_ I_ 5_ �m+ �E` �O� a �a %a �a 'a �a ) *Y hO*_ 4_ l+ �O*j �Oa �a �a �a �lva �la ) 
a �,E` �O_ �a � a � *a �_ I/a �&j �UY h
�} boovfals
�| boovtruef �!! , / u s r / l o c a l / b i n / c o n v e r tg �""  5 2�{ h|alis    x  	MacOSSlim                      BD ����Dossier TEST                                                   ����            ����  J cu            K/:Users:barthex:Dropbox:Dev:AppleScript:bourdereau:trackeddev:Dossier TEST/     D o s s i e r   T E S T   	 M a c O S S l i m  HUsers/barthex/Dropbox/Dev/AppleScript/bourdereau/trackeddev/Dossier TEST  /    ��  i �## � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T /j �$$ � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m pk �%% � ' / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p 'l �&& � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / B o r d e r e a u . t x tm �'' � ' / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / B o r d e r e a u . t x t 'n �(( � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / P i � c e s . p d fo �)) � ' / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / P i � c e s . p d f 'p �** � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t a m p o n . p n gq �++ � ' / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t a m p o n . p n g 'r �,, � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / F i n a l P i e c e s . p d fs �--@ a v o c a t   :   B e l a v o   K a h a - L a c o u r r e  b a r r e a u   :   B a r r e a u   d e   P a r i s  a f f a i r e   :   C h e f   /   M a j o r   r e c o r d   c o m p a n y  i n s t a n c e :   T r i b u n a l   d e   G r a n d e   I n s t a n c e   d e   S o u t h   P a r k  P i � c e   1   :   P a r t i t i o n   S t i n k y   B r i t c h e s   [ 2 ] 
 P i � c e   2   :   M e n u   d u   2 1   s e p t e m b r e   1 9 9 2   [ 1 ] 
 P i � c e   3   :   A c t e s   d ' h u i s s i e r s   c o n s t a t a n t   d i f f u s i o n   d e   S t i n k y   B r i t c h e s   s u r   s t a t i o n   R P V A   [ 4 1 ] 
 P i � c e   4   :   T e s t a m e n t   d ' u n   c o p a i n   i n c l u s   i c i   p a r   e r r e u r   [ 4 ] 
 P i � c e   5   :   N u d e   p i c s   o f   A l a n i s   M o r i s s e t t e   ( n o n ,   j e   r i g o l e )   [ 1 ] 
 P i � c e   6   :   A c t e   d e   n a i s s a n c e   d e   C h e w b a c c a   E n d o r i a n   [ 1 ] 
 P i � c e   7   :   A c t e   d e   n a i s s a n c e   d e   C h e w b a c c a   E n d o r i a n   [ 2 ]t �.� .  /0123456789�����/ �:: : a v o c a t   :   B e l a v o   K a h a - L a c o u r r e0 �;; 4 b a r r e a u   :   B a r r e a u   d e   P a r i s1 �<< J a f f a i r e   :   C h e f   /   M a j o r   r e c o r d   c o m p a n y2 �== f i n s t a n c e :   T r i b u n a l   d e   G r a n d e   I n s t a n c e   d e   S o u t h   P a r k3 �>> N P i � c e   1   :   P a r t i t i o n   S t i n k y   B r i t c h e s   [ 2 ]4 �?? N P i � c e   2   :   M e n u   d u   2 1   s e p t e m b r e   1 9 9 2   [ 1 ]5 �@@ � P i � c e   3   :   A c t e s   d ' h u i s s i e r s   c o n s t a t a n t   d i f f u s i o n   d e   S t i n k y   B r i t c h e s   s u r   s t a t i o n   R P V A   [ 4 1 ]6 �AA r P i � c e   4   :   T e s t a m e n t   d ' u n   c o p a i n   i n c l u s   i c i   p a r   e r r e u r   [ 4 ]7 �BB z P i � c e   5   :   N u d e   p i c s   o f   A l a n i s   M o r i s s e t t e   ( n o n ,   j e   r i g o l e )   [ 1 ]8 �CC j P i � c e   6   :   A c t e   d e   n a i s s a n c e   d e   C h e w b a c c a   E n d o r i a n   [ 1 ]9 �DD j P i � c e   7   :   A c t e   d e   n a i s s a n c e   d e   C h e w b a c c a   E n d o r i a n   [ 2 ]�  �  �  �  �  u �E� E  FGHIJKLF �M� M  NO�PN �QQ  1O �RR  2� P �SS 2 P a r t i t i o n   S t i n k y   B r i t c h e sG �T� T  UV�WU �XX  2V �YY  1� W �ZZ 2 M e n u   d u   2 1   s e p t e m b r e   1 9 9 2H �[� [  \]�^\ �__  3] �``  4 1� ^ �aa � A c t e s   d ' h u i s s i e r s   c o n s t a t a n t   d i f f u s i o n   d e   S t i n k y   B r i t c h e s   s u r   s t a t i o n   R P V AI �b� b  cd�ec �ff  4d �gg  4� -e �hh V T e s t a m e n t   d ' u n   c o p a i n   i n c l u s   i c i   p a r   e r r e u rJ �i� i  jk�lj �mm  5k �nn  1� 1l �oo ^ N u d e   p i c s   o f   A l a n i s   M o r i s s e t t e   ( n o n ,   j e   r i g o l e )K �p� p  qr�sq �tt  6r �uu  1� 2s �vv N A c t e   d e   n a i s s a n c e   d e   C h e w b a c c a   E n d o r i a nL �w� w  xy�zx �{{  7y �||  2� 3z �}} N A c t e   d e   n a i s s a n c e   d e   C h e w b a c c a   E n d o r i a n�z 4v �~�� 0 thekey theKey~ � ( B e l a v o   K a h a - L a c o u r r e�  �y w ��� �  ����~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l� � � ,�~ 0�} 1�| 2�{ 4�z  �y  �x  �w  �v  �u  �t  �s  �r  �q  �p  �o  �n  �m  �l  x �k��k �  ������|�j�i�h�g�f�e�d�c�b� ��� ( P i � c e s . p a r t 1 . 1 _ 2 . p d f� ��� ( P i � c e s . p a r t 2 . 3 _ 3 . p d f� ��� * P i � c e s . p a r t 3 . 4 _ 4 4 . p d f� ��� , P i � c e s . p a r t 4 . 4 5 _ 4 8 . p d f� ��� , P i � c e s . p a r t 5 . 4 9 _ 4 9 . p d f� ��� , P i � c e s . p a r t 6 . 5 0 _ 5 0 . p d f| ��� , P i � c e s . p a r t 7 . 5 1 _ 5 2 . p d f�j  �i  �h  �g  �f  �e  �d  �c  �b  y �a��a �  ������z�`�_�^�]�\�[�Z�Y�X� ���  p i e c e _ n _ 1 . p n g� ���  p i e c e _ n _ 2 . p n g� ���  p i e c e _ n _ 3 . p n g� ���  p i e c e _ n _ 4 . p n g� ���  p i e c e _ n _ 5 . p n g� ���  p i e c e _ n _ 6 . p n gz ���  p i e c e _ n _ 7 . p n g�`  �_  �^  �]  �\  �[  �Z  �Y  �X  { �W��W �  ������~�V�U�T�S�R�Q�P�O�N� ��� � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 1 . 1 _ 2 . p d f� ��� � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 2 . 3 _ 3 . p d f� ��� � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 3 . 4 _ 4 4 . p d f� ��� � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 4 . 4 5 _ 4 8 . p d f� ��� � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 5 . 4 9 _ 4 9 . p d f� ��� � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 6 . 5 0 _ 5 0 . p d f~ ��� � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 7 . 5 1 _ 5 2 . p d f�V  �U  �T  �S  �R  �Q  �P  �O  �N  } ��� � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / P i � c e s . p a r t 7 . 5 1 _ 5 2 . p d f ��� � / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / p i e c e _ n _ 7 . p n g� ���J. C r e a t i n g   P D F   d o c u m e n t   f r o m   f i l e   / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 1 . 1 _ 2 . p d f  C r e a t i n g   P D F   d o c u m e n t   f r o m   f i l e   / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 2 . 3 _ 3 . p d f  C r e a t i n g   P D F   d o c u m e n t   f r o m   f i l e   / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 3 . 4 _ 4 4 . p d f  C r e a t i n g   P D F   d o c u m e n t   f r o m   f i l e   / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 4 . 4 5 _ 4 8 . p d f  C r e a t i n g   P D F   d o c u m e n t   f r o m   f i l e   / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 5 . 4 9 _ 4 9 . p d f  C r e a t i n g   P D F   d o c u m e n t   f r o m   f i l e   / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 6 . 5 0 _ 5 0 . p d f  C r e a t i n g   P D F   d o c u m e n t   f r o m   f i l e   / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / t e m p / M a r k e d _ P i � c e s . p a r t 7 . 5 1 _ 5 2 . p d f  [ < C G P D F D o c u m e n t   0 x 7 f e 3 9 c 6 9 0 5 6 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] > ,   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 9 b 5 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] > ,   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] > ,   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 5 9 7 0 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] > ,   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 5 c 7 1 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] > ,   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 5 e 7 8 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] > ,   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 6 0 8 a 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] > ]  m a x P a g e s   0  m a x P a g e s   2  C o p i e d   p a g e   1   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 c 6 9 0 5 6 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1  C o p i e d   p a g e   2   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 c 6 9 0 5 6 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2  W r i t t e n   p a g e   3  W r i t t e n   p a g e   4  W r i t t e n   p a g e   5  W r i t t e n   p a g e   6  W r i t t e n   p a g e   7  W r i t t e n   p a g e   8  W r i t t e n   p a g e   9  W r i t t e n   p a g e   1 0  W r i t t e n   p a g e   1 1  W r i t t e n   p a g e   1 2  W r i t t e n   p a g e   1 3  W r i t t e n   p a g e   1 4  W r i t t e n   p a g e   1 5  W r i t t e n   p a g e   1 6  W r i t t e n   p a g e   1 7  W r i t t e n   p a g e   1 8  W r i t t e n   p a g e   1 9  W r i t t e n   p a g e   2 0  W r i t t e n   p a g e   2 1  W r i t t e n   p a g e   2 2  W r i t t e n   p a g e   2 3  W r i t t e n   p a g e   2 4  W r i t t e n   p a g e   2 5  W r i t t e n   p a g e   2 6  W r i t t e n   p a g e   2 7  W r i t t e n   p a g e   2 8  W r i t t e n   p a g e   2 9  W r i t t e n   p a g e   3 0  W r i t t e n   p a g e   3 1  W r i t t e n   p a g e   3 2  W r i t t e n   p a g e   3 3  W r i t t e n   p a g e   3 4  W r i t t e n   p a g e   3 5  W r i t t e n   p a g e   3 6  W r i t t e n   p a g e   3 7  W r i t t e n   p a g e   3 8  W r i t t e n   p a g e   3 9  W r i t t e n   p a g e   4 0  W r i t t e n   p a g e   4 1  C o p i e d   p a g e   1   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 9 b 5 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1  W r i t t e n   p a g e   2  W r i t t e n   p a g e   3  W r i t t e n   p a g e   4  W r i t t e n   p a g e   5  W r i t t e n   p a g e   6  W r i t t e n   p a g e   7  W r i t t e n   p a g e   8  W r i t t e n   p a g e   9  W r i t t e n   p a g e   1 0  W r i t t e n   p a g e   1 1  W r i t t e n   p a g e   1 2  W r i t t e n   p a g e   1 3  W r i t t e n   p a g e   1 4  W r i t t e n   p a g e   1 5  W r i t t e n   p a g e   1 6  W r i t t e n   p a g e   1 7  W r i t t e n   p a g e   1 8  W r i t t e n   p a g e   1 9  W r i t t e n   p a g e   2 0  W r i t t e n   p a g e   2 1  W r i t t e n   p a g e   2 2  W r i t t e n   p a g e   2 3  W r i t t e n   p a g e   2 4  W r i t t e n   p a g e   2 5  W r i t t e n   p a g e   2 6  W r i t t e n   p a g e   2 7  W r i t t e n   p a g e   2 8  W r i t t e n   p a g e   2 9  W r i t t e n   p a g e   3 0  W r i t t e n   p a g e   3 1  W r i t t e n   p a g e   3 2  W r i t t e n   p a g e   3 3  W r i t t e n   p a g e   3 4  W r i t t e n   p a g e   3 5  W r i t t e n   p a g e   3 6  W r i t t e n   p a g e   3 7  W r i t t e n   p a g e   3 8  W r i t t e n   p a g e   3 9  W r i t t e n   p a g e   4 0  W r i t t e n   p a g e   4 1  C o p i e d   p a g e   1   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1  C o p i e d   p a g e   2   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2  C o p i e d   p a g e   3   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   3  C o p i e d   p a g e   4   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   4  C o p i e d   p a g e   5   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   5  C o p i e d   p a g e   6   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   6  C o p i e d   p a g e   7   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   7  C o p i e d   p a g e   8   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   8  C o p i e d   p a g e   9   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   9  C o p i e d   p a g e   1 0   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1 0  C o p i e d   p a g e   1 1   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1 1  C o p i e d   p a g e   1 2   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1 2  C o p i e d   p a g e   1 3   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1 3  C o p i e d   p a g e   1 4   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1 4  C o p i e d   p a g e   1 5   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1 5  C o p i e d   p a g e   1 6   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1 6  C o p i e d   p a g e   1 7   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1 7  C o p i e d   p a g e   1 8   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1 8  C o p i e d   p a g e   1 9   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1 9  C o p i e d   p a g e   2 0   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2 0  C o p i e d   p a g e   2 1   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2 1  C o p i e d   p a g e   2 2   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2 2  C o p i e d   p a g e   2 3   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2 3  C o p i e d   p a g e   2 4   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2 4  C o p i e d   p a g e   2 5   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2 5  C o p i e d   p a g e   2 6   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2 6  C o p i e d   p a g e   2 7   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2 7  C o p i e d   p a g e   2 8   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2 8  C o p i e d   p a g e   2 9   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2 9  C o p i e d   p a g e   3 0   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   3 0  C o p i e d   p a g e   3 1   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   3 1  C o p i e d   p a g e   3 2   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   3 2  C o p i e d   p a g e   3 3   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   3 3  C o p i e d   p a g e   3 4   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   3 4  C o p i e d   p a g e   3 5   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   3 5  C o p i e d   p a g e   3 6   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   3 6  C o p i e d   p a g e   3 7   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   3 7  C o p i e d   p a g e   3 8   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   3 8  C o p i e d   p a g e   3 9   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   3 9  C o p i e d   p a g e   4 0   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   4 0  C o p i e d   p a g e   4 1   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 4 b 9 d 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   4 1  C o p i e d   p a g e   1   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 5 9 7 0 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1  C o p i e d   p a g e   2   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 5 9 7 0 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2  C o p i e d   p a g e   3   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 5 9 7 0 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   3  C o p i e d   p a g e   4   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 5 9 7 0 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   4  W r i t t e n   p a g e   5  W r i t t e n   p a g e   6  W r i t t e n   p a g e   7  W r i t t e n   p a g e   8  W r i t t e n   p a g e   9  W r i t t e n   p a g e   1 0  W r i t t e n   p a g e   1 1  W r i t t e n   p a g e   1 2  W r i t t e n   p a g e   1 3  W r i t t e n   p a g e   1 4  W r i t t e n   p a g e   1 5  W r i t t e n   p a g e   1 6  W r i t t e n   p a g e   1 7  W r i t t e n   p a g e   1 8  W r i t t e n   p a g e   1 9  W r i t t e n   p a g e   2 0  W r i t t e n   p a g e   2 1  W r i t t e n   p a g e   2 2  W r i t t e n   p a g e   2 3  W r i t t e n   p a g e   2 4  W r i t t e n   p a g e   2 5  W r i t t e n   p a g e   2 6  W r i t t e n   p a g e   2 7  W r i t t e n   p a g e   2 8  W r i t t e n   p a g e   2 9  W r i t t e n   p a g e   3 0  W r i t t e n   p a g e   3 1  W r i t t e n   p a g e   3 2  W r i t t e n   p a g e   3 3  W r i t t e n   p a g e   3 4  W r i t t e n   p a g e   3 5  W r i t t e n   p a g e   3 6  W r i t t e n   p a g e   3 7  W r i t t e n   p a g e   3 8  W r i t t e n   p a g e   3 9  W r i t t e n   p a g e   4 0  W r i t t e n   p a g e   4 1  C o p i e d   p a g e   1   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 5 c 7 1 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1  W r i t t e n   p a g e   2  W r i t t e n   p a g e   3  W r i t t e n   p a g e   4  W r i t t e n   p a g e   5  W r i t t e n   p a g e   6  W r i t t e n   p a g e   7  W r i t t e n   p a g e   8  W r i t t e n   p a g e   9  W r i t t e n   p a g e   1 0  W r i t t e n   p a g e   1 1  W r i t t e n   p a g e   1 2  W r i t t e n   p a g e   1 3  W r i t t e n   p a g e   1 4  W r i t t e n   p a g e   1 5  W r i t t e n   p a g e   1 6  W r i t t e n   p a g e   1 7  W r i t t e n   p a g e   1 8  W r i t t e n   p a g e   1 9  W r i t t e n   p a g e   2 0  W r i t t e n   p a g e   2 1  W r i t t e n   p a g e   2 2  W r i t t e n   p a g e   2 3  W r i t t e n   p a g e   2 4  W r i t t e n   p a g e   2 5  W r i t t e n   p a g e   2 6  W r i t t e n   p a g e   2 7  W r i t t e n   p a g e   2 8  W r i t t e n   p a g e   2 9  W r i t t e n   p a g e   3 0  W r i t t e n   p a g e   3 1  W r i t t e n   p a g e   3 2  W r i t t e n   p a g e   3 3  W r i t t e n   p a g e   3 4  W r i t t e n   p a g e   3 5  W r i t t e n   p a g e   3 6  W r i t t e n   p a g e   3 7  W r i t t e n   p a g e   3 8  W r i t t e n   p a g e   3 9  W r i t t e n   p a g e   4 0  W r i t t e n   p a g e   4 1  C o p i e d   p a g e   1   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 5 e 7 8 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1  W r i t t e n   p a g e   2  W r i t t e n   p a g e   3  W r i t t e n   p a g e   4  W r i t t e n   p a g e   5  W r i t t e n   p a g e   6  W r i t t e n   p a g e   7  W r i t t e n   p a g e   8  W r i t t e n   p a g e   9  W r i t t e n   p a g e   1 0  W r i t t e n   p a g e   1 1  W r i t t e n   p a g e   1 2  W r i t t e n   p a g e   1 3  W r i t t e n   p a g e   1 4  W r i t t e n   p a g e   1 5  W r i t t e n   p a g e   1 6  W r i t t e n   p a g e   1 7  W r i t t e n   p a g e   1 8  W r i t t e n   p a g e   1 9  W r i t t e n   p a g e   2 0  W r i t t e n   p a g e   2 1  W r i t t e n   p a g e   2 2  W r i t t e n   p a g e   2 3  W r i t t e n   p a g e   2 4  W r i t t e n   p a g e   2 5  W r i t t e n   p a g e   2 6  W r i t t e n   p a g e   2 7  W r i t t e n   p a g e   2 8  W r i t t e n   p a g e   2 9  W r i t t e n   p a g e   3 0  W r i t t e n   p a g e   3 1  W r i t t e n   p a g e   3 2  W r i t t e n   p a g e   3 3  W r i t t e n   p a g e   3 4  W r i t t e n   p a g e   3 5  W r i t t e n   p a g e   3 6  W r i t t e n   p a g e   3 7  W r i t t e n   p a g e   3 8  W r i t t e n   p a g e   3 9  W r i t t e n   p a g e   4 0  W r i t t e n   p a g e   4 1  C o p i e d   p a g e   1   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 6 0 8 a 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   1  C o p i e d   p a g e   2   f r o m   < C G P D F D o c u m e n t   0 x 7 f e 3 9 f 2 6 0 8 a 0   [ 0 x 7 f f f 9 c 9 a b 8 e 0 ] >  W r i t t e n   p a g e   2  W r i t t e n   p a g e   3  W r i t t e n   p a g e   4  W r i t t e n   p a g e   5  W r i t t e n   p a g e   6  W r i t t e n   p a g e   7  W r i t t e n   p a g e   8  W r i t t e n   p a g e   9  W r i t t e n   p a g e   1 0  W r i t t e n   p a g e   1 1  W r i t t e n   p a g e   1 2  W r i t t e n   p a g e   1 3  W r i t t e n   p a g e   1 4  W r i t t e n   p a g e   1 5  W r i t t e n   p a g e   1 6  W r i t t e n   p a g e   1 7  W r i t t e n   p a g e   1 8  W r i t t e n   p a g e   1 9  W r i t t e n   p a g e   2 0  W r i t t e n   p a g e   2 1  W r i t t e n   p a g e   2 2  W r i t t e n   p a g e   2 3  W r i t t e n   p a g e   2 4  W r i t t e n   p a g e   2 5  W r i t t e n   p a g e   2 6  W r i t t e n   p a g e   2 7  W r i t t e n   p a g e   2 8  W r i t t e n   p a g e   2 9  W r i t t e n   p a g e   3 0  W r i t t e n   p a g e   3 1  W r i t t e n   p a g e   3 2  W r i t t e n   p a g e   3 3  W r i t t e n   p a g e   3 4  W r i t t e n   p a g e   3 5  W r i t t e n   p a g e   3 6  W r i t t e n   p a g e   3 7  W r i t t e n   p a g e   3 8  W r i t t e n   p a g e   3 9  W r i t t e n   p a g e   4 0  W r i t t e n   p a g e   4 1  a l l   t h i s   i n     / U s e r s / b a r t h e x / D r o p b o x / D e v / A p p l e S c r i p t / b o u r d e r e a u / t r a c k e d d e v / D o s s i e r   T E S T / F i n a l P i e c e s . p d f� ���   M o n t r e z   l e   m o i   !�x  �w  �v  �u  �t  �s  �r  �q  �p  �o  �n  �m  �l  �k  �j  �i  �h  �g  �f  �e  �d  �c  �b  �a  �`  �_  �^  �]  �\  �[  �Z  �Y  �X  �W  �V  �U   ascr  ��ޭ