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
   t o d o C  G H G l     �� I J��   I   NUMBERING is wrong �    J � K K *   N U M B E R I N G   i s   w r o n g  " H  L M L l     �� N O��   N 7 1 verify path for imagemagick (check with space) �    O � P P b   v e r i f y   p a t h   f o r   i m a g e m a g i c k   ( c h e c k   w i t h   s p a c e )  " M  Q R Q l     �� S T��   S 6 0 verify presence of stamp / offer to hunt for it    T � U U `   v e r i f y   p r e s e n c e   o f   s t a m p   /   o f f e r   t o   h u n t   f o r   i t R  V W V l     �� X Y��   X   verify name of file    Y � Z Z (   v e r i f y   n a m e   o f   f i l e W  [ \ [ l     �� ] ^��   ] 9 3 pass list fo file names, return list of file paths    ^ � _ _ f   p a s s   l i s t   f o   f i l e   n a m e s ,   r e t u r n   l i s t   o f   f i l e   p a t h s \  ` a ` l     �� b c��   b 8 2 implement proper log , not working even with dlog    c � d d d   i m p l e m e n t   p r o p e r   l o g   ,   n o t   w o r k i n g   e v e n   w i t h   d l o g a  e f e l     �� g h��   g M G implement cleaner image generation (library is using deprecated calls)    h � i i �   i m p l e m e n t   c l e a n e r   i m a g e   g e n e r a t i o n   ( l i b r a r y   i s   u s i n g   d e p r e c a t e d   c a l l s ) f  j k j l     �� l m��   l E ? offer to split files into size-based individual pieces or else    m � n n ~   o f f e r   t o   s p l i t   f i l e s   i n t o   s i z e - b a s e d   i n d i v i d u a l   p i e c e s   o r   e l s e k  o p o l     �� q r��   q &   add various fields to bordereau    r � s s @   a d d   v a r i o u s   f i e l d s   t o   b o r d e r e a u p  t u t l     �� v w��   v ) # open in Word a templated bordereau    w � x x F   o p e n   i n   W o r d   a   t e m p l a t e d   b o r d e r e a u u  y z y l     �� { |��   { � � allow for arbitrary numering (skip a piece, add a blank piece cover sheet for placeholder (name Nopiece instead of Piece, assume 1 page)    | � } }   a l l o w   f o r   a r b i t r a r y   n u m e r i n g   ( s k i p   a   p i e c e ,   a d d   a   b l a n k   p i e c e   c o v e r   s h e e t   f o r   p l a c e h o l d e r   ( n a m e   N o p i e c e   i n s t e a d   o f   P i e c e ,   a s s u m e   1   p a g e ) z  ~  ~ l     �� � ���   �    allow for number not full    � � � � 4   a l l o w   f o r   n u m b e r   n o t   f u l l   � � � l     �� � ���   � $  check for empty final lines ?    � � � � <   c h e c k   f o r   e m p t y   f i n a l   l i n e s   ? �  � � � l     �� � ���   � $  allow piece or pi�ce (accent)    � � � � <   a l l o w   p i e c e   o r   p i � c e   ( a c c e n t ) �  � � � l     �� � ���   � - ' offer reformatted listing in clipboard    � � � � N   o f f e r   r e f o r m a t t e d   l i s t i n g   i n   c l i p b o a r d �  � � � l     �� � ���   �   change N� to n� �    � � � � $   c h a n g e   N �   t o   n �  " �  � � � l     �� � ���   �   bolden piece number    � � � � (   b o l d e n   p i e c e   n u m b e r �  � � � l     �� � ���   � "  reposition stamp if need be    � � � � 8   r e p o s i t i o n   s t a m p   i f   n e e d   b e �  � � � l     �� � ���   �   insert ToC to PDF ?    � � � � (   i n s e r t   T o C   t o   P D F   ? �  � � � l     ��������  ��  ��   �  � � � p       � � �� ��� 	0 debug   � �� ��� 0 	pieceword 	pieceWord � �� ��� $0 thecountofpieces theCountOfPieces � �� ��� &0 theconvertcommand theConvertCommand � �� ��� 0 verbose   � �� ��� 0 thex theX � �� ��� 0 they theY � ������ 0 defaultfont defaultFont��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  
 set debug    � � � �    s e t   d e b u g �  � � � l    ����� � r     � � � m    ��
�� boovfals � o      ���� 	0 debug  ��  ��   �  � � � l    � � � � r     � � � m    	��
�� boovtrue � o      ���� 0 verbose   � . ( this will add much more to debug output    � � � � P   t h i s   w i l l   a d d   m u c h   m o r e   t o   d e b u g   o u t p u t �  � � � l      �� � ���   � � �
set debugbutton to button returned of (display dialog "Debug ?" buttons {"Non", "Oui", "Verbose"} default button 3)
if debugbutton = "Oui" then set debug to true
if debugbutton = "Verbose" then set verbose to true
    � � � �� 
 s e t   d e b u g b u t t o n   t o   b u t t o n   r e t u r n e d   o f   ( d i s p l a y   d i a l o g   " D e b u g   ? "   b u t t o n s   { " N o n " ,   " O u i " ,   " V e r b o s e " }   d e f a u l t   b u t t o n   3 ) 
 i f   d e b u g b u t t o n   =   " O u i "   t h e n   s e t   d e b u g   t o   t r u e 
 i f   d e b u g b u t t o n   =   " V e r b o s e "   t h e n   s e t   v e r b o s e   t o   t r u e 
 �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l   ' ����� � Z    ' � ��� � � I    �������� $0 checkiminstalled CheckIMInstalled��  ��   � l   �� � ���   � 4 . we check we have to the tool and set its path    � � � � \   w e   c h e c k   w e   h a v e   t o   t h e   t o o l   a n d   s e t   i t s   p a t h��   � k    ' � �  � � � I   �� ���
�� .sysodlogaskr        TEXT � m     � � � � � � D � s o l � .   V o u s   d e v e z   i n s t a l l e r   I m a g e M a g i c k   p o u r   u t i l i s e r   c e   s c r i p t   !   P a r   e x e m p l e   a v e c   H o m e B r e w   : 
   $ >   b r e w   i n s t a l l   i m a g e m a g i c k��   �  � � � I    $�� ����� 0 dlog   �  ��� � m      � � � � � � a b o r t i n g :   w e   n e e d   i m a g e m a g i c k   o n   t h i s   M a c :   h t t p s : / / w w w . i m a g e m a g i c k . o r g / s c r i p t / b i n a r y - r e l e a s e s . p h p # m a c o s x��  ��   �  ��� � L   % '����  ��  ��  ��   �  � � � l  ( 5 ����� � Z  ( 5 � ����� � o   ( )���� 	0 debug   � I  , 1�� ���
�� .sysodlogaskr        TEXT � o   , -���� &0 theconvertcommand theConvertCommand��  ��  ��  ��  ��   �  � � � l  6 > ����� � I   6 >�� ����� 0 dlog   �  ��� � b   7 : � � � m   7 8 � � � � � D w e   w i l l   u s e   i m a g e m a g i c k ,   f o u n d   a t   � o   8 9���� &0 theconvertcommand theConvertCommand��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � , & let's set the default names for files    � � � � L   l e t ' s   s e t   t h e   d e f a u l t   n a m e s   f o r   f i l e s �  � � � l  ? B ����� � r   ? B   m   ? @ �  B o r d e r e a u . t x t o      ���� ,0 defaultnamebordereau defaultNameBordereau��  ��   �  l  C F���� r   C F m   C D		 �

  P i � c e s . p d f o      ���� 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc��  ��    l  G L���� r   G L m   G H �  F i n a l P i e c e s . p d f o      ���� "0 finalnamepdfdoc finalNamePDFDoc��  ��    l     ��������  ��  ��    l     ����   "  let's set some default vars    � 8   l e t ' s   s e t   s o m e   d e f a u l t   v a r s  l  M T���� r   M T m   M P � 
 4 5 0 . 0 o      ���� 0 thex theX��  ��    !  l  U \"����" r   U \#$# m   U X%% �&&  7 0 0$ o      ���� 0 they theY��  ��  ! '(' l  ] d)���) r   ] d*+* m   ] `,, �-- 
 P i � c e+ o      �~�~ 0 	pieceword 	pieceWord��  �  ( ./. l  e l0�}�|0 r   e l121 m   e h33 �44  t a m p o n . p n g2 o      �{�{ "0 defaultnamelogo defaultNameLogo�}  �|  / 565 l  m t7�z�y7 r   m t898 m   m p:: �;;  t e m p9 o      �x�x .0 defaulttempfoldername defaultTempFolderName�z  �y  6 <=< l  u |>�w�v> r   u |?@? m   u xAA �BB H / L i b r a r y / F o n t s / / C o u r i e r   N e w   B o l d . t t f@ o      �u�u 0 defaultfont defaultFont�w  �v  = CDC l  } �E�t�sE r   } �FGF m   } ~�r�r  G o      �q�q .0 thenumberofpagesinpdf theNumberofPagesInPDF�t  �s  D HIH l  � �J�p�oJ r   � �KLK m   � ��n�n  L o      �m�m $0 thecountofpieces theCountOfPieces�p  �o  I MNM l     �l�k�j�l  �k  �j  N OPO l  � �Q�i�hQ I  � ��gR�f
�g .sysodlogaskr        TEXTR b   � �STS b   � �UVU b   � �WXW b   � �YZY b   � �[\[ b   � �]^] b   � �_`_ b   � �aba b   � �cdc m   � �ee �ff , P i e c e s T r a c k e r   v e r s i o n  d o   � ��e�e 0 versionnumber versionNumberb m   � �gg �hh � 
 
 O n   v a   v o u s   d e m a n d e r   l e   d o s s i e r   d a n s   l e q u e l   i l   y   a   : 
 -   l e   b o r d e r e a u   s o u s   l e   n o m   :   '` o   � ��d�d ,0 defaultnamebordereau defaultNameBordereau^ m   � �ii �jj \ '   
 l i s t a n t   l e s   p i � c e s   p a r   l i g n e   d � b u t a n t   p a r   '\ o   � ��c�c 0 	pieceword 	pieceWordZ m   � �kk �ll ~ '   s u i v i   d u   n �   d e   p i � c e 
 -   l e   f i c h i e r   P D F   d e   t o u t e s   l e s   p i � c e s   :  X o   � ��b�b 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDocV m   � �mm �nn 2 ' 
 -   e t   l e   t a m p o n ,   s o u s   :  T o   � ��a�a "0 defaultnamelogo defaultNameLogo�f  �i  �h  P opo l     �`�_�^�`  �_  �^  p qrq l     �]�\�[�]  �\  �[  r sts l  � �u�Z�Yu Z  � �vw�X�Wv H   � �xx o   � ��V�V 	0 debug  w I  � ��Uyz
�U .sysonotfnull��� ��� TEXTy m   � �{{ �|| � R e c h e r c h e   d u   d o s s i e r   o �   s e   t r o u v e n t   v o t r e   f i c h i e r   d e   p i � c e s   e t   v o t r e   b o r d e r e a u .z �T}~
�T 
appr} m   � � ��� , N u m � r o t a t i o n   d e   p i � c e s~ �S��R
�S 
nsou� m   � ��� ���  B o t t l e�R  �X  �W  �Z  �Y  t ��� l     �Q�P�O�Q  �P  �O  � ��� l     �N�M�L�N  �M  �L  � ��� l     �K�J�I�K  �J  �I  � ��� l     �H���H  � S M let's choose where we saved both the bordereau and the pieces.pdf (one file)   � ��� �   l e t ' s   c h o o s e   w h e r e   w e   s a v e d   b o t h   t h e   b o r d e r e a u   a n d   t h e   p i e c e s . p d f   ( o n e   f i l e )� ��� l  � ���G�F� r   � ���� I  � ��E�D�
�E .sysostflalis    ��� null�D  � �C��
�C 
prmp� b   � ���� b   � ���� m   � ��� ���� C h o i s i s s e z   l e   d o s s i e r   o �   s e   t r o u v e   l e   f i c h i e r   b o r d e r e a u . t x t   e t   l e   f i c h i e r   p i e c e s . p d f   c o m p o r t a n t   t o u t e s   l e s   p i � c e s   e n   u n   s e u l   P D F   
 ( a t t e n t i o n   :   c e   s c r i p t   s ' a t t e n d   �   t r o u v e r   l e s   p i e c e s   l i s t � e s   a v e c   l e   m o t   '� o   � ��B�B 0 	pieceword 	pieceWord� m   � ��� ���  ' )� �A��@
�A 
dflc� l  � ���?�>� I  � ��=��<
�= .earsffdralis        afdr� m   � ��;
�; afdmdesk�<  �?  �>  �@  � o      �:�: "0 theoutputfolder theOutputFolder�G  �F  � ��� l  � ���9�8� r   � ���� l  � ���7�6� n   � ���� 1   � ��5
�5 
psxp� o   � ��4�4 "0 theoutputfolder theOutputFolder�7  �6  � o      �3�3 0 thefolderpath theFolderPath�9  �8  � ��� l     �2�1�0�2  �1  �0  � ��� l  �	��/�.� r   �	��� b   ���� o   ��-�- 0 thefolderpath theFolderPath� o  �,�, .0 defaulttempfoldername defaultTempFolderName� o      �+�+ 0 thetemppath theTempPath�/  �.  � ��� l 
��*�)� r  
��� n  
��� 1  �(
�( 
strq� o  
�'�' 0 thetemppath theTempPath� o      �&�& &0 thequotedtemppath theQuotedTempPath�*  �)  � ��� l     �%�$�#�%  �$  �#  � ��� l *��"�!� Z *��� �� o  �� 	0 debug  � I &���
� .sysodlogaskr        TEXT� I  "���� .0 checkfileexistsatpath CheckFileExistsAtPath� ��� o  �� 0 thetemppath theTempPath�  �  �  �   �  �"  �!  � ��� l +D���� Z +D����� o  +,�� 0 verbose  � I  /@���� 0 dlog  � ��� b  0<��� m  03�� ��� ( w e   h a v e   a   t e m p   p a t h  � I  3;���� .0 checkfileexistsatpath CheckFileExistsAtPath� ��� o  47�� 0 thetemppath theTempPath�  �  �  �  �  �  �  �  � ��� l     ��
�	�  �
  �	  � ��� l Ed���� Z Ed����� H  EN�� I  EM���� .0 checkfileexistsatpath CheckFileExistsAtPath� ��� o  FI�� 0 thetemppath theTempPath�  �  � r  Q`��� I  Q\� ����  (0 createfolderatpath createFolderAtPath� ��� o  RU���� 0 thefolderpath theFolderPath� ���� o  UX���� .0 defaulttempfoldername defaultTempFolderName��  ��  � o      ���� 0 thetemppath theTempPath�  �  �  �  � ��� l     ��������  ��  ��  � ��� l en������ r  en��� b  ej��� l eh������ o  eh���� 0 thefolderpath theFolderPath��  ��  � o  hi���� ,0 defaultnamebordereau defaultNameBordereau� o      ���� "0 directpathtotxt directPathToTxt��  ��  � ��� l o|������ r  o|��� l ox������ n  ox��� 1  tx��
�� 
strq� l ot������ b  ot��� o  or���� 0 thefolderpath theFolderPath� o  rs���� ,0 defaultnamebordereau defaultNameBordereau��  ��  ��  ��  � o      ���� "0 quotedpathtotxt quotedPathToTxt��  ��  � ��� l     ��������  ��  ��  � ��� l }������� Z }�������� o  }~���� 0 verbose  � I  ��������� 0 dlog  � ���� b  ��� � m  �� � ( w e   h a v e   a   t e x t   f i l e    o  ������ "0 directpathtotxt directPathToTxt��  ��  ��  ��  ��  ��  �  l     ��������  ��  ��    l ������ r  ��	 b  ��

 l ������ o  ������ 0 thefolderpath theFolderPath��  ��   o  ������ 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc	 o      ���� "0 directpathtopdf directPathToPDF��  ��    l ������ r  �� l ������ n  �� 1  ����
�� 
strq l ������ b  �� o  ������ 0 thefolderpath theFolderPath o  ������ 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc��  ��  ��  ��   o      ���� "0 quotedpathtopdf quotedPathToPDF��  ��    l     ��������  ��  ��    l ������ Z ������ o  ������ 0 verbose   I  �������� 0 dlog    ��  b  ��!"! m  ��## �$$  w e   h a v e   a   p d f" o  ������ "0 directpathtopdf directPathToPDF��  ��  ��  ��  ��  ��   %&% l     ��������  ��  ��  & '(' l ��)����) r  ��*+* b  ��,-, l ��.����. o  ������ 0 thefolderpath theFolderPath��  ��  - o  ������ "0 defaultnamelogo defaultNameLogo+ o      ���� $0 directpathtologo directPathToLogo��  ��  ( /0/ l ��1����1 r  ��232 l ��4����4 n  ��565 1  ����
�� 
strq6 l ��7����7 b  ��898 o  ������ 0 thefolderpath theFolderPath9 o  ������ "0 defaultnamelogo defaultNameLogo��  ��  ��  ��  3 o      ���� $0 quotedpathtologo quotedPathToLogo��  ��  0 :;: l     ��������  ��  ��  ; <=< l ��>����> Z ��?@����? o  ������ 0 verbose  @ I  ����A���� 0 dlog  A B��B b  ��CDC m  ��EE �FF " w e   h a v e   a   t a m p o n  D o  ������ "0 defaultnamelogo defaultNameLogo��  ��  ��  ��  ��  ��  = GHG l     ��������  ��  ��  H IJI l �K����K Z �LM����L o  ������ 	0 debug  M I ���N��
�� .sysodlogaskr        TEXTN b  �OPO b  �QRQ b  ��STS b  ��UVU o  ������ "0 directpathtotxt directPathToTxtV m  ��WW �XX   T o  ������ "0 directpathtopdf directPathToPDFR m  �YY �ZZ   P o  ���� "0 defaultnamelogo defaultNameLogo��  ��  ��  ��  ��  J [\[ l     ��������  ��  ��  \ ]^] l ._����_ Z .`a����` H  bb o  ���� 	0 debug  a I *��cd
�� .sysonotfnull��� ��� TEXTc m  ee �ff J T o u s   l e s   f i c h i e r s   s o n t   l � ,   a l l o n s - y   !d ��gh
�� 
apprg m  ii �jj , N u m � r o t a t i o n   d e   p i � c e sh ��k��
�� 
nsouk m  !$ll �mm  B o t t l e��  ��  ��  ��  ��  ^ non l     �������  ��  �  o pqp l /:r�~�}r r  /:sts b  /6uvu o  /2�|�| 0 thefolderpath theFolderPathv o  25�{�{ "0 finalnamepdfdoc finalNamePDFDoct o      �z�z  0 pathtofinalpdf pathToFinalPDF�~  �}  q wxw l     �y�x�w�y  �x  �w  x yzy l     �v{|�v  { - ' We stop if we don't find the bordereau   | �}} N   W e   s t o p   i f   w e   d o n ' t   f i n d   t h e   b o r d e r e a uz ~~ l ;`��u�t� Z  ;`��s�r�� I  ;C�q��p�q .0 checkfileexistsatpath CheckFileExistsAtPath� ��o� o  <?�n�n "0 directpathtotxt directPathToTxt�o  �p  �s  �r  � k  J`�� ��� I JS�m��l
�m .sysodlogaskr        TEXT� b  JO��� m  JM�� ��� 0 I l   n ' y   a   p a s   d e   f i c h i e r  � o  MN�k�k ,0 defaultnamebordereau defaultNameBordereau�l  � ��� I T]�j��i
�j .ascrcmnt****      � ****� b  TY��� m  TW�� ���  P a s   d e  � o  WX�h�h ,0 defaultnamebordereau defaultNameBordereau�i  � ��� l ^^�g�f�e�g  �f  �e  � ��d� L  ^`�c�c  �d  �u  �t   ��� l     �b�a�`�b  �a  �`  � ��� l     �_���_  � ' ! We stop if we don't find the pdf   � ��� B   W e   s t o p   i f   w e   d o n ' t   f i n d   t h e   p d f� ��� l a|��^�]� Z  a|��\�[�� I  ai�Z��Y�Z .0 checkfileexistsatpath CheckFileExistsAtPath� ��X� o  be�W�W "0 directpathtopdf directPathToPDF�X  �Y  �\  �[  � k  p|�� ��� I py�V��U
�V .sysodlogaskr        TEXT� b  pu��� m  ps�� ��� 0 I l   n ' y   a   p a s   d e   f i c h i e r  � o  st�T�T 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc�U  � ��S� L  z|�R�R  �S  �^  �]  � ��� l     �Q�P�O�Q  �P  �O  � ��� l     �N���N  � 5 / We stop if we don't find the pdf (in the name)   � ��� ^   W e   s t o p   i f   w e   d o n ' t   f i n d   t h e   p d f   ( i n   t h e   n a m e )� ��� l }���M�L� Z  }���K�J�� I  }��I��H�I *0 checkthisisapdfpath CheckThisIsAPDFPath� ��G� o  ~��F�F "0 directpathtopdf directPathToPDF�G  �H  �K  �J  � k  ���� ��� I ���E��D
�E .sysodlogaskr        TEXT� m  ���� ��� & C e   n ' e s t   p a s   u n   P D F�D  � ��C� L  ���B�B  �C  �M  �L  � ��� l     �A�@�?�A  �@  �?  � ��� l     �>���>  � , & We stop if we don't find the logo.png   � ��� L   W e   s t o p   i f   w e   d o n ' t   f i n d   t h e   l o g o . p n g� ��� l ����=�<� Z  ����;�:�� I  ���9��8�9 .0 checkfileexistsatpath CheckFileExistsAtPath� ��7� o  ���6�6 $0 directpathtologo directPathToLogo�7  �8  �;  �:  � k  ���� ��� I ���5��4
�5 .sysodlogaskr        TEXT� b  ����� m  ���� ��� 0 I l   n ' y   a   p a s   d e   f i c h i e r  � o  ���3�3 "0 defaultnamelogo defaultNameLogo�4  � ��2� L  ���1�1  �2  �=  �<  � ��� l     �0�/�.�0  �/  �.  � ��� l     �-�,�+�-  �,  �+  � ��� l     �*���*  � $  let's load the bordereau info   � ��� <   l e t ' s   l o a d   t h e   b o r d e r e a u   i n f o� ��� l ����)�(� r  ����� I ���'��
�' .rdwrread****        ****� l ����&�%� o  ���$�$ "0 directpathtotxt directPathToTxt�&  �%  � �#��"
�# 
as  � m  ���!
�! 
utf8�"  � o      � �  $0 thebordereautext theBordereauText�)  �(  � ��� l ������ Z ������� o  ���� 	0 debug  � I �����
� .sysodlogaskr        TEXT� o  ���� $0 thebordereautext theBordereauText�  �  �  �  �  � ��� l ������ Z ������� o  ���� 0 verbose  � I �����
� .ascrcmnt****      � ****� b  ����� m  ���� ���  b o r d e r e a u   :  � o  ���� $0 thebordereautext theBordereauText�  �  �  �  �  � ��� l ������ r  ��� � I  ����� 40 returnfilecontentsaslist ReturnFileContentsAsList � o  ���
�
 "0 directpathtotxt directPathToTxt�  �    o      �	�	 0 	textlines 	textLines�  �  �  l     ����  �  �    l ��� r  �	 I  � �
�� 60 countnameandpagesofpieces CountNameAndPagesOfPieces
 � o  ��� �  0 	textlines 	textLines�  �  	 o      ���� <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces�  �    l     ��������  ��  ��    l ���� r   I  ������ "0 sumtotalofpages SumTotalOfPages �� o  	���� <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces��  ��   o      ���� .0 theexpectedtotalpages theExpectedTotalPages��  ��    l %���� Z %���� o  ���� 	0 debug   I !����
�� .sysodlogaskr        TEXT b   m   � R w e   h a v e   s o   m a n y   p a g e s   f r o m   t h e   b o r d e r e a u   o  ���� .0 theexpectedtotalpages theExpectedTotalPages��  ��  ��  ��  ��     l &1!����! I &1��"��
�� .ascrcmnt****      � ****" b  &-#$# m  &)%% �&&   s o   m a n y   p a g e s   :  $ o  ),���� .0 theexpectedtotalpages theExpectedTotalPages��  ��  ��    '(' l     ��������  ��  ��  ( )*) l 2>+����+ r  2>,-, I  2:��.���� (0 detailsofbordereau DetailsOfBordereau. /��/ o  36���� 0 	textlines 	textLines��  ��  - o      ���� $0 thekeyvaluepairs theKeyValuePairs��  ��  * 010 l     ��������  ��  ��  1 232 l     ��45��  4 , &if debug then display dialog textLines   5 �66 L i f   d e b u g   t h e n   d i s p l a y   d i a l o g   t e x t L i n e s3 787 l     ��������  ��  ��  8 9:9 l     ��;<��  ; , & let's find the number of pages in PDF   < �== L   l e t ' s   f i n d   t h e   n u m b e r   o f   p a g e s   i n   P D F: >?> l ?K@����@ r  ?KABA I  ?G��C���� $0 getpagesoffilepy GetPagesOfFilePYC D��D o  @C���� "0 directpathtopdf directPathToPDF��  ��  B o      ���� .0 thenumberofpagesinpdf theNumberofPagesInPDF��  ��  ? EFE l L_G����G Z L_HI����H o  LM���� 	0 debug  I I P[��J��
�� .sysodlogaskr        TEXTJ b  PWKLK o  PS���� .0 thenumberofpagesinpdf theNumberofPagesInPDFL m  SVMM �NN $   p a g e s   i n   t h i s   P D F��  ��  ��  ��  ��  F OPO l `kQ����Q r  `kRSR I `g��T��
�� .corecnte****       ****T o  `c���� <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces��  S o      ���� 0 countofpieces countofPieces��  ��  P UVU l l�W����W Z l�XY����X H  lnZZ o  lm���� 	0 debug  Y I q���[\
�� .sysonotfnull��� ��� TEXT[ b  q|]^] b  qx_`_ m  qtaa �bb  D a n s   u n   P D F   d e  ` o  tw���� .0 thenumberofpagesinpdf theNumberofPagesInPDF^ m  x{cc �dd    p a g e s .\ ��ef
�� 
appre b  �ghg b  �iji m  �kk �ll  j o  ������ 0 countofpieces countofPiecesh m  ��mm �nn    p i � c e sf ��o��
�� 
nsouo m  ��pp �qq  B o t t l e��  ��  ��  ��  ��  V rsr l ��t����t Z ��uv����u o  ������ 	0 debug  v I ����wx
�� .sysonotfnull��� ��� TEXTw b  ��yzy b  ��{|{ m  ��}} �~~ J D a n s   u n   P D F   d e   t h e N u m b e r o f P a g e s I n P D F  | o  ������ .0 thenumberofpagesinpdf theNumberofPagesInPDFz m  �� ���    p a g e s .x ����
�� 
appr� b  ����� b  ����� m  ���� ���  � o  ������ 0 countofpieces countofPieces� m  ���� ���    p i � c e s� �����
�� 
nsou� m  ���� ���  B o t t l e��  ��  ��  ��  ��  s ��� l     ��������  ��  ��  � ��� l �������� I �������
�� .ascrcmnt****      � ****� b  ����� m  ���� ��� . i n   P D F   w e   f i n d   p a g e s   :  � o  ������ .0 thenumberofpagesinpdf theNumberofPagesInPDF��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � H B check consistency between the list and size of pieces and the PDF   � ��� �   c h e c k   c o n s i s t e n c y   b e t w e e n   t h e   l i s t   a n d   s i z e   o f   p i e c e s   a n d   t h e   P D F� ��� l �	������ Z  �	������� l �������� > ����� ]  ����� o  ������ .0 thenumberofpagesinpdf theNumberofPagesInPDF� m  ������ � ]  ����� o  ������ .0 theexpectedtotalpages theExpectedTotalPages� m  ������ ��  ��  � l ����� k  ��� ��� I �������
�� .sysodlogaskr        TEXT� b  ����� b  ����� b  ����� b  ����� m  ���� ��� 8 O o o p s   !   V o u s   a v e z   u n   P D F   d e  � o  ������ .0 thenumberofpagesinpdf theNumberofPagesInPDF� m  ���� ��� Z   p a g e s ,   m a i s   v o u s   l i s t e z   d e s   p i � c e s   c o u v r a n t  � o  ������ .0 theexpectedtotalpages theExpectedTotalPages� m  ���� ���    f e u i l l e t s   !��  � ��� I ������
�� .ascrcmnt****      � ****� m  ���� ��� t e r r o r   :   n o t   s a m e   t o t a l   p a g e s   i n   b o r d e r e a u   a n d   p a g e s   i n   P D F��  � ���� L  ����  ��  � / ) beware equality is not good on variables   � ��� R   b e w a r e   e q u a l i t y   i s   n o t   g o o d   o n   v a r i a b l e s��  ��  ��  ��  � ��� l      ������  � � �
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
� ��� l     ��������  ��  ��  � ��� l     ������  �  	 we need    � ���    w e   n e e d  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l 
������ Z 
����~� o  
�}�} 	0 debug  � I �|��{
�| .sysodlogaskr        TEXT� m  �� ��� ( O k ,   w e   a r e   a l l   s e t   !�{  �  �~  ��  ��  � ��� l !��z�y� I !�x��w
�x .ascrcmnt****      � ****� m  �� ��� ^ A l l   c o n f i g   i s   h e r e ,   l e t ' s   w a t e r m a r k   s o m e   f i l e s !�w  �z  �y  � ��� l     �v�u�t�v  �u  �t  � ��� l     �s���s  � � � split the pdf in the different pieces -- (beware, we have a function that expects to get the first split page number AT 2ND DOC page number)   � ���   s p l i t   t h e   p d f   i n   t h e   d i f f e r e n t   p i e c e s   - -   ( b e w a r e ,   w e   h a v e   a   f u n c t i o n   t h a t   e x p e c t s   t o   g e t   t h e   f i r s t   s p l i t   p a g e   n u m b e r   A T   2 N D   D O C   p a g e   n u m b e r )� ��� l     �r�q�p�r  �q  �p  � ��� l "(��o�n� r  "(��� J  "$�m�m  � o      �l�l &0 thearrayofindexes theArrayOfIndexes�o  �n  � ��� l )V��k�j� X  )V��i�� r  ?Q��� b  ?M��� o  ?B�h�h &0 thearrayofindexes theArrayOfIndexes� l BL��g�f� \  BL��� ]  BJ� � l BH�e�d n  BH 4  CH�c
�c 
cobj m  FG�b�b  o  BC�a�a 
0 apiece  �e  �d    m  HI�`�` � m  JK�_�_ �g  �f  � o      �^�^ &0 thearrayofindexes theArrayOfIndexes�i 
0 apiece  � o  ,/�]�] <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces�k  �j  �  l     �\�[�Z�\  �[  �Z    l Wj	�Y�X	 r  Wj

 n  Wf 7 Zf�W
�W 
cobj m  `b�V�V  m  ce�U�U�� o  WZ�T�T &0 thearrayofindexes theArrayOfIndexes o      �S�S &0 thearrayofindexes theArrayOfIndexes�Y  �X    l ks�R�Q s  ks o  kn�P�P .0 theexpectedtotalpages theExpectedTotalPages l     �O�N n        ;  qr o  nq�M�M &0 thearrayofindexes theArrayOfIndexes�O  �N  �R  �Q    l     �L�L   &  display dialog theArrayOfIndexes    � @ d i s p l a y   d i a l o g   t h e A r r a y O f I n d e x e s  l     �K�J�I�K  �J  �I     l t�!�H�G! r  t�"#" I  t��F$�E�F 0 	splittext 	splitText$ %&% I  u��D'�C�D 0 trim  ' ()( I  v��B*�A�B 20 writexfilespdffromonepy WriteXFilesPDFfromOnePY* +,+ o  wz�@�@ "0 directpathtopdf directPathToPDF, -.- o  z}�?�? 0 thetemppath theTempPath. /�>/ o  }��=�= &0 thearrayofindexes theArrayOfIndexes�>  �A  ) 0�<0 1  ���;
�; 
spac�<  �C  & 1�:1 1  ���9
�9 
spac�:  �E  # o      �8�8 .0 thegeneratedfileslist theGeneratedFilesList�H  �G    232 l ��4564 Z ��78�7�67 o  ���5�5 0 verbose  8 I ���49�3
�4 .ascrcmnt****      � ****9 b  ��:;: m  ��<< �== D W e   s p l i t   t h e   o n e   f i l e   i n t o   t h o s e :  ; o  ���2�2 .0 thegeneratedfileslist theGeneratedFilesList�3  �7  �6  5   this is an object list   6 �>> .   t h i s   i s   a n   o b j e c t   l i s t3 ?@? l     �1�0�/�1  �0  �/  @ ABA l     �.CD�.  C P J we make the watermark image with generateStampImageForPieceNumberIM4param   D �EE �   w e   m a k e   t h e   w a t e r m a r k   i m a g e   w i t h   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M 4 p a r a mB FGF l     �-HI�-  H R L todo : correct generateStampImageForPieceNumberIM to amend quoted path etc.   I �JJ �   t o d o   :   c o r r e c t   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M   t o   a m e n d   q u o t e d   p a t h   e t c .G KLK l     �,�+�*�,  �+  �*  L MNM l     �)OP�)  O � �if not debug then display notification "Dans un dossier '" & defaultTempFolderName & "/' dans votre dossier." with title "Cr�ation des fichiers interm�diaires" sound name "Bottle"   P �QQf i f   n o t   d e b u g   t h e n   d i s p l a y   n o t i f i c a t i o n   " D a n s   u n   d o s s i e r   ' "   &   d e f a u l t T e m p F o l d e r N a m e   &   " / '   d a n s   v o t r e   d o s s i e r . "   w i t h   t i t l e   " C r � a t i o n   d e s   f i c h i e r s   i n t e r m � d i a i r e s "   s o u n d   n a m e   " B o t t l e "N RSR l     �(�'�&�(  �'  �&  S TUT l ��V�%�$V r  ��WXW J  ���#�#  X o      �"�" 0 themanyimages theManyImages�%  �$  U YZY l �[�!� [ Y  �\�]^�\ k  �__ `a` l ������  �  �  a bcb Z ��de��d o  ���� 	0 debug  e I ���f�
� .sysodlogaskr        TEXTf b  ��ghg b  ��iji b  ��klk m  ��mm �nn 4 m a k i n g   w a t e r m a r k i n g   i m a g e  l o  ���� 0 i  j m  ��oo �pp    :  h n  ��qrq 4  ���s
� 
cobjs o  ���� 0 i  r o  ���� .0 thegeneratedfileslist theGeneratedFilesList�  �  �  c tut l ���vw�  v � �generateStampImageForPieceNumberIM4param(convertcommand, theOriginalImagePathaAndName, thenumber, theResultingImagesPath , theNameOfFile)    w �xx g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M 4 p a r a m ( c o n v e r t c o m m a n d ,   t h e O r i g i n a l I m a g e P a t h a A n d N a m e ,   t h e n u m b e r ,   t h e R e s u l t i n g I m a g e s P a t h   ,   t h e N a m e O f F i l e )  u yzy l ������  �  �  z {|{ r  ��}~} I  ����� T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param ��� o  ���� &0 theconvertcommand theConvertCommand� ��� o  ���
�
 $0 directpathtologo directPathToLogo� ��� o  ���	�	 0 i  � ��� o  ���� 0 thetemppath theTempPath�  �  ~ o      �� 0 theimage  | ��� Z ������ o  ���� 	0 debug  � I � ���
� .sysodlogaskr        TEXT� o  ��� �  0 theimage  �  �  �  � ��� s  ��� o  ���� 0 theimage  � l     ������ n      ���  ;  � l ������ o  ���� 0 themanyimages theManyImages��  ��  ��  ��  � ���� l ��������  ��  ��  ��  � 0 i  ] m  ������ ^ I �������
�� .corecnte****       ****� o  ������ .0 thegeneratedfileslist theGeneratedFilesList��  �  �!  �   Z ��� l     ������  � Q Kdisplay dialog "generated image " & convertlisttostring(theManyImages, ",")   � ��� � d i s p l a y   d i a l o g   " g e n e r a t e d   i m a g e   "   &   c o n v e r t l i s t t o s t r i n g ( t h e M a n y I m a g e s ,   " , " )� ��� l     ������  � ( " we have all watermarks stamps now   � ��� D   w e   h a v e   a l l   w a t e r m a r k s   s t a m p s   n o w� ��� l     ��������  ��  ��  � ��� l     ������  � � ~if not debug then display notification "Nous avons tous les tampons !" with title "Num�rotation de pi�ces" sound name "Bottle"   � ��� � i f   n o t   d e b u g   t h e n   d i s p l a y   n o t i f i c a t i o n   " N o u s   a v o n s   t o u s   l e s   t a m p o n s   ! "   w i t h   t i t l e   " N u m � r o t a t i o n   d e   p i � c e s "   s o u n d   n a m e   " B o t t l e "� ��� l     ��������  ��  ��  � ��� l     ������  � 9 3 now we run through the files and put the watermark   � ��� f   n o w   w e   r u n   t h r o u g h   t h e   f i l e s   a n d   p u t   t h e   w a t e r m a r k� ��� l ������ r  ��� J  ����  � o      ���� 20 thewatermarkedfileslist theWatermarkedFilesList��  ��  � ��� l ������� Y  ��������� k  ,��� ��� l ,,��������  ��  ��  � ��� r  ,8��� n  ,4��� 4  /4���
�� 
cobj� o  23���� 0 i  � o  ,/���� .0 thegeneratedfileslist theGeneratedFilesList� o      ���� 0 thefiletomark theFileToMark� ��� r  9H��� l 9D������ b  9D��� b  9@��� o  9<���� 0 thetemppath theTempPath� m  <?�� ���  /� o  @C���� 0 thefiletomark theFileToMark��  ��  � o      ���� *0 thepathtofiletomark thePathToFileToMark� ��� l II��������  ��  ��  � ��� r  IX��� l IT������ b  IT��� b  IP��� o  IL���� 0 thetemppath theTempPath� m  LO�� ���  / M a r k e d _� o  PS���� 0 thefiletomark theFileToMark��  ��  � o      ���� *0 thepathtofilemarked thePathToFileMarked� ��� l YY��������  ��  ��  � ��� l YY��������  ��  ��  � ��� r  Ye��� n  Ya��� 4  \a���
�� 
cobj� o  _`���� 0 i  � o  Y\���� 0 themanyimages theManyImages� o      ���� 0 thestampfile theStampFile� ��� r  fu��� l fq������ b  fq��� b  fm��� o  fi���� 0 thetemppath theTempPath� m  il�� ���  /� o  mp���� 0 thestampfile theStampFile��  ��  � o      ���� (0 thepathtostampfile thePathToStampFile� ��� l vv��������  ��  ��  � ��� l vv��������  ��  ��  � ��� Z v�������� o  vw���� 	0 debug  � I z������
�� .sysodlogaskr        TEXT� b  z���� b  z���� b  z���� b  z�   b  z m  z} � : m a r k i n g   w a t e r m a r k i n g   i n   f i l e   o  }~���� 0 i   m  � �    :  � o  ������ *0 thepathtofiletomark thePathToFileToMark� m  �� �		    w i t h   s t a m p  � o  ������ 0 thestampfile theStampFile��  ��  ��  � 

 l ����������  ��  ��    l ������   @ :watermarkFilePY(theFileToStamp, theNewFile, theStampFile)     � t w a t e r m a r k F i l e P Y ( t h e F i l e T o S t a m p ,   t h e N e w F i l e ,   t h e S t a m p F i l e )    r  �� I  �������� "0 watermarkfilepy watermarkFilePY  o  ������ *0 thepathtofiletomark thePathToFileToMark  o  ������ *0 thepathtofilemarked thePathToFileMarked �� o  ������ (0 thepathtostampfile thePathToStampFile��  ��   o      ���� 0 themarkedfile    r  �� o  ������ *0 thepathtofilemarked thePathToFileMarked o      ���� 0 themarkedfile     s  ��!"! o  ������ 0 themarkedfile  " l     #����# n      $%$  ;  ��% l ��&����& o  ������ 20 thewatermarkedfileslist theWatermarkedFilesList��  ��  ��  ��    '(' l ����������  ��  ��  ( )��) l ����������  ��  ��  ��  �� 0 i  � m   ���� � I  '��*��
�� .corecnte****       ***** o   #���� .0 thegeneratedfileslist theGeneratedFilesList��  ��  ��  ��  � +,+ l ��-����- Z ��./����. o  ������ 	0 debug  / I ����0��
�� .sysodlogaskr        TEXT0 b  ��121 m  ��33 �44 & a d d e d   w a t e r m a r k   t o  2 I  ����5���� 0 convertlisttostring  5 676 o  ������ 20 thewatermarkedfileslist theWatermarkedFilesList7 8��8 m  ��99 �::  ,��  ��  ��  ��  ��  ��  ��  , ;<; l ��=����= Z ��>?����> H  ��@@ o  ������ 	0 debug  ? I ����AB
�� .sysonotfnull��� ��� TEXTA m  ��CC �DD Z N o u s   a v o n s   t a m p o n n �   l e s   f i c h i e r s   t e m p o r a i r e s .B �EF
� 
apprE m  ��GG �HH " T a m p o n n a g e   f i n i   !F �~I�}
�~ 
nsouI m  ��JJ �KK  B o t t l e�}  ��  ��  ��  ��  < LML l     �|�{�z�|  �{  �z  M NON l     �y�x�w�y  �x  �w  O PQP l     �v�u�t�v  �u  �t  Q RSR l     �s�r�q�s  �r  �q  S TUT l �V�p�oV Z �WX�n�mW o  ���l�l 	0 debug  X I �kY�j
�k .sysodlogaskr        TEXTY c  Z[Z b  	\]\ m  ^^ �__ N t h o s e   a r e   a l l   t h e   f i l e s   w e   w i l l   m e r g e :  ] o  �i�i 20 thewatermarkedfileslist theWatermarkedFilesList[ m  	�h
�h 
TEXT�j  �n  �m  �p  �o  U `a` l !b�g�fb I !�ec�d
�e .ascrcmnt****      � ****c b  ded m  ff �gg 6 t h e   f i l e   l i s t   w e   w i l l   m e r g ee o  �c�c 20 thewatermarkedfileslist theWatermarkedFilesList�d  �g  �f  a hih l     �b�a�`�b  �a  �`  i jkj l "4l�_�^l r  "4mnm I  "0�]o�\�] 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPYo pqp o  #&�[�[  0 pathtofinalpdf pathToFinalPDFq rsr o  &)�Z�Z 0 thetemppath theTempPaths t�Yt o  ),�X�X 20 thewatermarkedfileslist theWatermarkedFilesList�Y  �\  n o      �W�W 60 theresultlogofthepyscript theResultLogOfThePyScript�_  �^  k uvu l 5Sw�V�Uw Z 5Sxy�T�Sx H  57zz o  56�R�R 	0 debug  y I :O�Q{|
�Q .sysonotfnull��� ��� TEXT{ m  :=}} �~~ � N o u s   a v o n s   f a i t   l e   n o u v e a u   f i c h i e r   d e   p i � c e s ,   t a m p o n n � e s   e t   n u m � r o t � e s .| �P�
�P 
appr m  @C�� ���  C ' e s t   f i n i   !� �O��N
�O 
nsou� m  FI�� ���  B o t t l e�N  �T  �S  �V  �U  v ��� l     �M�L�K�M  �L  �K  � ��� l     �J���J  �   remove temporary folder   � ��� 0   r e m o v e   t e m p o r a r y   f o l d e r� ��� l T_��I�H� I  T_�G��F�G (0 deletefolderatpath deleteFolderAtPath� ��� o  UX�E�E 0 thefolderpath theFolderPath� ��D� o  X[�C�C .0 defaulttempfoldername defaultTempFolderName�D  �F  �I  �H  � ��� l     �B�A�@�B  �A  �@  � ��� l `e��?�>� I `e�=�<�;
�= .miscactvnull��� ��� null�<  �;  �?  �>  � ��� l f���:�9� r  f���� n  f���� 1  ~��8
�8 
bhit� l f~��7�6� I f~�5��
�5 .sysodlogaskr        TEXT� m  fi�� ��� 6 L e   f i c h i e r   f i n a l   e s t   p r � t   !� �4��
�4 
btns� J  lt�� ��� m  lo�� ���   M o n t r e z   l e   m o i   !� ��3� m  or�� ���  O k�3  � �2��1
�2 
dflt� m  wx�0�0 �1  �7  �6  � o      �/�/ 0 
showbutton  �:  �9  � ��� l ����.�-� Z �����,�+� >  ����� o  ���*�* 0 
showbutton  � m  ���� ���  O k� O ����� I ���)��(
�) .aevtodocnull  �    alis� c  ����� 4  ���'�
�' 
psxf� l ����&�%� o  ���$�$  0 pathtofinalpdf pathToFinalPDF�&  �%  � m  ���#
�# 
alis�(  � m  �����                                                                                  MACS  alis    :  	MacOSSlim                      BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p   	 M a c O S S l i m  &System/Library/CoreServices/Finder.app  / ��  �,  �+  �.  �-  � ��� l     �"�!� �"  �!  �   � ��� l     ����  �   end of script    � ���    e n d   o f   s c r i p t  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �   routines and functions   � ��� .   r o u t i n e s   a n d   f u n c t i o n s� ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ��
�	�  �
  �	  � ��� l     ����  �   GetPagesOfFilePY   � ��� "   G e t P a g e s O f F i l e P Y� ��� l     ����  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ����  � N H Python script that gets a file path and returns the PDF number of pages   � ��� �   P y t h o n   s c r i p t   t h a t   g e t s   a   f i l e   p a t h   a n d   r e t u r n s   t h e   P D F   n u m b e r   o f   p a g e s� ��� l     ����  �  �  � ��� i     ��� I      ���� $0 getpagesoffilepy GetPagesOfFilePY� �� � o      ���� 0 
thepdffile  �   �  � k     &�� ��� l     ������  � D > we need a pdf file : ensure you test with CheckThisIsAPDFPath   � ��� |   w e   n e e d   a   p d f   f i l e   :   e n s u r e   y o u   t e s t   w i t h   C h e c k T h i s I s A P D F P a t h� ��� r     ��� b     ��� b     ��� m        � �   ' # ! / u s r / b i n / p y t h o n ; 
 # i m p o r t   s y s 
 # i m p o r t   C o r e G r a p h i c s 
 f r o m   Q u a r t z . I m a g e I O   i m p o r t   * 
 n u m b e r   =   0 
 p d f f i l e   =   "� o    ���� 0 
thepdffile  � m     �� " 
 p d f   =   C G P D F D o c u m e n t C r e a t e W i t h U R L ( C F U R L C r e a t e F r o m F i l e S y s t e m R e p r e s e n t a t i o n ( k C F A l l o c a t o r D e f a u l t ,   p d f f i l e ,   l e n ( p d f f i l e ) ,   F a l s e ) ) 
 i f   p d f : 
 	 n u m b e r   =   C G P D F D o c u m e n t G e t N u m b e r O f P a g e s ( p d f ) 
 	 d e l   p d f 
 p r i n t   n u m b e r '� o      ���� 0 	thescript  �  l   ��������  ��  ��    r    	 I   ��
��
�� .sysoexecTEXT���     TEXT
 b     m    	 �  p y t h o n   - c   o   	 
���� 0 	thescript  ��  	 o      ���� 0 	thenumber    Z   !���� o    ���� 	0 debug   I   ����
�� .sysodlogaskr        TEXT b     m     � & G e t P a g e s O f F i l e P Y   :   o    ���� 0 	thenumber  ��  ��  ��    L   " $ o   " #���� 0 	thenumber   �� l  % %��������  ��  ��  ��  �  l     ��������  ��  ��    l     ��������  ��  ��    !  l     ��"#��  "   WriteXFilesPDFfromOnePY   # �$$ 0   W r i t e X F i l e s P D F f r o m O n e P Y! %&% l     ��'(��  ' / ) ########################################   ( �)) R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #& *+* l     ��,-��  , � � python script that gets a file path, a number (X-1) of pages indexes (starting at 2nd document's first page, as we know the first doc first, it is 1, duh)   - �..6   p y t h o n   s c r i p t   t h a t   g e t s   a   f i l e   p a t h ,   a   n u m b e r   ( X - 1 )   o f   p a g e s   i n d e x e s   ( s t a r t i n g   a t   2 n d   d o c u m e n t ' s   f i r s t   p a g e ,   a s   w e   k n o w   t h e   f i r s t   d o c   f i r s t ,   i t   i s   1 ,   d u h )+ /0/ l     ��12��  1 !  and write X many PDF files   2 �33 6   a n d   w r i t e   X   m a n y   P D F   f i l e s0 454 l     ��67��  6 W Q -- NOTE : we need to replace method CGPDFDocumentGetMediaBox which is deprecated   7 �88 �   - -   N O T E   :   w e   n e e d   t o   r e p l a c e   m e t h o d   C G P D F D o c u m e n t G e t M e d i a B o x   w h i c h   i s   d e p r e c a t e d5 9:9 l     ��������  ��  ��  : ;<; i    =>= I      ��?���� 20 writexfilespdffromonepy WriteXFilesPDFfromOnePY? @A@ o      ���� 0 
thepdffile  A BCB o      ���� "0 wheretosavepath whereToSavePathC D��D o      ���� 0 indexeslist indexesList��  ��  > l    fEFGE k     fHH IJI l     ��������  ��  ��  J KLK r     MNM b     OPO b     	QRQ m     SS �TT  (R I    ��U���� 0 convertlisttostring  U VWV o    ���� 0 indexeslist indexesListW X��X m    YY �ZZ  ,��  ��  P m   	 
[[ �\\    )N o      ���� $0 theindexesstring theIndexesStringL ]^] Z   _`����_ o    ���� 	0 debug  ` I   ��a��
�� .sysodlogaskr        TEXTa b    bcb m    dd �ee N W r i t e X F i l e s P D F f r o m O n e P Y   :   a l l   i n d e x e s   =c o    ���� $0 theindexesstring theIndexesString��  ��  ��  ^ fgf Z   -hi����h o    ���� 0 verbose  i I  " )��j��
�� .ascrcmnt****      � ****j b   " %klk m   " #mm �nn P W e   h a v e   a l l   t h o s e   i n d e x e s   f o r   a l l   f i l e s :l o   # $���� $0 theindexesstring theIndexesString��  ��  ��  g opo r   . =qrq b   . ;sts b   . 9uvu b   . 7wxw b   . 5yzy b   . 3{|{ b   . 1}~} m   . / ��� � ' 
 # ! / u s r / b i n / p y t h o n 
 # #   t h i s   u s e s   t h e   s p l i t P D F . 0 . 4 . p y   s c r i p t   
 i m p o r t   s y s 
 i m p o r t   o s 
 f r o m   C o r e G r a p h i c s   i m p o r t   * 
 
 i n p u t F N   =   "~ o   / 0���� 0 
thepdffile  | m   1 2�� ���   " 
 o u t p u t P a t h   =   "z o   3 4���� "0 wheretosavepath whereToSavePathx m   5 6�� ��� " 
 b a s e F N   =   o s . p a t h . s p l i t e x t ( o s . p a t h . b a s e n a m e ( i n p u t F N ) ) [ 0 ] 
 p a g e R e c t   =   C G R e c t M a k e   ( 0 ,   0 ,   6 1 2 ,   7 9 2 ) 
 t h e C r e a t e d F i l e s   =   " " 
 s p l i t p a g e s   =  v o   7 8���� $0 theindexesstring theIndexesStringt m   9 :�� ���	p 
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
 p r i n t   t h e C r e a t e d F i l e s 'r o      ���� 0 	thescript  p ��� l  > >��������  ��  ��  � ��� r   > G��� I  > E�����
�� .sysoexecTEXT���     TEXT� b   > A��� m   > ?�� ���  p y t h o n   - c  � o   ? @���� 0 	thescript  ��  � o      ���� 0 thecreatedfiles  � ��� Z  H Y������� o   H I���� 	0 debug  � I  L U�����
�� .sysodlogaskr        TEXT� b   L Q��� m   L O�� ��� 2 W r i t e X F i l e s P D F f r o m O n e P Y :  � o   O P���� 0 thecreatedfiles  ��  ��  ��  � ��� I  Z c�����
�� .ascrcmnt****      � ****� b   Z _��� m   Z ]�� ��� 2 W r i t e X F i l e s P D F f r o m O n e P Y :  � o   ] ^���� 0 thecreatedfiles  ��  � ���� L   d f�� o   d e���� 0 thecreatedfiles  ��  F * $ returns INT number of files created   G ��� H   r e t u r n s   I N T   n u m b e r   o f   f i l e s   c r e a t e d< ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  	 FindText   � ���    F i n d T e x t� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � 0 * find the string toFind in the text inText   � ��� T   f i n d   t h e   s t r i n g   t o F i n d   i n   t h e   t e x t   i n T e x t� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 findtext FindText� ��� o      ���� 0 tofind toFind� ���� o      ���� 0 intext inText��  ��  � L     �� l    ������ E    ��� o     ���� 0 intext inText� o    ���� 0 tofind toFind��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �    writeOnePDFFileFromManyPY   � ��� 4   w r i t e O n e P D F F i l e F r o m M a n y P Y� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � Q K pass a file path, a number of files as list and write one file in the path   � ��� �   p a s s   a   f i l e   p a t h ,   a   n u m b e r   o f   f i l e s   a s   l i s t   a n d   w r i t e   o n e   f i l e   i n   t h e   p a t h� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPY� ��� o      ���� 0 thefinalfile theFinalFile� ��� o      ���� 20 wheretofindthefilespath whereToFindTheFilesPath� ���� o      ���� 60 thefileslistwiththeirpath theFilesListWithTheirPath��  ��  � l    P���� k     P�� ��� l      ������  � � �
	set theNewList to {}
	repeat with thefile in theNamesOfFilesList
		copy (whereToFindPath & "/" & thefile) to end of theNewList
	end repeat
	   � ��� 
 	 s e t   t h e N e w L i s t   t o   { } 
 	 r e p e a t   w i t h   t h e f i l e   i n   t h e N a m e s O f F i l e s L i s t 
 	 	 c o p y   ( w h e r e T o F i n d P a t h   &   " / "   &   t h e f i l e )   t o   e n d   o f   t h e N e w L i s t 
 	 e n d   r e p e a t 
 	� ��� r     ��� b     ��� b     	��� m     �� ���  ( "� I    ������ 0 convertlisttostring  � ��� o    �~�~ 60 thefileslistwiththeirpath theFilesListWithTheirPath� ��}� m    �� ���  " ,   "�}  �  � m   	 
   �  " )� o      �|�| H0 "thecorrectedfileslistwiththeirpath "theCorrectedFilesListWithTheirPath�  Z   �{�z o    �y�y 	0 debug   I   �x�w
�x .sysodlogaskr        TEXT b     m    		 �

 N w r i t e O n e P D F F i l e F r o m M a n y P Y :   t h e   f i l e s   =   o    �v�v H0 "thecorrectedfileslistwiththeirpath "theCorrectedFilesListWithTheirPath�w  �{  �z    l   �u�t�s�u  �t  �s    l   �r�q�p�r  �q  �p    l    �o�o   * $ formatted as path and quote, comma     � H   f o r m a t t e d   a s   p a t h   a n d   q u o t e ,   c o m m a    l   �n�m�l�n  �m  �l    l   �k�j�i�k  �j  �i    r    + b    ) b    ' b    % !  b    #"#" b    !$%$ m    && �'' � ' # !   / u s r / b i n / p y t h o n 
 
 f r o m   Q u a r t z . C o r e G r a p h i c s   i m p o r t   * 
 
 t h e F i l e   =   "% o     �h�h 0 thefinalfile theFinalFile# m   ! "(( �))  " 
 t h e F o l d e r   =   "! m   # $** �++ $ "   
 t h e F i l e s L i s t   =   o   % &�g�g H0 "thecorrectedfileslistwiththeirpath "theCorrectedFilesListWithTheirPath m   ' (,, �--� 
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
 	 # C G C o n t e x t R e l e a s e ( w r i t e C o n t e x t ) ' o      �f�f 0 	thescript   ./. l  , ,�e�d�c�e  �d  �c  / 010 r   , 5232 I  , 3�b4�a
�b .sysoexecTEXT���     TEXT4 b   , /565 m   , -77 �88  p y t h o n   - c  6 o   - .�`�` 0 	thescript  �a  3 o      �_�_ 
0 thedoc  1 9:9 Z  6 E;<�^�]; o   6 7�\�\ 	0 debug  < I  : A�[=�Z
�[ .sysodlogaskr        TEXT= b   : =>?> m   : ;@@ �AA t w r i t e O n e P D F F i l e F r o m M a n y P Y :   r e t u r n e d   O n e   P D F   f i l e   :   t h e d o c  ? o   ; <�Y�Y 
0 thedoc  �Z  �^  �]  : BCB I  F M�XD�W
�X .ascrcmnt****      � ****D b   F IEFE m   F GGG �HH d w r i t e O n e P D F F i l e F r o m M a n y P Y :   r e t u r n e d   O n e   P D F   f i l e   :F o   G H�V�V 
0 thedoc  �W  C I�UI L   N PJJ o   N O�T�T 
0 thedoc  �U  �   return the file   � �KK     r e t u r n   t h e   f i l e� LML l     �S�R�Q�S  �R  �Q  M NON l     �P�O�N�P  �O  �N  O PQP l     �MRS�M  R   CheckIMInstalled   S �TT "   C h e c k I M I n s t a l l e dQ UVU l     �LWX�L  W / ) ########################################   X �YY R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #V Z[Z l     �K\]�K  \ d ^ verify that we have a "convert" command available, and sets the value fo the command location   ] �^^ �   v e r i f y   t h a t   w e   h a v e   a   " c o n v e r t "   c o m m a n d   a v a i l a b l e ,   a n d   s e t s   t h e   v a l u e   f o   t h e   c o m m a n d   l o c a t i o n[ _`_ l     �J�I�H�J  �I  �H  ` aba i    cdc I      �G�F�E�G $0 checkiminstalled CheckIMInstalled�F  �E  d l    efge Q     hijh k    kk lml r    
non I   �Dp�C
�D .sysoexecTEXT���     TEXTp m    qq �rr 4 b a s h   - l   - c   ' w h i c h   c o n v e r t '�C  o o      �B�B &0 theconvertcommand theConvertCommandm s�As L    tt m    �@
�@ boovtrue�A  i R      �?�>�=
�? .ascrerr ****      � ****�>  �=  j L    uu m    �<
�< boovfalsf + % returns location of convert or empty   g �vv J   r e t u r n s   l o c a t i o n   o f   c o n v e r t   o r   e m p t yb wxw l     �;�:�9�;  �:  �9  x yzy l     �8{|�8  {   insertToCInPDF   | �}}    i n s e r t T o C I n P D Fz ~~ i    ��� I      �7�6�5�7  0 inserttocinpdf insertToCInPDF�6  �5  � l     �4���4  � T N we need to pull the bordereau info as elements and page number to add the ToC   � ��� �   w e   n e e d   t o   p u l l   t h e   b o r d e r e a u   i n f o   a s   e l e m e n t s   a n d   p a g e   n u m b e r   t o   a d d   t h e   T o C ��� l     �3�2�1�3  �2  �1  � ��� l     �0���0  � ) # generateStampImageForPieceNumberIM   � ��� F   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M� ��� l     �/���/  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     �.���.  � � � use imagemagick, passes the command syntax (convert in its installed place), an original stamp image (located with path), a number a file path and returns the name of the image created at the path   � ����   u s e   i m a g e m a g i c k ,   p a s s e s   t h e   c o m m a n d   s y n t a x   ( c o n v e r t   i n   i t s   i n s t a l l e d   p l a c e ) ,   a n   o r i g i n a l   s t a m p   i m a g e   ( l o c a t e d   w i t h   p a t h ) ,   a   n u m b e r   a   f i l e   p a t h   a n d   r e t u r n s   t h e   n a m e   o f   t h e   i m a g e   c r e a t e d   a t   t h e   p a t h� ��� l     �-���-  � [ U beware ! passing the path doesn't work wih quoted form, but the space will break it.   � ��� �   b e w a r e   !   p a s s i n g   t h e   p a t h   d o e s n ' t   w o r k   w i h   q u o t e d   f o r m ,   b u t   t h e   s p a c e   w i l l   b r e a k   i t .� ��� l     �,���,  � j d !! this is not used, we now pass 4 parameters and will use generateStampImageForPieceNumberIM4param   � ��� �   ! !   t h i s   i s   n o t   u s e d ,   w e   n o w   p a s s   4   p a r a m e t e r s   a n d   w i l l   u s e   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M 4 p a r a m� ��� i    ��� I      �+��*�+ H0 "generatestampimageforpiecenumberim "generateStampImageForPieceNumberIM� ��� o      �)�) 0 convertcommand  � ��� o      �(�( <0 theoriginalimagepathaandname theOriginalImagePathaAndName� ��� o      �'�' 0 	thenumber  � ��� o      �&�& 00 theresultingimagespath theResultingImagesPath� ��%� o      �$�$ 0 thenameoffile theNameOfFile�%  �*  � l    C���� k     C�� ��� l     �#�"�!�#  �"  �!  � ��� l     � ���   �  �  � ��� l     ����  �  �  � ��� l     ����  � ( "display dialog PathToOriginalImage   � ��� D d i s p l a y   d i a l o g   P a t h T o O r i g i n a l I m a g e� ��� r     ��� n     ��� 1    �
� 
strq� l    ���� o     �� <0 theoriginalimagepathaandname theOriginalImagePathaAndName�  �  � o      �� *0 pathtooriginalimage pathToOriginalImage� ��� r    ��� n    	��� 1    	�
� 
strq� l   ���� o    �� 00 theresultingimagespath theResultingImagesPath�  �  � o      ��  0 pathtonewimage PathToNewImage� ��� l   ����  �  �  � ��� r    ��� b    ��� m    �� ���  P i � c e \ n n �� o    �� 0 	thenumber  � o      �� "0 piecenumbertext pieceNumberText� ��� r    ��� b    ��� b    ��� o    �
�
 0 thenameoffile theNameOfFile� o    �	�	 0 	thenumber  � m    �� ���  . p n g� o      �� 0 newimagename  � ��� l   ����  � ; 5display dialog "Now trying for image " & newimagename   � ��� j d i s p l a y   d i a l o g   " N o w   t r y i n g   f o r   i m a g e   "   &   n e w i m a g e n a m e� ��� r    +��� b    )��� b    '��� b    %��� b    #��� b    !��� b    ��� b    ��� o    �� 0 convertcommand  � m    �� ���   � o    �� <0 theoriginalimagepathaandname theOriginalImagePathaAndName� m     �� ��� t   - g r a v i t y   c e n t e r   - p o i n t s i z e   7 0   - f i l l   ' b l a c k '   - a n n o t a t e   0   '� o   ! "�� "0 piecenumbertext pieceNumberText� m   # $�� ���  '  � o   % &��  0 pathtonewimage PathToNewImage� o   ' (�� 0 newimagename  � o      ��  0 theimagescript theImageScript� ��� l  , ,� �����   ��  ��  � ��� l  , ,�� ��    # display dialog theImageScript    � : d i s p l a y   d i a l o g   t h e I m a g e S c r i p t�  Q   , A k   / 7 	
	 I  / 4����
�� .sysoexecTEXT���     TEXT o   / 0����  0 theimagescript theImageScript��  
 �� L   5 7 o   5 6���� 0 newimagename  ��   R      ������
�� .ascrerr ****      � ****��  ��   L   ? A m   ? @ � 
 e r r o r �� l  B B��������  ��  ��  ��  �   return new image name   � � ,   r e t u r n   n e w   i m a g e   n a m e�  l     ��������  ��  ��    l     ����   / ) generateStampImageForPieceNumberIM4param    � R   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M 4 p a r a m  l     ����   / ) ########################################    � R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   l     ��!"��  ! � � use imagemagick, passes the command syntax (convert in its installed place), an original stamp image (located with path), a number a file path and returns the name of the image created at the path   " �##�   u s e   i m a g e m a g i c k ,   p a s s e s   t h e   c o m m a n d   s y n t a x   ( c o n v e r t   i n   i t s   i n s t a l l e d   p l a c e ) ,   a n   o r i g i n a l   s t a m p   i m a g e   ( l o c a t e d   w i t h   p a t h ) ,   a   n u m b e r   a   f i l e   p a t h   a n d   r e t u r n s   t h e   n a m e   o f   t h e   i m a g e   c r e a t e d   a t   t h e   p a t h  $%$ l     ��&'��  & [ U beware ! passing the path doesn't work wih quoted form, but the space will break it.   ' �(( �   b e w a r e   !   p a s s i n g   t h e   p a t h   d o e s n ' t   w o r k   w i h   q u o t e d   f o r m ,   b u t   t h e   s p a c e   w i l l   b r e a k   i t .% )*) l     ��������  ��  ��  * +,+ i    -.- I      ��/���� T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param/ 010 o      ���� 0 convertcommand  1 232 o      ���� <0 theoriginalimagepathaandname theOriginalImagePathaAndName3 454 o      ���� 0 	thenumber  5 6��6 o      ���� 00 theresultingimagespath theResultingImagesPath��  ��  . l    q7897 k     q:: ;<; l     ��������  ��  ��  < =>= l     ��������  ��  ��  > ?@? l     ��������  ��  ��  @ ABA l     ��������  ��  ��  B CDC l     ��EF��  E ( "display dialog PathToOriginalImage   F �GG D d i s p l a y   d i a l o g   P a t h T o O r i g i n a l I m a g eD HIH r     JKJ b     LML m     NN �OO  P i � c e \ n n �M o    ���� 0 	thenumber  K o      ���� "0 piecenumbertext pieceNumberTextI PQP r    RSR n    	TUT 1    	��
�� 
strqU l   V����V o    ���� <0 theoriginalimagepathaandname theOriginalImagePathaAndName��  ��  S o      ���� *0 pathtooriginalimage pathToOriginalImageQ WXW l   ��������  ��  ��  X YZY r    [\[ b    ]^] b    _`_ m    aa �bb  p i e c e _ n _` o    ���� 0 	thenumber  ^ m    cc �dd  . p n g\ o      ���� 0 	imagename 	imageNameZ efe l   ��������  ��  ��  f ghg l   ijki r    lml l   n����n b    opo b    qrq o    ���� 00 theresultingimagespath theResultingImagesPathr m    ss �tt  /p o    ���� 0 	imagename 	imageName��  ��  m o      ����  0 pathtonewimage PathToNewImagej   path is not proper if no /   k �uu 4 p a t h   i s   n o t   p r o p e r   i f   n o   /h vwv r    !xyx n    z{z 1    ��
�� 
strq{ o    ����  0 pathtonewimage PathToNewImagey o      ����  0 pathtonewimage PathToNewImagew |}| Z  " 1~����~ o   " #���� 	0 debug   I  & -�����
�� .sysodlogaskr        TEXT� b   & )��� m   & '�� ��� 6 t h e   p a t h   t o   n e w   i m a g e   i s   :  � o   ' (����  0 pathtonewimage PathToNewImage��  ��  ��  } ��� l  2 2��������  ��  ��  � ��� r   2 E��� b   2 C��� b   2 A��� b   2 ?��� b   2 =��� b   2 ;��� b   2 9��� b   2 7��� b   2 5��� o   2 3���� 0 convertcommand  � m   3 4�� ���   � o   5 6���� *0 pathtooriginalimage pathToOriginalImage� m   7 8�� ���      - f o n t   '� o   9 :���� 0 defaultfont defaultFont� m   ; <�� ��� x '   - g r a v i t y   c e n t e r   - p o i n t s i z e   7 0   - f i l l   ' b l a c k '   - a n n o t a t e   0     '� o   = >���� "0 piecenumbertext pieceNumberText� m   ? @�� ���  '    � o   A B����  0 pathtonewimage PathToNewImage� o      ����  0 theimagescript theImageScript� ��� l  F F��������  ��  ��  � ��� Z  F W������� o   F G���� 	0 debug  � I  J S�����
�� .sysodlogaskr        TEXT� b   J O��� b   J M��� m   J K�� ���  t h e   s c r i p t   i s   [� o   K L����  0 theimagescript theImageScript� m   M N�� ���  ]��  ��  ��  � ��� Q   X o���� k   [ c�� ��� I  [ `�����
�� .sysoexecTEXT���     TEXT� o   [ \����  0 theimagescript theImageScript��  � ���� L   a c�� o   a b���� 0 	imagename 	imageName��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   k o�� m   k n�� ��� 
 e r r o r� ��� l  p p��������  ��  ��  � ���� l  p p��������  ��  ��  ��  8   return new image name   9 ��� ,   r e t u r n   n e w   i m a g e   n a m e, ��� l     ��������  ��  ��  � ��� l     ������  �   CheckThisIsAPDFPath   � ��� (   C h e c k T h i s I s A P D F P a t h� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � ' ! verify the path ends with ".pdf"   � ��� B   v e r i f y   t h e   p a t h   e n d s   w i t h   " . p d f "� ��� l     ��������  ��  ��  � ��� i     #��� I      ������� *0 checkthisisapdfpath CheckThisIsAPDFPath� ���� o      ���� 0 thefile  ��  ��  � L     �� l    ������ =     ��� l    	������ I    	�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m    �� ���  . p d f� ����
�� 
psin� o    �~�~ 0 thefile  �  ��  ��  � l  	 ��}�|� \   	 ��� l  	 ��{�z� n   	 ��� 1   
 �y
�y 
leng� o   	 
�x�x 0 thefile  �{  �z  � m    �w�w �}  �|  ��  ��  � ��� l     �v�u�t�v  �u  �t  � ��� l     �s���s  �   CheckThisIsATxtPath   � ��� (   C h e c k T h i s I s A T x t P a t h� ��� l     �r���r  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     �q���q  � ' ! verify the path ends with ".txt"   � ��� B   v e r i f y   t h e   p a t h   e n d s   w i t h   " . t x t "� �	 � l     �p�o�n�p  �o  �n  	  			 i   $ '			 I      �m	�l�m *0 checkthisisatxtpath CheckThisIsATxtPath	 	�k	 o      �j�j 0 thefile  �k  �l  	 L     		 l    	�i�h	 =     			
		 l    		�g�f	 I    	�e�d	
�e .sysooffslong    ��� null�d  	 �c		
�c 
psof	 m    		 �		  . t x t	 �b	�a
�b 
psin	 o    �`�` 0 thefile  �a  �g  �f  	
 l  	 	�_�^	 \   	 			 l  	 	�]�\	 n   	 			 1   
 �[
�[ 
leng	 o   	 
�Z�Z 0 thefile  �]  �\  	 m    �Y�Y �_  �^  �i  �h  	 			 l     �X�W�V�X  �W  �V  	 			 l     �U		�U  	   CheckFileExistsAtPath   	 �		 ,   C h e c k F i l e E x i s t s A t P a t h	 		 	 l     �T	!	"�T  	! / ) ########################################   	" �	#	# R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	  	$	%	$ l     �S	&	'�S  	& 8 2 verify the file we need is present at given path    	' �	(	( d   v e r i f y   t h e   f i l e   w e   n e e d   i s   p r e s e n t   a t   g i v e n   p a t h  	% 	)	*	) l     �R�Q�P�R  �Q  �P  	* 	+	,	+ i   ( +	-	.	- I      �O	/�N�O .0 checkfileexistsatpath CheckFileExistsAtPath	/ 	0�M	0 o      �L�L 0 thefile  �M  �N  	. l    	1	2	3	1 Q     	4	5	6	4 k    	7	7 	8	9	8 c    		:	;	: 4    �K	<
�K 
psxf	< o    �J�J 0 thefile  	; m    �I
�I 
alis	9 	=�H	= L   
 	>	> m   
 �G
�G boovtrue�H  	5 R      �F�E�D
�F .ascrerr ****      � ****�E  �D  	6 L    	?	? m    �C
�C boovfals	2 / ) expect a POSIX file path -- returns BOOL   	3 �	@	@ R   e x p e c t   a   P O S I X   f i l e   p a t h   - -   r e t u r n s   B O O L	, 	A	B	A l     �B�A�@�B  �A  �@  	B 	C	D	C l     �?	E	F�?  	E   ReturnFileContentsAsList   	F �	G	G 2   R e t u r n F i l e C o n t e n t s A s L i s t	D 	H	I	H l     �>	J	K�>  	J / ) ########################################   	K �	L	L R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	I 	M	N	M l     �=	O	P�=  	O F @ An AppleScript function that reads a file and returns the lines   	P �	Q	Q �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   r e a d s   a   f i l e   a n d   r e t u r n s   t h e   l i n e s	N 	R	S	R l     �<	T	U�<  	T    from that file as a list.   	U �	V	V 4   f r o m   t h a t   f i l e   a s   a   l i s t .	S 	W	X	W l     �;�:�9�;  �:  �9  	X 	Y	Z	Y i   , /	[	\	[ I      �8	]�7�8 40 returnfilecontentsaslist ReturnFileContentsAsList	] 	^�6	^ o      �5�5 0 thefile  �6  �7  	\ k     	_	_ 	`	a	` r     	b	c	b I    �4	d�3
�4 .rdwropenshor       file	d o     �2�2 0 thefile  �3  	c o      �1�1 0 
filehandle 
fileHandle	a 	e	f	e l   	g	h	i	g r    	j	k	j n    	l	m	l 2   �0
�0 
cpar	m l   	n�/�.	n I   �-	o	p
�- .rdwrread****        ****	o o    	�,�, 0 
filehandle 
fileHandle	p �+	q�*
�+ 
as  	q m   
 �)
�) 
utf8�*  �/  �.  	k o      �(�( 0 thelines theLines	h   important to read UTF8   	i �	r	r .   i m p o r t a n t   t o   r e a d   U T F 8	f 	s	t	s I   �'	u�&
�' .rdwrclosnull���     ****	u o    �%�% 0 
filehandle 
fileHandle�&  	t 	v�$	v L    	w	w o    �#�# 0 thelines theLines�$  	Z 	x	y	x l     �"�!� �"  �!  �   	y 	z	{	z l     �	|	}�  	|    CountNameAndPagesOfPieces   	} �	~	~ 4   C o u n t N a m e A n d P a g e s O f P i e c e s	{ 		�	 l     �	�	��  	� / ) ########################################   	� �	�	� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	� 	�	�	� l     �	�	��  	� p j An AppleScript function that finds lines with "piece X : WWWWWw [Y]" and picks number X and picks pages Y   	� �	�	� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   f i n d s   l i n e s   w i t h   " p i e c e   X   :   W W W W W w   [ Y ] "   a n d   p i c k s   n u m b e r   X   a n d   p i c k s   p a g e s   Y	� 	�	�	� l     ����  �  �  	� 	�	�	� l     �	�	��  	�    CountNameAndPagesOfPieces   	� �	�	� 4   C o u n t N a m e A n d P a g e s O f P i e c e s	� 	�	�	� l     �	�	��  	� / ) ########################################   	� �	�	� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	� 	�	�	� l     �	�	��  	� p j An AppleScript function that finds lines with "piece X : WWWWWw [Y]" and picks number X and picks pages Y   	� �	�	� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   f i n d s   l i n e s   w i t h   " p i e c e   X   :   W W W W W w   [ Y ] "   a n d   p i c k s   n u m b e r   X   a n d   p i c k s   p a g e s   Y	� 	�	�	� l     ����  �  �  	� 	�	�	� i   0 3	�	�	� I      �	��� 60 countnameandpagesofpieces CountNameAndPagesOfPieces	� 	��	� o      �� 0 thelist theList�  �  	� l   �	�	�	�	� k    �	�	� 	�	�	� r     	�	�	� J     ��  	� o      �� 0 thepieceslist thePiecesList	� 	�	�	� r    	�	�	� m    ��  	� o      �� 0 thepageindex thePageIndex	� 	�	�	� r   	 	�	�	� m   	 
��  	� o      �
�
 0 i  	� 	�	�	� X   �	��		�	� k   �	�	� 	�	�	� l   ����  �  �  	� 	��	� Z   �	�	���	� I    $�	��� 0 findtext FindText	� 	�	�	� o    � �  0 	pieceword 	pieceWord	� 	���	� o     ���� 0 theline theLine��  �  	� k   '�	�	� 	�	�	� r   ' ,	�	�	� [   ' *	�	�	� o   ' (���� 0 i  	� m   ( )���� 	� o      ���� 0 i  	� 	�	�	� r   - 2	�	�	� [   - 0	�	�	� o   - .���� 0 thepageindex thePageIndex	� m   . /���� 	� o      ���� 0 thepageindex thePageIndex	� 	�	�	� Z  3 B	�	�����	� o   3 4���� 	0 debug  	� I  7 >��	���
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
psof	� m   i l	�	� �	�	�  [	� ��	���
�� 
psin	� o   m n���� 0 theline theLine��  	� o      ���� 0 firstbracket firstBracket	� 	�
 	� r   u �


 I  u �����

�� .sysooffslong    ��� null��  
 ��


�� 
psof
 m   w z

 �

  ]
 ��
��
�� 
psin
 o   { |���� 0 theline theLine��  
 o      ���� 0 lastbracket lastBracket
  
	


	 l  � ���������  ��  ��  

 


 l  � ���

��  
 - ' put the number after piece in theCount   
 �

 N   p u t   t h e   n u m b e r   a f t e r   p i e c e   i n   t h e C o u n t
 


 r   � �


 I   � ���
���� 0 trim  
 


 n   � �


 7  � ���


�� 
ctxt
 l  � �
����
 [   � �


 o   � ����� &0 piecewordposition pieceWordPosition
 m   � ����� ��  ��  
 l  � �
����
 \   � �

 
 o   � ����� 0 
semicolumn 
semiColumn
  m   � ����� ��  ��  
 o   � ����� 0 theline theLine
 
!��
! m   � �
"
" �
#
#   ��  ��  
 o      ���� 0 	thenumber  
 
$
%
$ l  � ���������  ��  ��  
% 
&
'
& l  � ���
(
)��  
( I Cif debug then display dialog thenumber & " trouv� en position " & i   
) �
*
* � i f   d e b u g   t h e n   d i s p l a y   d i a l o g   t h e n u m b e r   &   "   t r o u v �   e n   p o s i t i o n   "   &   i
' 
+
,
+ Z  � �
-
.����
- o   � ����� 0 verbose  
. I   � ���
/���� 0 dlog  
/ 
0��
0 b   � �
1
2
1 b   � �
3
4
3 o   � ����� 0 	thenumber  
4 m   � �
5
5 �
6
6 &   f o u n d   i n   p o s i t i o n  
2 o   � ����� 0 i  ��  ��  ��  ��  
, 
7
8
7 Z   � �
9
:��
;
9 l  � �
<����
< =   � �
=
>
= ]   � �
?
@
? l  � �
A����
A c   � �
B
C
B o   � ����� 0 	thenumber  
C m   � ���
�� 
long��  ��  
@ m   � ����� 
> ]   � �
D
E
D l  � �
F����
F c   � �
G
H
G o   � ����� 0 i  
H m   � ���
�� 
long��  ��  
E m   � ����� ��  ��  
: r   � �
I
J
I o   � ����� 0 i  
J o      ���� $0 thecountofpieces theCountOfPieces��  
; k   � �
K
K 
L
M
L I  � ���
N��
�� .sysodlogaskr        TEXT
N b   � �
O
P
O b   � �
Q
R
Q b   � �
S
T
S b   � �
U
V
U m   � �
W
W �
X
X ` N u m e r o t a t i o n   d e s   p i � c e s   e r r o n � e s   a p r � s   l a   p i � c e  
V l  � �
Y����
Y \   � �
Z
[
Z o   � ����� 0 i  
[ m   � ����� ��  ��  
T m   � �
\
\ �
]
] $   ( p i � c e   n u m � r o t � e  
R o   � ����� 0 	thenumber  
P m   � �
^
^ �
_
_  ) .��  
M 
`
a
` I  � ���
b��
�� .ascrcmnt****      � ****
b b   � �
c
d
c m   � �
e
e �
f
f l s t o p p i n g   :   e r r o r   i n   a t t a c h m e n t s   n u m b e r i n g   a f t e r   p i e c e  
d l  � �
g����
g \   � �
h
i
h o   � ����� 0 i  
i m   � ����� ��  ��  ��  
a 
j��
j R   � �����
k
�� .ascrerr ****      � ****��  
k ��
l��
�� 
errn
l m   � ���������  ��  
8 
m
n
m l  � ���������  ��  ��  
n 
o
p
o l  � ���
q
r��  
q , & put the number in bracket in thePages   
r �
s
s L   p u t   t h e   n u m b e r   i n   b r a c k e t   i n   t h e P a g e s
p 
t
u
t r   �
v
w
v I   ���
x���� 0 trim  
x 
y
z
y n   �
{
|
{ 7  ���
}
~
�� 
ctxt
} l 	
����
 [  	
�
�
� o  ���� 0 firstbracket firstBracket
� m  ���� ��  ��  
~ l 

����
� \  

�
�
� o  �~�~ 0 lastbracket lastBracket
� m  �}�} ��  �  
| o   � ��|�| 0 theline theLine
z 
��{
� m  
�
� �
�
�   �{  ��  
w o      �z�z 0 thepages thePages
u 
�
�
� l �y�x�w�y  �x  �w  
� 
�
�
� l �v�u�t�v  �u  �t  
� 
�
�
� l �s
�
��s  
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
� I  2�r
��q�r 0 trim  
� 
�
�
� n  +
�
�
� 7 +�p
�
�
�p 
ctxt
� l !%
��o�n
� [  !%
�
�
� o  "#�m�m 0 
semicolumn 
semiColumn
� m  #$�l�l �o  �n  
� l &*
��k�j
� \  &*
�
�
� o  '(�i�i 0 firstbracket firstBracket
� m  ()�h�h �k  �j  
� o  �g�g 0 theline theLine
� 
��f
� m  +.
�
� �
�
�   �f  �q  
� o      �e�e 0 thename theName
� 
�
�
� l 55�d�c�b�d  �c  �b  
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
� Z 5N
�
��[�Z
� o  56�Y�Y 	0 debug  
� I 9J�X
��W
�X .sysodlogaskr        TEXT
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
� o  9:�V�V 0 	thenumber  
� m  :=
�
� �
�
�    |  
� o  >?�U�U 0 thename theName
� m  @C
�
� �
�
�  � | �
� o  DE�T�T 0 thepages thePages�W  �[  �Z  
� 
�
�
� l OO�S
�
��S  
� . ( add theCounts, the Pages in the listing   
� �
�
� P   a d d   t h e C o u n t s ,   t h e   P a g e s   i n   t h e   l i s t i n g
� 
�
�
� l OO�R�Q�P�R  �Q  �P  
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
� o  OP�O�O 0 thepieceslist thePiecesList
� J  PX
�
� 
��N
� J  PV
�
� 
�
�
� o  PQ�M�M 0 	thenumber  
� 
�
�
� o  QR�L�L 0 thepages thePages
� 
�
�
� o  RS�K�K 0 thepageindex thePageIndex
� 
��J
� o  ST�I�I 0 thename theName�J  �N  
� o      �H�H 0 thepieceslist thePiecesList
� - ' beware : we add a list INSIDE the list   
� �
�
� N   b e w a r e   :   w e   a d d   a   l i s t   I N S I D E   t h e   l i s t
� 
�
�
� I \e�G
��F
�G .ascrcmnt****      � ****
� b  \a
�
�
� m  \_
�
� �
�
� L t h i s   i s   t h e   l i s t   o f   f i l e s   w e   w i l l   n e e d
� o  _`�E�E 0 thepieceslist thePiecesList�F  
� 
�
�
� r  fo
�
�
� l fm
��D�C
� \  fm
�
�
� [  fk
�
�
� o  fg�B�B 0 thepageindex thePageIndex
� ]  gj
�
�
� o  gh�A�A 0 thepages thePages
� m  hi�@�@ 
� m  kl�?�? �D  �C  
� o      �>�> 0 thepageindex thePageIndex
� 
�
�
� Z p�
�
��=�<
� o  pq�;�; 	0 debug  
� I t}�:
��9
�: .sysodlogaskr        TEXT
� b  ty
�
�
� m  tw
�
� �
�
�  F i n i s h e s   a t  
� o  wx�8�8 0 thepageindex thePageIndex�9  �=  �<  
� 
��7
� I ���6
��5
�6 .ascrcmnt****      � ****
� b  ��
�
�
� m  ��
�
� �
�
�  F i n i s h e s   a t  
� o  ���4�4 0 thepageindex thePageIndex�5  �7  �  �  �  �	 0 theline theLine	� o    �3�3 0 thelist theList	� 
��2
� L  ��
�
� o  ���1�1 0 thepieceslist thePiecesList�2  	� < 6 returns array of { { X, Y } { X', Y'}, {X", Y"}, ...}   	� �
�
� l   r e t u r n s   a r r a y   o f   {   {   X ,   Y   }   {   X ' ,   Y ' } ,   { X " ,   Y " } ,   . . . }	� 
�
�
� l     �0�/�.�0  �/  �.  
� 
�
�
� l     �-�,�+�-  �,  �+  
� 
� 
� l     �*�)�(�*  �)  �(     l     �'�'     DetailsOfBordereau    � &   D e t a i l s O f B o r d e r e a u  l     �&	�&   / ) ########################################   	 �

 R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #  l     �%�%   | v An AppleScript function that finds lines with "ITEM : NAME " returns array of { { ITEM1, NAME1}, {ITEM2, NAME2}, ...}    � �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   f i n d s   l i n e s   w i t h   " I T E M   :   N A M E   "   r e t u r n s   a r r a y   o f   {   {   I T E M 1 ,   N A M E 1 } ,   { I T E M 2 ,   N A M E 2 } ,   . . . }  l     �$�#�"�$  �#  �"    i   4 7 I      �!� �! (0 detailsofbordereau DetailsOfBordereau � o      �� 0 thelist theList�  �    l    � k     �  r      J     ��   o      ��  0 thedetailslist theDetailsList  !  X    �"�#" Z    �$%�&$ I    �'�� 0 findtext FindText' ()( o    �� 0 	pieceword 	pieceWord) *�* o    �� 0 theline theLine�  �  % l   �+,�  +  ignore   , �--  i g n o r e�  & k   # �.. /0/ r   # .121 I  # ,��3
� .sysooffslong    ��� null�  3 �45
� 
psof4 m   % &66 �77  :5 �8�
� 
psin8 o   ' (�� 0 theline theLine�  2 o      �� 0 
semicolumn 
semiColumn0 9:9 r   / D;<; I   / B�=�� 0 trim  = >?> n   0 =@A@ 7  1 =�
BC
�
 
ctxtB m   5 7�	�	 C l  8 <D��D \   8 <EFE o   9 :�� 0 
semicolumn 
semiColumnF m   : ;�� �  �  A o   0 1�� 0 theline theLine? G�G m   = >HH �II   �  �  < o      �� 0 thekey theKey: JKJ r   E \LML I   E Z�N� � 0 trim  N OPO n   F UQRQ 7  G U��ST
�� 
ctxtS l  K OU����U [   K OVWV o   L M���� 0 
semicolumn 
semiColumnW m   M N���� ��  ��  T l  P TX����X n   P TYZY 1   R T��
�� 
lengZ o   P R���� 0 theline theLine��  ��  R o   F G���� 0 theline theLineP [��[ m   U V\\ �]]   ��  �   M o      ���� 0 thevalue theValueK ^_^ l  ] ]��������  ��  ��  _ `a` Z  ] pbc����b o   ] ^���� 	0 debug  c I  a l��d��
�� .sysodlogaskr        TEXTd b   a hefe b   a fghg o   a b���� 0 thekey theKeyh m   b eii �jj    |  f o   f g���� 0 thevalue theValue��  ��  ��  a klk Z  q �mn����m o   q t���� 0 verbose  n b   w �opo b   w �qrq b   w |sts m   w zuu �vv * D e t a i l s O f B o r d e r e a u   :  t o   z {���� 0 thekey theKeyr m   | ww �xx    |  p o   � ����� 0 thevalue theValue��  ��  l y��y r   � �z{z b   � �|}| o   � �����  0 thedetailslist theDetailsList} K   � �~~ ������ 0 thekey theKey o   � ����� 0 thevalue theValue��  { o      ����  0 thedetailslist theDetailsList��  � 0 theline theLine# o    	���� 0 thelist theList! ���� L   � ��� o   � �����  0 thedetailslist theDetailsList��   < 6 returns array of { { X, Y } { X', Y'}, {X", Y"}, ...}    ��� l   r e t u r n s   a r r a y   o f   {   {   X ,   Y   }   {   X ' ,   Y ' } ,   { X " ,   Y " } ,   . . . } ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   SumTotalOfPages   � ���     S u m T o t a l O f P a g e s� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   8 ;��� I      ������� "0 sumtotalofpages SumTotalOfPages� ���� o      ���� @0 anarrayofarrayofnumberandpages anArrayofArrayOfNumberAndPages��  ��  � k     [�� ��� r     ��� m     ����  � o      ���� 0 thetotal theTotal� ��� X    V����� k    Q�� ��� r    ��� n    ��� 4    ���
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
   t r i m� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � F @ An AppleScript function that trim theseCharacters from someText   � ��� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   t r i m   t h e s e C h a r a c t e r s   f r o m   s o m e T e x t� ��� l     ��������  ��  ��  � ��� i   < ?   I      ������ 0 trim    o      ���� 0 sometext someText �� o      ���� "0 thesecharacters theseCharacters��  ��   k     ]  l     ��	
��  	 @ : Lazy default (AppleScript doesn't support default values)   
 � t   L a z y   d e f a u l t   ( A p p l e S c r i p t   d o e s n ' t   s u p p o r t   d e f a u l t   v a l u e s )  Z    ���� =     o     ���� "0 thesecharacters theseCharacters m    ��
�� boovtrue r     J      m     �     1    ��
�� 
tab   I   ����
�� .sysontocTEXT       shor m    	���� 
��    o    ��
�� 
ret   !  m    "" �##  
! $��$ I   ��%��
�� .sysontocTEXT       shor% m    ����  ��  ��   o      ���� "0 thesecharacters theseCharacters��  ��   &'& l   ����~��  �  �~  ' ()( W    ;*+* r   ) 6,-, n   ) 4./. 7  * 4�}01
�} 
ctxt0 m   . 0�|�| 1 m   1 3�{�{��/ o   ) *�z�z 0 sometext someText- o      �y�y 0 sometext someText+ H   ! (22 E  ! '343 o   ! "�x�x "0 thesecharacters theseCharacters4 n   " &565 4  # &�w7
�w 
cha 7 m   $ %�v�v 6 o   " #�u�u 0 sometext someText) 898 l  < <�t�s�r�t  �s  �r  9 :;: W   < Z<=< r   H U>?> n   H S@A@ 7  I S�qBC
�q 
ctxtB m   M O�p�p C m   P R�o�o��A o   H I�n�n 0 sometext someText? o      �m�m 0 sometext someText= H   @ GDD E  @ FEFE o   @ A�l�l "0 thesecharacters theseCharactersF n   A EGHG 4  B E�kI
�k 
cha I m   C D�j�j��H o   A B�i�i 0 sometext someText; JKJ l  [ [�h�g�f�h  �g  �f  K L�eL L   [ ]MM o   [ \�d�d 0 sometext someText�e  � NON l     �c�b�a�c  �b  �a  O PQP l     �`�_�^�`  �_  �^  Q RSR l     �]�\�[�]  �\  �[  S TUT l     �ZVW�Z  V  
 splitText   W �XX    s p l i t T e x tU YZY l     �Y[\�Y  [ / ) ########################################   \ �]] R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #Z ^_^ l     �X`a�X  ` I C An AppleScript function that explodes into a list the string items   a �bb �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   e x p l o d e s   i n t o   a   l i s t   t h e   s t r i n g   i t e m s_ cdc l     �W�V�U�W  �V  �U  d efe i   @ Cghg I      �Ti�S�T 0 	splittext 	splitTexti jkj o      �R�R 0 thetext theTextk l�Ql o      �P�P 0 thedelimiter theDelimiter�Q  �S  h l    mnom k     pp qrq r     sts o     �O�O 0 thedelimiter theDelimitert n     uvu 1    �N
�N 
txdlv 1    �M
�M 
ascrr wxw r    yzy n    	{|{ 2    	�L
�L 
citm| o    �K�K 0 thetext theTextz o      �J�J 0 thetextitems theTextItemsx }~} r    � m    �� ���  � n     ��� 1    �I
�I 
txdl� 1    �H
�H 
ascr~ ��G� L    �� o    �F�F 0 thetextitems theTextItems�G  n   returns a list   o ���    r e t u r n s   a   l i s tf ��� l     �E�D�C�E  �D  �C  � ��� l     �B�A�@�B  �A  �@  � ��� l     �?���?  �   convertListToString   � ��� (   c o n v e r t L i s t T o S t r i n g� ��� l     �>���>  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     �=���=  � I C An AppleScript function that explodes into a list the string items   � ��� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   e x p l o d e s   i n t o   a   l i s t   t h e   s t r i n g   i t e m s� ��� l     �<�;�:�<  �;  �:  � ��� i   D G��� I      �9��8�9 0 convertlisttostring  � ��� o      �7�7 0 thelist theList� ��6� o      �5�5 0 thedelimiter theDelimiter�6  �8  � k     �� ��� r     ��� o     �4�4 0 thedelimiter theDelimiter� n     ��� 1    �3
�3 
txdl� 1    �2
�2 
ascr� ��� r    ��� c    	��� o    �1�1 0 thelist theList� m    �0
�0 
TEXT� o      �/�/ 0 	thestring 	theString� ��� r    ��� m    �� ���  � n     ��� 1    �.
�. 
txdl� 1    �-
�- 
ascr� ��,� L    �� o    �+�+ 0 	thestring 	theString�,  � ��� l     �*�)�(�*  �)  �(  � ��� l     �'�&�%�'  �&  �%  � ��� l     �$���$  �   deleteFolderAtPath   � ��� &   d e l e t e F o l d e r A t P a t h� ��� l     �#���#  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     �"���"  � C = An AppleScript function that delete a folder in a given path   � ��� z   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   d e l e t e   a   f o l d e r   i n   a   g i v e n   p a t h� ��� l     �!� ��!  �   �  � ��� i   H K��� I      ���� (0 deletefolderatpath deleteFolderAtPath� ��� o      �� 0 thepath  � ��� o      �� 0 
foldername  �  �  � l    -���� Q     -���� k    �� ��� O    ��� k    �� ��� l   ����  � l fset newfo to POSIX path of (make new folder at POSIX file (thepath) with properties {name:foldername})   � ��� � s e t   n e w f o   t o   P O S I X   p a t h   o f   ( m a k e   n e w   f o l d e r   a t   P O S I X   f i l e   ( t h e p a t h )   w i t h   p r o p e r t i e s   { n a m e : f o l d e r n a m e } )� ��� r    ��� c    ��� 4    ��
� 
psxf� l  	 ���� b   	 ��� o   	 
�� 0 thepath  � o   
 �� 0 
foldername  �  �  � m    �
� 
ctxt� o      �� 0 
deletefile 
deleteFile� ��� I   ���
� .coredelonull���     obj � o    �� 0 
deletefile 
deleteFile�  �  � m    ���                                                                                  MACS  alis    :  	MacOSSlim                      BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p   	 M a c O S S l i m  &System/Library/CoreServices/Finder.app  / ��  � ��� L    �� o    �� 	0 newfo  �  � R      ��
�	
� .ascrerr ****      � ****�
  �	  � k   # -�� ��� I  # (���
� .ascrcmnt****      � ****� m   # $�� ���  f a i l�  � ��� L   ) -   b   ) , o   ) *�� 0 thepath   o   * +�� 0 
foldername  �  �   return bool   � �    r e t u r n   b o o l�  l     ����  �  �    l     � �����   ��  ��   	 l     ��������  ��  ��  	 

 l     ����     createFolderAtPath    � &   c r e a t e F o l d e r A t P a t h  l     ����   / ) ########################################    � R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #  l     ����   D > An AppleScript function that creates a folder in a given path    � |   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   c r e a t e s   a   f o l d e r   i n   a   g i v e n   p a t h  l     ��������  ��  ��    i   L O I      ������ (0 createfolderatpath createFolderAtPath  !  o      ���� 0 thepath  ! "��" o      ���� 0 
foldername  ��  ��   l    ,#$%# Q     ,&'(& k     )) *+* O    ,-, r    ./. n    010 1    ��
�� 
psxp1 l   2����2 I   ����3
�� .corecrel****      � null��  3 ��45
�� 
kocl4 m   	 
��
�� 
cfol5 ��67
�� 
insh6 4    ��8
�� 
psxf8 l   9����9 o    ���� 0 thepath  ��  ��  7 ��:��
�� 
prdt: K    ;; ��<��
�� 
pnam< o    ���� 0 
foldername  ��  ��  ��  ��  / o      ���� 	0 newfo  - m    ==�                                                                                  MACS  alis    :  	MacOSSlim                      BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p   	 M a c O S S l i m  &System/Library/CoreServices/Finder.app  / ��  + >��> L     ?? o    ���� 	0 newfo  ��  ' R      ������
�� .ascrerr ****      � ****��  ��  ( L   ( ,@@ b   ( +ABA o   ( )���� 0 thepath  B o   ) *���� 0 
foldername  $   return bool   % �CC    r e t u r n   b o o l DED l     ��������  ��  ��  E FGF l     ��������  ��  ��  G HIH l     ��JK��  J   prefixFileListWithPath   K �LL .   p r e f i x F i l e L i s t W i t h P a t hI MNM l     ��OP��  O / ) ########################################   P �QQ R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #N RSR l     ��TU��  T f ` An AppleScript function that takes a list of files and return their locations with a given path   U �VV �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   t a k e s   a   l i s t   o f   f i l e s   a n d   r e t u r n   t h e i r   l o c a t i o n s   w i t h   a   g i v e n   p a t hS WXW l     ��������  ��  ��  X YZY i   P S[\[ I      ��]���� 00 prefixfilelistwithpath prefixFileListWithPath] ^_^ o      ���� 0 thepath  _ `��` o      ���� 0 filelist  ��  ��  \ l    (abca k     (dd efe r     ghg J     ����  h o      ���� 0 filelistwithpath  f iji X    %k��lk k     mm non r    pqp b    rsr o    ���� 0 filelistwithpath  s J    tt u��u l   v����v b    wxw o    ���� 0 thepath  x o    ���� 0 thefile  ��  ��  ��  q o      ���� 0 filelistwithpath  o y��y l   ��������  ��  ��  ��  �� 0 thefile  l o    	���� 0 filelist  j z��z L   & ({{ o   & '���� 0 filelistwithpath  ��  b !  return file list with path   c �|| 6   r e t u r n   f i l e   l i s t   w i t h   p a t hZ }~} l     ��������  ��  ��  ~ � l     ������  � #  prefixFileListWithPathQuoted   � ��� :   p r e f i x F i l e L i s t W i t h P a t h Q u o t e d� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � m g An AppleScript function that takes a list of files and return their locations with a given QUOTED path   � ��� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   t a k e s   a   l i s t   o f   f i l e s   a n d   r e t u r n   t h e i r   l o c a t i o n s   w i t h   a   g i v e n   Q U O T E D   p a t h� ��� l     ��������  ��  ��  � ��� i   T W��� I      ������� <0 prefixfilelistwithpathquoted prefixFileListWithPathQuoted� ��� o      ���� 0 thepath  � ���� o      ���� 0 filelist  ��  ��  � l    *���� k     *�� ��� r     ��� J     ����  � o      ���� 0 filelistwithpath  � ��� X    '����� k    "�� ��� r     ��� b    ��� o    ���� 0 filelistwithpath  � J    �� ���� l   ������ n    ��� 1    ��
�� 
strq� l   ������ b    ��� o    ���� 0 thepath  � o    ���� 0 thefile  ��  ��  ��  ��  ��  � o      ���� 0 filelistwithpath  � ���� l  ! !��������  ��  ��  ��  �� 0 thefile  � o    	���� 0 filelist  � ���� L   ( *�� o   ( )���� 0 filelistwithpath  ��  �    return file list with pth   � ��� 4   r e t u r n   f i l e   l i s t   w i t h   p t h� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   watermarkFilePY   � ���     w a t e r m a r k F i l e P Y� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � D > pass a file to watermark, a file to save in, and a stamp file   � ��� |   p a s s   a   f i l e   t o   w a t e r m a r k ,   a   f i l e   t o   s a v e   i n ,   a n d   a   s t a m p   f i l e� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   X [��� I      ������� "0 watermarkfilepy watermarkFilePY� ��� o      ����  0 thefiletostamp theFileToStamp� ��� o      ���� 0 
thenewfile 
theNewFile� ��� o      �~�~ 0 thestampfile theStampFile�  ��  � l    Z���� k     Z�� ��� l     �}�|�{�}  �|  �{  � ��� l     �z���z  �  set theX to "450.0"   � ��� & s e t   t h e X   t o   " 4 5 0 . 0 "� ��� l     �y���y  �  set theY to "700"   � ��� " s e t   t h e Y   t o   " 7 0 0 "� ��� l     �x���x  � B < we now use global position variables, declared at beginning   � ��� x   w e   n o w   u s e   g l o b a l   p o s i t i o n   v a r i a b l e s ,   d e c l a r e d   a t   b e g i n n i n g� ��� r     ��� m     �� ���  - 2 0� o      �w�w 0 theangle  � ��� r    ��� m    �� ���  0 . 2� o      �v�v 0 thesize  � ��� r    ��� m    	�� ���  1� o      �u�u 0 
theopacity 
theOpacity� � � l   �t�s�r�t  �s  �r     r    / b    - b    + b    )	
	 b    ' b    % b    # b    ! b     b     b     b     b     b     b      b    !"! b    #$# m    %% �&&n ' # ! / u s r / b i n / p y t h o n 
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
 i n p u t F i l e =   "$ o    �q�q  0 thefiletostamp theFileToStamp" m    '' �(( $ " 
 i m a g e s f i l e s   =   ( "  o    �p�p 0 thestampfile theStampFile m    )) �** " " , ) 
 o u t p u t F i l e =   " o    �o�o 0 
thenewfile 
theNewFile m    ++ �,, n " 
 w a t e r m a r k ( i n p u t F i l e ,   i m a g e s f i l e s ,   o u t p u t F i l e ,   F a l s e ,   o    �n�n 0 thex theX m    -- �..  ,   o    �m�m 0 they theY m     // �00  ,   o   ! "�l�l 0 theangle   m   # $11 �22  , o   % &�k�k 0 thesize  
 m   ' (33 �44    ,   o   ) *�j�j 0 
theopacity 
theOpacity m   + ,55 �66  ,   F a l s e ) ' o      �i�i 0 	thescript   787 l  0 0�h�g�f�h  �g  �f  8 9:9 r   0 9;<; I  0 7�e=�d
�e .sysoexecTEXT���     TEXT= b   0 3>?> m   0 1@@ �AA  p y t h o n   - c  ? o   1 2�c�c 0 	thescript  �d  < o      �b�b 0 
stampedpdf  : BCB Z  : MDE�a�`D o   : =�_�_ 	0 debug  E I  @ I�^F�]
�^ .sysodlogaskr        TEXTF b   @ EGHG m   @ CII �JJ " w a t e r m a r k F i l e P Y :  H o   C D�\�\ 0 
stampedpdf  �]  �a  �`  C KLK I  N W�[M�Z
�[ .ascrcmnt****      � ****M b   N SNON m   N QPP �QQ " w a t e r m a r k F i l e P Y :  O o   Q R�Y�Y 0 
stampedpdf  �Z  L R�XR L   X ZSS o   X Y�W�W 0 
thenewfile 
theNewFile�X  �   return the file   � �TT     r e t u r n   t h e   f i l e� UVU l     �V�U�T�V  �U  �T  V WXW l     �SYZ�S  Y   remove_extension   Z �[[ "   r e m o v e _ e x t e n s i o nX \]\ l     �R^_�R  ^ / ) ########################################   _ �`` R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #] aba l     �Qcd�Q  c 1 + pass a file name returns without extension   d �ee V   p a s s   a   f i l e   n a m e   r e t u r n s   w i t h o u t   e x t e n s i o nb fgf l     �P�O�N�P  �O  �N  g hih i   \ _jkj I      �Ml�L�M 0 remove_extension  l m�Km o      �J�J 0 	this_name  �K  �L  k k     <nn opo Z     9qr�I�Hq E     sts o     �G�G 0 	this_name  t m    uu �vv  .r k    5ww xyx r    z{z c    |}| l 	  ~�F�E~ l   �D�C l   ��B�A� n    ��� 1   	 �@
�@ 
rvse� n    	��� 2    	�?
�? 
cha � o    �>�> 0 	this_name  �B  �A  �D  �C  �F  �E  } m    �=
�= 
TEXT{ o      �<�< 0 	this_name  y ��� r    ��� l   ��;�:� I   �9�8�
�9 .sysooffslong    ��� null�8  � �7��
�7 
psof� m    �� ���  .� �6��5
�6 
psin� o    �4�4 0 	this_name  �5  �;  �:  � o      �3�3 0 x  � ��� r    +��� l   )��2�1� n    )��� 7   )�0��
�0 
ctxt� l  ! %��/�.� [   ! %��� o   " #�-�- 0 x  � m   # $�,�, �/  �.  � m   & (�+�+��� o    �*�* 0 	this_name  �2  �1  � o      �)�) 0 	this_name  � ��(� r   , 5��� c   , 3��� l  , 1��'�&� l  , 1��%�$� n   , 1��� 1   / 1�#
�# 
rvse� n   , /��� 2   - /�"
�" 
cha � o   , -�!�! 0 	this_name  �%  �$  �'  �&  � m   1 2� 
�  
TEXT� o      �� 0 	this_name  �(  �I  �H  p ��� L   : <�� o   : ;�� 0 	this_name  �  i ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � x r Logs a text representation of the specified object or objects, which may be of any type, typically for debugging.   � ��� �   L o g s   a   t e x t   r e p r e s e n t a t i o n   o f   t h e   s p e c i f i e d   o b j e c t   o r   o b j e c t s ,   w h i c h   m a y   b e   o f   a n y   t y p e ,   t y p i c a l l y   f o r   d e b u g g i n g .� ��� l     ����  � J D Works hard to find a meaningful text representation of each object.   � ��� �   W o r k s   h a r d   t o   f i n d   a   m e a n i n g f u l   t e x t   r e p r e s e n t a t i o n   o f   e a c h   o b j e c t .� ��� l     ����  �  	 SYNOPSIS   � ���    S Y N O P S I S� ��� l     ����  � $    dlog(anyObjOrListOfObjects)   � ��� <       d l o g ( a n y O b j O r L i s t O f O b j e c t s )� ��� l     ����  �   USE EXAMPLES   � ���    U S E   E X A M P L E S� ��� l     ����  � ( "   dlog("before")  # single object   � ��� D       d l o g ( " b e f o r e " )     #   s i n g l e   o b j e c t� ��� l     ����  � E ?     dlog({ "front window: ", front window }) # list of objects   � ��� ~           d l o g ( {   " f r o n t   w i n d o w :   " ,   f r o n t   w i n d o w   } )   #   l i s t   o f   o b j e c t s� ��� l     ����  �   SETUP   � ���    S E T U P� ��� l     ����  � � �   At the top of your script, define global variable DLOG_TARGETS and set it to a *list* of targets (even if you only have 1 target).   � ���
       A t   t h e   t o p   o f   y o u r   s c r i p t ,   d e f i n e   g l o b a l   v a r i a b l e   D L O G _ T A R G E T S   a n d   s e t   i t   t o   a   * l i s t *   o f   t a r g e t s   ( e v e n   i f   y o u   o n l y   h a v e   1   t a r g e t ) .� ��� l     �
���
  � u o     set DLOG_TARGETS to {} # must be a list with any combination of: "log", "syslog", "alert", <posixFilePath>   � ��� �           s e t   D L O G _ T A R G E T S   t o   { }   #   m u s t   b e   a   l i s t   w i t h   a n y   c o m b i n a t i o n   o f :   " l o g " ,   " s y s l o g " ,   " a l e r t " ,   < p o s i x F i l e P a t h >� ��� l     �	���	  � A ;   An *empty* list means that logging should be *disabled*.   � ��� v       A n   * e m p t y *   l i s t   m e a n s   t h a t   l o g g i n g   s h o u l d   b e   * d i s a b l e d * .� ��� l     ����  � j d   If you specify a POSIX file path, the file will be *appended* to; variable references in the path   � ��� �       I f   y o u   s p e c i f y   a   P O S I X   f i l e   p a t h ,   t h e   f i l e   w i l l   b e   * a p p e n d e d *   t o ;   v a r i a b l e   r e f e r e n c e s   i n   t h e   p a t h� ��� l     ����  � ^ X   are allowed, and as a courtesy the path may start with "~" to refer to your home dir.   � ��� �       a r e   a l l o w e d ,   a n d   a s   a   c o u r t e s y   t h e   p a t h   m a y   s t a r t   w i t h   " ~ "   t o   r e f e r   t o   y o u r   h o m e   d i r .� ��� l     ����  � ~ x   Caveat: while you can *remove* the variable definition to disable logging, you'll take an additional performance hit.   � ��� �       C a v e a t :   w h i l e   y o u   c a n   * r e m o v e *   t h e   v a r i a b l e   d e f i n i t i o n   t o   d i s a b l e   l o g g i n g ,   y o u ' l l   t a k e   a n   a d d i t i o n a l   p e r f o r m a n c e   h i t .� ��� l     ����  �   SETUP EXAMPLES   � ���    S E T U P   E X A M P L E S� ��� l     ����  � ] W    For instance, to use both AppleScript's log command *and* display a GUI alert, use:   � ��� �         F o r   i n s t a n c e ,   t o   u s e   b o t h   A p p l e S c r i p t ' s   l o g   c o m m a n d   * a n d *   d i s p l a y   a   G U I   a l e r t ,   u s e :� � � l     ��   3 -       set DLOG_TARGETS to { "log", "alert" }    � Z               s e t   D L O G _ T A R G E T S   t o   {   " l o g " ,   " a l e r t "   }   l     ��     Note:     �    N o t e :   	
	 l     ��   Y S   - Since the subroutine is still called even when DLOG_TARGETS is an empty list,     � �       -   S i n c e   t h e   s u b r o u t i n e   i s   s t i l l   c a l l e d   e v e n   w h e n   D L O G _ T A R G E T S   i s   a n   e m p t y   l i s t ,  
  l     � �    O I     you pay a performancy penalty for leaving dlog() calls in your code.    � �           y o u   p a y   a   p e r f o r m a n c y   p e n a l t y   f o r   l e a v i n g   d l o g ( )   c a l l s   i n   y o u r   c o d e .  l     ����   ` Z   - Unlike with the built-in log() method, you MUST use parentheses around the parameter.    � �       -   U n l i k e   w i t h   t h e   b u i l t - i n   l o g ( )   m e t h o d ,   y o u   M U S T   u s e   p a r e n t h e s e s   a r o u n d   t h e   p a r a m e t e r .  l     ����   o i   - To specify more than one object, pass a *list*. Note that while you could try to synthesize a single    � �       -   T o   s p e c i f y   m o r e   t h a n   o n e   o b j e c t ,   p a s s   a   * l i s t * .   N o t e   t h a t   w h i l e   y o u   c o u l d   t r y   t o   s y n t h e s i z e   a   s i n g l e  l     �� ��   q k     output string by concatenation yourself, you'd lose the benefit of this subroutine's ability to derive     �!! �           o u t p u t   s t r i n g   b y   c o n c a t e n a t i o n   y o u r s e l f ,   y o u ' d   l o s e   t h e   b e n e f i t   o f   t h i s   s u b r o u t i n e ' s   a b i l i t y   t o   d e r i v e "#" l     ��$%��  $ g a     readable text representations even of objects that can't simply be converted with `as text`.   % �&& �           r e a d a b l e   t e x t   r e p r e s e n t a t i o n s   e v e n   o f   o b j e c t s   t h a t   c a n ' t   s i m p l y   b e   c o n v e r t e d   w i t h   ` a s   t e x t ` .# '(' i   ` c)*) I      ��+���� 0 dlog  + ,��, o      ���� .0 anyobjorlistofobjects anyObjOrListOfObjects��  ��  * k    �-- ./. p      00 ������ 0 dlog_targets DLOG_TARGETS��  / 121 Q     3453 Z   67����6 =   898 n    :;: 1    ��
�� 
leng; o    ���� 0 dlog_targets DLOG_TARGETS9 m    ����  7 L    ����  ��  ��  4 R      ������
�� .ascrerr ****      � ****��  ��  5 L    ����  2 <=< l   ��>?��  > ] W The following tries hard to derive a readable representation from the input object(s).   ? �@@ �   T h e   f o l l o w i n g   t r i e s   h a r d   t o   d e r i v e   a   r e a d a b l e   r e p r e s e n t a t i o n   f r o m   t h e   i n p u t   o b j e c t ( s ) .= ABA Z   -CD����C >   !EFE n    GHG m    ��
�� 
pclsH o    ���� .0 anyobjorlistofobjects anyObjOrListOfObjectsF m     ��
�� 
listD r   $ )IJI J   $ 'KK L��L o   $ %���� .0 anyobjorlistofobjects anyObjOrListOfObjects��  J o      ���� .0 anyobjorlistofobjects anyObjOrListOfObjects��  ��  B MNM q   . .OO ��P�� 0 lst  P ��Q�� 0 i  Q ��R�� 0 txt  R ��S�� 0 errmsg errMsgS ��T�� 0 orgtids orgTidsT ��U�� 0 oname oNameU ��V�� 
0 oid oIdV ��W�� 
0 prefix  W ��X�� 0 	logtarget 	logTargetX ��Y�� 0 txtcombined txtCombinedY ��Z�� 0 
prefixtime 
prefixTimeZ ������  0 prefixdatetime prefixDateTime��  N [\[ r   . 2]^] J   . 0����  ^ o      ���� 0 lst  \ _`_ X   3�a��ba k   C�cc ded r   C Ffgf m   C Dhh �ii  g o      ���� 0 txt  e jkj Y   G �l��mn��l k   Q �oo pqp Q   Q �rstr Z   T �uv��wu =  T Wxyx o   T U���� 0 i  y m   U V���� v Z   Z �z{��|z =  Z _}~} n   Z ]� m   [ ]��
�� 
pcls� o   Z [���� 0 anyobj anyObj~ m   ] ^��
�� 
list{ k   b ��� ��� l  b {���� r   b {��� J   b j�� ��� n  b e��� 1   c e��
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
ascr�   '   � ���    '��  ��  | r   � ���� c   � ���� o   � ����� 0 anyobj anyObj� m   � ���
�� 
TEXT� o      ���� 0 txt  ��  w r   � ���� c   � ���� n   � ���� 1   � ���
�� 
pALL� o   � ����� 0 anyobj anyObj� m   � ���
�� 
TEXT� o      ���� 0 txt  s R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg��  t k   � ��� ��� l  � �������  � 3 - Trick for records and record-*like* objects:   � ��� Z   T r i c k   f o r   r e c o r d s   a n d   r e c o r d - * l i k e *   o b j e c t s :� ��� l  � �������  � � � We exploit the fact that the error message contains the desired string representation of the record, so we extract it from there. This (still) works as of AS 2.3 (OS X 10.9).   � ���^   W e   e x p l o i t   t h e   f a c t   t h a t   t h e   e r r o r   m e s s a g e   c o n t a i n s   t h e   d e s i r e d   s t r i n g   r e p r e s e n t a t i o n   o f   t h e   r e c o r d ,   s o   w e   e x t r a c t   i t   f r o m   t h e r e .   T h i s   ( s t i l l )   w o r k s   a s   o f   A S   2 . 3   ( O S   X   1 0 . 9 ) .� ���� Q   � ������ r   � ���� I  � ������
�� .sysoexecTEXT���     TEXT� b   � ���� m   � ��� ��� , e g r e p   - o   ' \ { . * \ } '   < < <  � n   � ���� 1   � ���
�� 
strq� o   � ����� 0 errmsg errMsg��  � o      ���� 0 txt  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  q ���� Z  � �������� >  � ���� o   � ����� 0 txt  � m   � ��� ���  �  S   � ���  ��  ��  �� 0 i  m m   J K���� n m   K L���� ��  k ��� r   � ���� m   � ��� ���  � o      ���� 
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
msng� k  ��� ��� r  � � b   m  
 �  [ n  
 m  ��
�� 
pcls o  
���� 0 anyobj anyObj  o      ���� 
0 prefix  �  r  	
	 m   �  
 o      ���� 0 oname oName  r   m   �   o      ���� 
0 oid oId  Q  J�� k   A  r   ' n   % 1  !%��
�� 
pnam o   !���� 0 anyobj anyObj o      ���� 0 oname oName �� Z (A ���� > (-!"! o  ()���� 0 oname oName" m  ),�
� 
msng  r  0=#$# b  0;%&% b  07'(' b  05)*) o  01�~�~ 
0 prefix  * m  14++ �,,    n a m e = "( o  56�}�} 0 oname oName& m  7:-- �..  "$ o      �|�| 
0 prefix  ��  ��  ��   R      �{�z�y
�{ .ascrerr ****      � ****�z  �y  ��   /0/ Q  Kt12�x1 k  Nk33 454 r  NU676 n  NS898 1  OS�w
�w 
ID  9 o  NO�v�v 0 anyobj anyObj7 o      �u�u 
0 oid oId5 :�t: Z Vk;<�s�r; > V[=>= o  VW�q�q 
0 oid oId> m  WZ�p
�p 
msng< r  ^g?@? b  ^eABA b  ^cCDC o  ^_�o�o 
0 prefix  D m  _bEE �FF    i d =B o  cd�n�n 
0 oid oId@ o      �m�m 
0 prefix  �s  �r  �t  2 R      �l�k�j
�l .ascrerr ****      � ****�k  �j  �x  0 GHG r  u|IJI b  uzKLK o  uv�i�i 
0 prefix  L m  vyMM �NN  ]  J o      �h�h 
0 prefix  H O�gO r  }�PQP b  }�RSR o  }~�f�f 
0 prefix  S o  ~�e�e 0 txt  Q o      �d�d 0 txt  �g  ��  ��  � T�cT r  ��UVU b  ��WXW o  ���b�b 0 lst  X o  ���a�a 0 txt  V o      �`�` 0 lst  �c  �� 0 anyobj anyObjb o   6 7�_�_ .0 anyobjorlistofobjects anyObjOrListOfObjects` YZY l ��[\][ r  ��^_^ J  ��`` aba n ��cdc 1  ���^
�^ 
txdld 1  ���]
�] 
ascrb e�\e J  ��ff g�[g m  ��hh �ii   �[  �\  _ J      jj klk o      �Z�Z 0 orgtids orgTidsl m�Ym n     non 1  ���X
�X 
txdlo 1  ���W
�W 
ascr�Y  \   '   ] �pp    'Z qrq r  ��sts c  ��uvu o  ���V�V 0 lst  v m  ���U
�U 
TEXTt o      �T�T 0 txtcombined txtCombinedr wxw r  ��yzy b  ��{|{ b  ��}~} m  �� ���  [~ n  ����� 1  ���S
�S 
tstr� l ����R�Q� I ���P�O�N
�P .misccurdldt    ��� null�O  �N  �R  �Q  | m  ���� ���  ]  z o      �M�M 0 
prefixtime 
prefixTimex ��� r  ����� b  ����� b  ����� b  ����� m  ���� ���  [� n  ����� 1  ���L
�L 
shdt� l ����K�J� I ���I�H�G
�I .misccurdldt    ��� null�H  �G  �K  �J  � m  ���� ���   � n  ����� 7 ���F��
�F 
ctxt� m  ���E�E � m  ���D�D��� o  ���C�C 0 
prefixtime 
prefixTime� o      �B�B  0 prefixdatetime prefixDateTime� ��� l ������ r  ����� o  ���A�A 0 orgtids orgTids� n     ��� 1  ���@
�@ 
txdl� 1  ���?
�? 
ascr�   '   � ���    '� ��� l ���>���>  � 0 * Log the result to every target specified.   � ��� T   L o g   t h e   r e s u l t   t o   e v e r y   t a r g e t   s p e c i f i e d .� ��=� X  ����<�� Z   ������ =  	��� n   ��� 1  �;
�; 
pcnt� o   �:�: 0 	logtarget 	logTarget� m  �� ���  l o g� I �9��8
�9 .ascrcmnt****      � ****� b  ��� o  �7�7 0 
prefixtime 
prefixTime� o  �6�6 0 txtcombined txtCombined�8  � ��� = ��� n  ��� 1  �5
�5 
pcnt� o  �4�4 0 	logtarget 	logTarget� m  �� ��� 
 a l e r t� ��� I ")�3��2
�3 .sysodisAaleR        TEXT� b  "%��� o  "#�1�1 0 
prefixtime 
prefixTime� o  #$�0�0 0 txtcombined txtCombined�2  � ��� = ,5��� n  ,1��� 1  -1�/
�/ 
pcnt� o  ,-�.�. 0 	logtarget 	logTarget� m  14�� ���  s y s l o g� ��-� I 8W�,��+
�, .sysoexecTEXT���     TEXT� b  8S��� b  8M��� b  8I��� m  8;�� ���  l o g g e r   - t  � n  ;H��� 1  DH�*
�* 
strq� l ;D��)�(� b  ;D��� m  ;>�� ���  A S :  � l >C��'�&� n  >C��� 1  ?C�%
�% 
pnam�  f  >?�'  �&  �)  �(  � m  IL�� ���   � n  MR��� 1  NR�$
�$ 
strq� o  MN�#�# 0 txtcombined txtCombined�+  �-  � l Z����� k  Z��� ��� r  Za��� n  Z_��� 1  [_�"
�" 
pcnt� o  Z[�!�! 0 	logtarget 	logTarget� o      � �  	0 fpath  � ��� Z b������ C  bg��� o  bc�� 	0 fpath  � m  cf�� ���  ~ /� r  j}��� b  j{��� m  jm�� ���  $ H O M E /� n  mz� � 7 nz�
� 
ctxt m  tv��  m  wy����  o  mn�� 	0 fpath  � o      �� 	0 fpath  �  �  � � I ����
� .sysoexecTEXT���     TEXT b  �� b  �� b  ��	
	 b  �� m  �� �  p r i n t f   ' % s \ n '   n  �� 1  ���
� 
strq l ���� b  �� o  ����  0 prefixdatetime prefixDateTime o  ���� 0 txtcombined txtCombined�  �  
 m  �� � 
   > >   " o  ���� 	0 fpath   m  �� �  "�  �  � 6 0 assumed to be a POSIX file path to *append* to.   � � `   a s s u m e d   t o   b e   a   P O S I X   f i l e   p a t h   t o   * a p p e n d *   t o .�< 0 	logtarget 	logTarget� o  ���� 0 dlog_targets DLOG_TARGETS�=  (  l     ����  �  �    l     �
�	��
  �	  �    l     � �   u o Converts the specified object - which may be of any type - into a string representation for logging/debugging.     �!! �   C o n v e r t s   t h e   s p e c i f i e d   o b j e c t   -   w h i c h   m a y   b e   o f   a n y   t y p e   -   i n t o   a   s t r i n g   r e p r e s e n t a t i o n   f o r   l o g g i n g / d e b u g g i n g . "#" l     �$%�  $ � � Tries hard to find a readable representation - sadly, simple conversion with `as text` mostly doesn't work with non-primitive types.   % �&&
   T r i e s   h a r d   t o   f i n d   a   r e a d a b l e   r e p r e s e n t a t i o n   -   s a d l y ,   s i m p l e   c o n v e r s i o n   w i t h   ` a s   t e x t `   m o s t l y   d o e s n ' t   w o r k   w i t h   n o n - p r i m i t i v e   t y p e s .# '(' l     �)*�  ) � � An attempt is made to list the properties of non-primitive types (does not always work), and the result is prefixed with the type (class) name   * �++   A n   a t t e m p t   i s   m a d e   t o   l i s t   t h e   p r o p e r t i e s   o f   n o n - p r i m i t i v e   t y p e s   ( d o e s   n o t   a l w a y s   w o r k ) ,   a n d   t h e   r e s u l t   i s   p r e f i x e d   w i t h   t h e   t y p e   ( c l a s s )   n a m e( ,-, l     �./�  . 1 + and, if present, the object's name and ID.   / �00 V   a n d ,   i f   p r e s e n t ,   t h e   o b j e c t ' s   n a m e   a n d   I D .- 121 l     �34�  3   EXAMPLE   4 �55    E X A M P L E2 676 l     �89�  8 [ U       toString(path to desktop)  # -> "[alias] Macintosh HD:Users:mklement:Desktop:"   9 �:: �               t o S t r i n g ( p a t h   t o   d e s k t o p )     #   - >   " [ a l i a s ]   M a c i n t o s h   H D : U s e r s : m k l e m e n t : D e s k t o p : "7 ;<; l     �=>�  = V P To test this subroutine and see the various representations, use the following:   > �?? �   T o   t e s t   t h i s   s u b r o u t i n e   a n d   s e e   t h e   v a r i o u s   r e p r e s e n t a t i o n s ,   u s e   t h e   f o l l o w i n g :< @A@ l     � BC�   B � �   repeat with elem in {42, 3.14, "two", true, (current date), {"one", "two", "three"}, {one:1, two:"deux", three:false}, missing value, me,  path to desktop, front window of application (path to frontmost application as text)}   C �DD�       r e p e a t   w i t h   e l e m   i n   { 4 2 ,   3 . 1 4 ,   " t w o " ,   t r u e ,   ( c u r r e n t   d a t e ) ,   { " o n e " ,   " t w o " ,   " t h r e e " } ,   { o n e : 1 ,   t w o : " d e u x " ,   t h r e e : f a l s e } ,   m i s s i n g   v a l u e ,   m e ,     p a t h   t o   d e s k t o p ,   f r o n t   w i n d o w   o f   a p p l i c a t i o n   ( p a t h   t o   f r o n t m o s t   a p p l i c a t i o n   a s   t e x t ) }A EFE l     ��GH��  G . (       log my toString(contents of elem)   H �II P               l o g   m y   t o S t r i n g ( c o n t e n t s   o f   e l e m )F JKJ l     ��LM��  L     end repeat   M �NN        e n d   r e p e a tK O��O i   d gPQP I      ��R���� 0 tostring toStringR S��S o      ���� 0 anyobj anyObj��  ��  Q k    <TT UVU q      WW ��X�� 0 i  X ��Y�� 0 txt  Y ��Z�� 0 errmsg errMsgZ ��[�� 0 orgtids orgTids[ ��\�� 0 oname oName\ ��]�� 
0 oid oId] ������ 
0 prefix  ��  V ^_^ r     `a` m     bb �cc  a o      ���� 0 txt  _ ded Y    �f��gh��f k    �ii jkj Q    ylmnl Z    Zop��qo =   rsr o    ���� 0 i  s m    ���� p Z    Ptu��vt =   wxw n    yzy m    ��
�� 
pclsz o    ���� 0 anyobj anyObjx m    ��
�� 
listu k    H{{ |}| r    8~~ J    '�� ��� n   "��� 1     "��
�� 
txdl� 1     ��
�� 
ascr� ���� J   " %�� ���� m   " #�� ���  ,  ��  ��   J      �� ��� o      ���� 0 orgtids orgTids� ���� n     ��� 1   4 6��
�� 
txdl� 1   3 4��
�� 
ascr��  } ��� r   9 B��� b   9 @��� l  9 >������ c   9 >��� b   9 <��� m   9 :�� ���  {� o   : ;���� 0 anyobj anyObj� m   < =��
�� 
TEXT��  ��  � m   > ?�� ���  }� o      ���� 0 txt  � ���� l  C H���� r   C H��� o   C D���� 0 orgtids orgTids� n     ��� 1   E G��
�� 
txdl� 1   D E��
�� 
ascr�   '   � ���    '��  ��  v r   K P��� c   K N��� o   K L���� 0 anyobj anyObj� m   L M��
�� 
TEXT� o      ���� 0 txt  ��  q r   S Z��� c   S X��� n   S V��� 1   T V��
�� 
pALL� o   S T���� 0 anyobj anyObj� m   V W��
�� 
TEXT� o      ���� 0 txt  m R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg��  n k   b y�� ��� l  b b������  � 3 - Trick for records and record-*like* objects:   � ��� Z   T r i c k   f o r   r e c o r d s   a n d   r e c o r d - * l i k e *   o b j e c t s :� ��� l  b b������  � � � We exploit the fact that the error message contains the desired string representation of the record, so we extract it from there. This (still) works as of AS 2.3 (OS X 10.9).   � ���^   W e   e x p l o i t   t h e   f a c t   t h a t   t h e   e r r o r   m e s s a g e   c o n t a i n s   t h e   d e s i r e d   s t r i n g   r e p r e s e n t a t i o n   o f   t h e   r e c o r d ,   s o   w e   e x t r a c t   i t   f r o m   t h e r e .   T h i s   ( s t i l l )   w o r k s   a s   o f   A S   2 . 3   ( O S   X   1 0 . 9 ) .� ���� Q   b y����� r   e p��� I  e n�����
�� .sysoexecTEXT���     TEXT� b   e j��� m   e f�� ��� , e g r e p   - o   ' \ { . * \ } '   < < <  � n   f i��� 1   g i��
�� 
strq� o   f g���� 0 errmsg errMsg��  � o      ���� 0 txt  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  k ���� Z  z �������� >  z ��� o   z {���� 0 txt  � m   { ~�� ���  �  S   � ���  ��  ��  �� 0 i  g m    ���� h m    	���� ��  e ��� r   � ���� m   � ��� ���  � o      ���� 
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
0 prefix  � ��� r   � �� � m   � � �    o      ���� 0 oname oName�  r   � � m   � � �   o      ���� 
0 oid oId 	
	 Q   ��� k   � �  r   � � n   � � 1   � ���
�� 
pnam o   � ����� 0 anyobj anyObj o      ���� 0 oname oName �� Z  � ����� >  � � o   � ����� 0 oname oName m   � ���
�� 
msng r   � � b   � � b   � � b   � �  o   � ����� 
0 prefix    m   � �!! �""    n a m e = " o   � ����� 0 oname oName m   � �## �$$  " o      ���� 
0 prefix  ��  ��  ��   R      ������
�� .ascrerr ****      � ****��  ��  ��  
 %&% Q  +'(��' k  ")) *+* r  ,-, n  
./. 1  
��
�� 
ID  / o  ���� 0 anyobj anyObj- o      ���� 
0 oid oId+ 0��0 Z "12����1 > 343 o  ���� 
0 oid oId4 m  ��
�� 
msng2 r  565 b  787 b  9:9 o  ���� 
0 prefix  : m  ;; �<<    i d =8 o  ���� 
0 oid oId6 o      ���� 
0 prefix  ��  ��  ��  ( R      ������
�� .ascrerr ****      � ****��  ��  ��  & =��= r  ,3>?> b  ,1@A@ o  ,-���� 
0 prefix  A m  -0BB �CC  ]  ? o      ���� 
0 prefix  ��  ��  ��  � D��D L  8<EE b  8;FGF o  89���� 
0 prefix  G o  9:���� 0 txt  ��  ��       ��HIJKLMNOPQRSTUVWXYZ[\]^_`abc��  H ����~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�� $0 getpagesoffilepy GetPagesOfFilePY� 20 writexfilespdffromonepy WriteXFilesPDFfromOnePY�~ 0 findtext FindText�} 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPY�| $0 checkiminstalled CheckIMInstalled�{  0 inserttocinpdf insertToCInPDF�z H0 "generatestampimageforpiecenumberim "generateStampImageForPieceNumberIM�y T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param�x *0 checkthisisapdfpath CheckThisIsAPDFPath�w *0 checkthisisatxtpath CheckThisIsATxtPath�v .0 checkfileexistsatpath CheckFileExistsAtPath�u 40 returnfilecontentsaslist ReturnFileContentsAsList�t 60 countnameandpagesofpieces CountNameAndPagesOfPieces�s (0 detailsofbordereau DetailsOfBordereau�r "0 sumtotalofpages SumTotalOfPages�q 0 trim  �p 0 	splittext 	splitText�o 0 convertlisttostring  �n (0 deletefolderatpath deleteFolderAtPath�m (0 createfolderatpath createFolderAtPath�l 00 prefixfilelistwithpath prefixFileListWithPath�k <0 prefixfilelistwithpathquoted prefixFileListWithPathQuoted�j "0 watermarkfilepy watermarkFilePY�i 0 remove_extension  �h 0 dlog  �g 0 tostring toString
�f .aevtoappnull  �   � ****I �e��d�cde�b�e $0 getpagesoffilepy GetPagesOfFilePY�d �af�a f  �`�` 0 
thepdffile  �c  d �_�^�]�_ 0 
thepdffile  �^ 0 	thescript  �] 0 	thenumber  e  �\�[�Z
�\ .sysoexecTEXT���     TEXT�[ 	0 debug  
�Z .sysodlogaskr        TEXT�b '�%�%E�O�%j E�O� �%j Y hO�OPJ �Y>�X�Wgh�V�Y 20 writexfilespdffromonepy WriteXFilesPDFfromOnePY�X �Ui�U i  �T�S�R�T 0 
thepdffile  �S "0 wheretosavepath whereToSavePath�R 0 indexeslist indexesList�W  g �Q�P�O�N�M�L�Q 0 
thepdffile  �P "0 wheretosavepath whereToSavePath�O 0 indexeslist indexesList�N $0 theindexesstring theIndexesString�M 0 	thescript  �L 0 thecreatedfiles  h SY�K[�Jd�I�Hm�G�����F���K 0 convertlisttostring  �J 	0 debug  
�I .sysodlogaskr        TEXT�H 0 verbose  
�G .ascrcmnt****      � ****
�F .sysoexecTEXT���     TEXT�V g�*��l+ %�%E�O� �%j Y hO� �%j 	Y hO�%�%�%�%�%�%E�O�%j E�O� a �%j Y hOa �%j 	O�K �E��D�Cjk�B�E 0 findtext FindText�D �Al�A l  �@�?�@ 0 tofind toFind�? 0 intext inText�C  j �>�=�> 0 tofind toFind�= 0 intext inTextk  �B ��L �<��;�:mn�9�< 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPY�; �8o�8 o  �7�6�5�7 0 thefinalfile theFinalFile�6 20 wheretofindthefilespath whereToFindTheFilesPath�5 60 thefileslistwiththeirpath theFilesListWithTheirPath�:  m �4�3�2�1�0�/�4 0 thefinalfile theFinalFile�3 20 wheretofindthefilespath whereToFindTheFilesPath�2 60 thefileslistwiththeirpath theFilesListWithTheirPath�1 H0 "thecorrectedfileslistwiththeirpath "theCorrectedFilesListWithTheirPath�0 0 	thescript  �/ 
0 thedoc  n ���. �-	�,&(*,7�+@G�*�. 0 convertlisttostring  �- 	0 debug  
�, .sysodlogaskr        TEXT
�+ .sysoexecTEXT���     TEXT
�* .ascrcmnt****      � ****�9 Q�*��l+ %�%E�O� �%j Y hO�%�%�%�%�%E�O�%j E�O� ��%j Y hO�%j O�M �)d�(�'pq�&�) $0 checkiminstalled CheckIMInstalled�(  �'  p  q q�%�$�#�"
�% .sysoexecTEXT���     TEXT�$ &0 theconvertcommand theConvertCommand�#  �"  �&  �j E�OeW 	X  fN �!�� �rs��!  0 inserttocinpdf insertToCInPDF�   �  r  s  � hO ����tu�� H0 "generatestampimageforpiecenumberim "generateStampImageForPieceNumberIM� �v� v  ������ 0 convertcommand  � <0 theoriginalimagepathaandname theOriginalImagePathaAndName� 0 	thenumber  � 00 theresultingimagespath theResultingImagesPath� 0 thenameoffile theNameOfFile�  t 
����������
� 0 convertcommand  � <0 theoriginalimagepathaandname theOriginalImagePathaAndName� 0 	thenumber  � 00 theresultingimagespath theResultingImagesPath� 0 thenameoffile theNameOfFile� *0 pathtooriginalimage pathToOriginalImage�  0 pathtonewimage PathToNewImage� "0 piecenumbertext pieceNumberText� 0 newimagename  �
  0 theimagescript theImageScriptu 
�	��������
�	 
strq
� .sysoexecTEXT���     TEXT�  �  � D��,E�O��,E�O�%E�O��%�%E�O��%�%�%�%�%�%�%E�O �j O�W 	X  �OPP �.��wx�� T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param� �y� y  � �������  0 convertcommand  �� <0 theoriginalimagepathaandname theOriginalImagePathaAndName�� 0 	thenumber  �� 00 theresultingimagespath theResultingImagesPath�  w 	�������������������� 0 convertcommand  �� <0 theoriginalimagepathaandname theOriginalImagePathaAndName�� 0 	thenumber  �� 00 theresultingimagespath theResultingImagesPath�� "0 piecenumbertext pieceNumberText�� *0 pathtooriginalimage pathToOriginalImage�� 0 	imagename 	imageName��  0 pathtonewimage PathToNewImage��  0 theimagescript theImageScriptx N��acs��������������������
�� 
strq�� 	0 debug  
�� .sysodlogaskr        TEXT�� 0 defaultfont defaultFont
�� .sysoexecTEXT���     TEXT��  ��  � r�%E�O��,E�O�%�%E�O��%�%E�O��,E�O� �%j Y hO��%�%�%�%�%�%�%�%E�O� ��%�%j Y hO �j O�W X  a OPQ �������z{���� *0 checkthisisapdfpath CheckThisIsAPDFPath�� ��|�� |  ���� 0 thefile  ��  z ���� 0 thefile  { �����������
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
leng�� *���� ��,m R ��	����}~���� *0 checkthisisatxtpath CheckThisIsATxtPath�� ����   ���� 0 thefile  ��  } ���� 0 thefile  ~ ��	��������
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
leng�� *���� ��,m S ��	.���������� .0 checkfileexistsatpath CheckFileExistsAtPath�� ����� �  ���� 0 thefile  ��  � ���� 0 thefile  � ��������
�� 
psxf
�� 
alis��  ��  ��  *�/�&OeW 	X  fT ��	\���������� 40 returnfilecontentsaslist ReturnFileContentsAsList�� ����� �  ���� 0 thefile  ��  � �������� 0 thefile  �� 0 
filehandle 
fileHandle�� 0 thelines theLines� ������������
�� .rdwropenshor       file
�� 
as  
�� 
utf8
�� .rdwrread****        ****
�� 
cpar
�� .rdwrclosnull���     ****�� �j  E�O���l �-E�O�j O�U ��	����������� 60 countnameandpagesofpieces CountNameAndPagesOfPieces�� ����� �  ���� 0 thelist theList��  � �������������������������� 0 thelist theList�� 0 thepieceslist thePiecesList�� 0 thepageindex thePageIndex�� 0 i  �� 0 theline theLine�� &0 piecewordposition pieceWordPosition�� 0 
semicolumn 
semiColumn�� 0 firstbracket firstBracket�� 0 lastbracket lastBracket�� 0 	thenumber  �� 0 thepages thePages�� 0 thename theName� '������������	���	�������������	�	�
��
"����
5������
W
\
^
e����
�
�
�
�
�
�
�
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 	pieceword 	pieceWord�� 0 findtext FindText�� 	0 debug  
�� .sysodlogaskr        TEXT
�� .ascrcmnt****      � ****
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
leng
�� 
ctxt�� 0 trim  �� 0 verbose  �� 0 dlog  
�� 
long�� $0 thecountofpieces theCountOfPieces
�� 
errn�������jvE�OjE�OjE�O��[��l kh *äl+ i�kE�O�kE�O� �%j Y hO�%j 	O*���� ��,E�O*���� E�O*�a �� E�O*�a �� E�O*�[a \[Z�k\Z�k2a l+ E�O_  *�a %�%k+ Y hO�a &k �a &k   
�E` Y .a �k%a %�%a %j Oa �k%j 	O)a a lhO*�[a \[Z�k\Z�k2a  l+ E�O*�[a \[Z�k\Z�k2a !l+ E�O� �a "%�%a #%�%j Y hO������vkv%E�Oa $�%j 	O��k kE�O� a %�%j Y hOa &�%j 	Y h[OY��O�V ������������ (0 detailsofbordereau DetailsOfBordereau�� ��� �  �� 0 thelist theList��  � ������� 0 thelist theList�  0 thedetailslist theDetailsList� 0 theline theLine� 0 
semicolumn 
semiColumn� 0 thekey theKey� 0 thevalue theValue� ������6����~H�}�|\�{i�z�yuw�x
� 
kocl
� 
cobj
� .corecnte****       ****� 0 	pieceword 	pieceWord� 0 findtext FindText
� 
psof
� 
psin� 
� .sysooffslong    ��� null
�~ 
ctxt�} 0 trim  
�| 
leng�{ 	0 debug  
�z .sysodlogaskr        TEXT�y 0 verbose  �x 0 thekey theKey�� �jvE�O ��[��l kh *âl+  hY p*���� 	E�O*�[�\[Zk\Z�k2�l+ E�O*�[�\[Z�k\Z��,2�l+ E�O� �a %�%j Y hO_  a �%a %�%Y hO�a �l%E�[OY�~O�W �w��v�u���t�w "0 sumtotalofpages SumTotalOfPages�v �s��s �  �r�r @0 anarrayofarrayofnumberandpages anArrayofArrayOfNumberAndPages�u  � �q�p�o�n�m�q @0 anarrayofarrayofnumberandpages anArrayofArrayOfNumberAndPages�p 0 thetotal theTotal�o 0 thearray theArray�n  0 thepiecenumber thePieceNumber�m 0 thepagecount thePageCount� �l�k�j�i�h����g����f
�l 
kocl
�k 
cobj
�j .corecnte****       ****
�i 
long�h 	0 debug  
�g .sysodlogaskr        TEXT
�f .ascrcmnt****      � ****�t \jE�O Q�[��l kh ��k/E�Ok��l/�& E�O� �%�%�%�%j Y hO�%�%�%�%j O��k E�[OY��O�OPX �e�d�c���b�e 0 trim  �d �a��a �  �`�_�` 0 sometext someText�_ "0 thesecharacters theseCharacters�c  � �^�]�^ 0 sometext someText�] "0 thesecharacters theseCharacters� 
�\�[�Z�Y"�X�W�V�U
�\ 
tab �[ 

�Z .sysontocTEXT       shor
�Y 
ret �X 
�W 
cha 
�V 
ctxt�U���b ^�e  ���j ��jj �vE�Y hO h���k/�[�\[Zl\Zi2E�[OY��O h���i/�[�\[Zk\Z�2E�[OY��O�Y �Th�S�R���Q�T 0 	splittext 	splitText�S �P��P �  �O�N�O 0 thetext theText�N 0 thedelimiter theDelimiter�R  � �M�L�K�M 0 thetext theText�L 0 thedelimiter theDelimiter�K 0 thetextitems theTextItems� �J�I�H�
�J 
ascr
�I 
txdl
�H 
citm�Q ���,FO��-E�O���,FO�Z �G��F�E���D�G 0 convertlisttostring  �F �C��C �  �B�A�B 0 thelist theList�A 0 thedelimiter theDelimiter�E  � �@�?�>�@ 0 thelist theList�? 0 thedelimiter theDelimiter�> 0 	thestring 	theString� �=�<�;�
�= 
ascr
�< 
txdl
�; 
TEXT�D ���,FO��&E�O���,FO�[ �:��9�8���7�: (0 deletefolderatpath deleteFolderAtPath�9 �6��6 �  �5�4�5 0 thepath  �4 0 
foldername  �8  � �3�2�1�0�3 0 thepath  �2 0 
foldername  �1 0 
deletefile 
deleteFile�0 	0 newfo  � ��/�.�-�,�+��*
�/ 
psxf
�. 
ctxt
�- .coredelonull���     obj �,  �+  
�* .ascrcmnt****      � ****�7 . � *ᠡ%/�&E�O�j UO�W X  �j O��%\ �)�(�'���&�) (0 createfolderatpath createFolderAtPath�( �%��% �  �$�#�$ 0 thepath  �# 0 
foldername  �'  � �"�!� �" 0 thepath  �! 0 
foldername  �  	0 newfo  � =�����������
� 
kocl
� 
cfol
� 
insh
� 
psxf
� 
prdt
� 
pnam� 
� .corecrel****      � null
� 
psxp�  �  �& - "� *���*�/��l� �,E�UO�W X 
 ��%] �\������ 00 prefixfilelistwithpath prefixFileListWithPath� ��� �  ��� 0 thepath  � 0 filelist  �  � ����
� 0 thepath  � 0 filelist  � 0 filelistwithpath  �
 0 thefile  � �	��
�	 
kocl
� 
cobj
� .corecnte****       ****� )jvE�O �[��l kh ���%kv%E�OP[OY��O�^ �������� <0 prefixfilelistwithpathquoted prefixFileListWithPathQuoted� ��� �  �� � 0 thepath  �  0 filelist  �  � ���������� 0 thepath  �� 0 filelist  �� 0 filelistwithpath  �� 0 thefile  � ��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
strq� +jvE�O !�[��l kh ���%�,kv%E�OP[OY��O�_ ������������� "0 watermarkfilepy watermarkFilePY�� ����� �  ��������  0 thefiletostamp theFileToStamp�� 0 
thenewfile 
theNewFile�� 0 thestampfile theStampFile��  � ������������������  0 thefiletostamp theFileToStamp�� 0 
thenewfile 
theNewFile�� 0 thestampfile theStampFile�� 0 theangle  �� 0 thesize  �� 0 
theopacity 
theOpacity�� 0 	thescript  �� 0 
stampedpdf  � ���%')+��-��/135@����I��P���� 0 thex theX�� 0 they theY
�� .sysoexecTEXT���     TEXT�� 	0 debug  
�� .sysodlogaskr        TEXT
�� .ascrcmnt****      � ****�� [�E�O�E�O�E�O�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%E�O�%j E�O_  a �%j Y hOa �%j O�` ��k���������� 0 remove_extension  �� ����� �  ���� 0 	this_name  ��  � ������ 0 	this_name  �� 0 x  � 
u�����������������
�� 
cha 
�� 
rvse
�� 
TEXT
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
ctxt�� =�� 4��-�,�&E�O*���� E�O�[�\[Z�k\Zi2E�O��-�,�&E�Y hO�a ��*���������� 0 dlog  �� ����� �  ���� .0 anyobjorlistofobjects anyObjOrListOfObjects��  � ����������������������������� .0 anyobjorlistofobjects anyObjOrListOfObjects�� 0 lst  �� 0 i  �� 0 txt  �� 0 errmsg errMsg�� 0 orgtids orgTids�� 0 oname oName�� 
0 oid oId�� 
0 prefix  �� 0 	logtarget 	logTarget�� 0 txtcombined txtCombined�� 0 
prefixtime 
prefixTime�  0 prefixdatetime prefixDateTime� 0 anyobj anyObj� 	0 fpath  � >���������h����������������������+-�EMh������������������ 0 dlog_targets DLOG_TARGETS
� 
leng�  �  
� 
pcls
� 
list
� 
kocl
� 
cobj
� .corecnte****       ****
� 
ascr
� 
txdl
� 
TEXT
� 
pALL� 0 errmsg errMsg
� 
strq
� .sysoexecTEXT���     TEXT
� 
ctxt
� 
long
� 
doub
� 
bool
� 
ldt 
� 
reco� 
� 
msng
� 
pnam
� 
ID  
� .misccurdldt    ��� null
� 
tstr
� 
shdt
� 
pcnt
� .ascrcmnt****      � ****
� .sysodisAaleR        TEXT��� ��,j  hY hW 	X  hO��,� 
�kvE�Y hOjvE�O]�[��l kh �E�O �klkh  P�k  >��,�  .��,�kvlvE[�k/E�Z[�l/��,FZO��%�&�%E�O���,FY ��&E�Y �a ,�&E�W "X   a �a ,%j E�W X  hO�a  Y h[OY�{Oa E�Oa a a a a �a a v��,	 �a a & �a ��,%E�Oa  E�Oa !E�O &�a ",E�O�a  �a #%�%a $%E�Y hW X  hO "�a %,E�O�a  �a &%�%E�Y hW X  hO�a '%E�O��%E�Y hO��%E�[OY��O��,a (kvlvE[�k/E�Z[�l/��,FZO��&E�Oa )*j *a +,%a ,%E�Oa -*j *a .,%a /%�[a \[Zl\Zi2%E�O���,FO ��[��l kh 	�a 0,a 1  ��%j 2Y ��a 0,a 3  ��%j 4Y q�a 0,a 5  $a 6a 7)a ",%a ,%a 8%�a ,%j Y C�a 0,E�O�a 9 a :�[a \[Zm\Zi2%E�Y hOa ;��%a ,%a <%�%a =%j [OY�_b �Q������ 0 tostring toString� ��� �  �� 0 anyobj anyObj�  � ��������� 0 anyobj anyObj� 0 i  � 0 txt  � 0 errmsg errMsg� 0 orgtids orgTids� 0 oname oName� 
0 oid oId� 
0 prefix  � $b�����������������������~�}�|�{��z!#�y;B
� 
pcls
� 
list
� 
ascr
� 
txdl
� 
cobj
� 
TEXT
� 
pALL� 0 errmsg errMsg�  
� 
strq
� .sysoexecTEXT���     TEXT�  
� 
ctxt
� 
long
� 
doub
� 
bool
�~ 
ldt 
�} 
reco�| 
�{ 
msng
�z 
pnam
�y 
ID  �=�E�O �klkh  N�k  >��,�  .��,�kvlvE[�k/E�Z[�l/��,FZO�%�&�%E�O���,FY ��&E�Y 	��,�&E�W X   ���,%j E�W X  hO�a  Y h[OY��Oa E�Oa a a a a �a a v��,	 �a a & za ��,%E�Oa E�Oa E�O &�a ,E�O�a  �a %�%a  %E�Y hW X  hO "�a !,E�O�a  �a "%�%E�Y hW X  hO�a #%E�Y hO��%c �x��w�v���u
�x .aevtoappnull  �   � ****� k    ���  ��  ���  ���  ���  ���  ���  ��� �� �� ��  �� '�� .�� 5�� <�� C�� H�� O�� s�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �� �� '�� /�� <�� I�� ]�� p�� ~�� ��� ��� ��� ��� ��� ��� ��� �� �� �� �� )�� >�� E�� O�� U�� r�� ��� ��� ��� ��� ��� ��� �� �� �� 2�� T�� Y�� ��� ��� +�� ;�� T�� `�� j�� u�� �   � � ��t�t  �w  �v  � �s�r�s 
0 apiece  �r 0 i  � � �q�p�o�n ��m ��l�k ��j	�i�h�g%�f,�e3�d:�cA�b�a�`egikm{�_�^��]�\�[���Z�Y�X�W�V�U�T�S�R�Q�P��O�N�M�L�K#�J�IEWYeil�H���G��F���E�D�C�B��A�@�?�>�=�<%�;�:�9M�8�7ackmp}�����������6�5�4�3�2�1�0�/<�.mo�-�,�+�*��)��(�'��&�%�$39�#CGJ^�"f�!� }�����������������q 0 versionnumber versionNumber�p 	0 debug  �o 0 verbose  �n $0 checkiminstalled CheckIMInstalled
�m .sysodlogaskr        TEXT�l 0 dlog  �k &0 theconvertcommand theConvertCommand�j ,0 defaultnamebordereau defaultNameBordereau�i 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc�h "0 finalnamepdfdoc finalNamePDFDoc�g 0 thex theX�f 0 they theY�e 0 	pieceword 	pieceWord�d "0 defaultnamelogo defaultNameLogo�c .0 defaulttempfoldername defaultTempFolderName�b 0 defaultfont defaultFont�a .0 thenumberofpagesinpdf theNumberofPagesInPDF�` $0 thecountofpieces theCountOfPieces
�_ 
appr
�^ 
nsou�] 
�\ .sysonotfnull��� ��� TEXT
�[ 
prmp
�Z 
dflc
�Y afdmdesk
�X .earsffdralis        afdr
�W .sysostflalis    ��� null�V "0 theoutputfolder theOutputFolder
�U 
psxp�T 0 thefolderpath theFolderPath�S 0 thetemppath theTempPath
�R 
strq�Q &0 thequotedtemppath theQuotedTempPath�P .0 checkfileexistsatpath CheckFileExistsAtPath�O (0 createfolderatpath createFolderAtPath�N "0 directpathtotxt directPathToTxt�M "0 quotedpathtotxt quotedPathToTxt�L "0 directpathtopdf directPathToPDF�K "0 quotedpathtopdf quotedPathToPDF�J $0 directpathtologo directPathToLogo�I $0 quotedpathtologo quotedPathToLogo�H  0 pathtofinalpdf pathToFinalPDF
�G .ascrcmnt****      � ****�F *0 checkthisisapdfpath CheckThisIsAPDFPath
�E 
as  
�D 
utf8
�C .rdwrread****        ****�B $0 thebordereautext theBordereauText�A 40 returnfilecontentsaslist ReturnFileContentsAsList�@ 0 	textlines 	textLines�? 60 countnameandpagesofpieces CountNameAndPagesOfPieces�> <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces�= "0 sumtotalofpages SumTotalOfPages�< .0 theexpectedtotalpages theExpectedTotalPages�; (0 detailsofbordereau DetailsOfBordereau�: $0 thekeyvaluepairs theKeyValuePairs�9 $0 getpagesoffilepy GetPagesOfFilePY
�8 .corecnte****       ****�7 0 countofpieces countofPieces�6 &0 thearrayofindexes theArrayOfIndexes
�5 
kocl
�4 
cobj�3 20 writexfilespdffromonepy WriteXFilesPDFfromOnePY
�2 
spac�1 0 trim  �0 0 	splittext 	splitText�/ .0 thegeneratedfileslist theGeneratedFilesList�. 0 themanyimages theManyImages�- T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param�, 0 theimage  �+ 20 thewatermarkedfileslist theWatermarkedFilesList�* 0 thefiletomark theFileToMark�) *0 thepathtofiletomark thePathToFileToMark�( *0 thepathtofilemarked thePathToFileMarked�' 0 thestampfile theStampFile�& (0 thepathtostampfile thePathToStampFile�% "0 watermarkfilepy watermarkFilePY�$ 0 themarkedfile  �# 0 convertlisttostring  
�" 
TEXT�! 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPY�  60 theresultlogofthepyscript theResultLogOfThePyScript� (0 deletefolderatpath deleteFolderAtPath
� .miscactvnull��� ��� null
� 
btns
� 
dflt
� 
bhit� 0 
showbutton  
� 
psxf
� 
alis
� .aevtodocnull  �    alis�u��E�OfE�OeE�O*j+  hY �j O*�k+ OhO� 
�j Y hO*��%k+ O�E�O�E�O�E` Oa E` Oa E` Oa E` Oa E` Oa E` Oa E` OjE` OjE` Oa �%a  %�%a !%_ %a "%�%a #%_ %j O� a $a %a &a 'a (a ) *Y hO*a +a ,_ %a -%a .a /j 0a ) 1E` 2O_ 2a 3,E` 4O_ 4_ %E` 5O_ 5a 6,E` 7O� *_ 5k+ 8j Y hO� *a 9*_ 5k+ 8%k+ Y hO*_ 5k+ 8 *_ 4_ l+ :E` 5Y hO_ 4�%E` ;O_ 4�%a 6,E` <O� *a =_ ;%k+ Y hO_ 4�%E` >O_ 4�%a 6,E` ?O� *a @_ >%k+ Y hO_ 4_ %E` AO_ 4_ %a 6,E` BO� *a C_ %k+ Y hO� _ ;a D%_ >%a E%_ %j Y hO� a Fa %a Ga 'a Ha ) *Y hO_ 4_ %E` IO*_ ;k+ 8 hY a J�%j Oa K�%j LOhO*_ >k+ 8 hY a M�%j OhO*_ >k+ N hY a Oj OhO*_ Ak+ 8 hY a P_ %j OhO_ ;a Qa Rl SE` TO� _ Tj Y hO� a U_ T%j LY hO*_ ;k+ VE` WO*_ Wk+ XE` YO*_ Yk+ ZE` [O� a \_ [%j Y hOa ]_ [%j LO*_ Wk+ ^E` _O*_ >k+ `E` O� _ a a%j Y hO_ Yj bE` cO� *a d_ %a e%a %a f_ c%a g%a 'a ha ) *Y hO� *a i_ %a j%a %a k_ c%a l%a 'a ma ) *Y hOa n_ %j LO_ k _ [k  'a o_ %a p%_ [%a q%j Oa rj LOhY hO� a sj Y hOa tj LOjvE` uO ,_ Y[a va wl bkh  _ u�a wm/k k%E` u[OY��O_ u[a w\[Zl\Zi2E` uO_ [_ u6GO***_ >_ 5_ um+ x_ yl+ z_ yl+ {E` |O� a }_ |%j LY hOjvE` ~O ak_ |j bkh � a �%a �%_ |a w�/%j Y hO*�_ A�_ 5a )+ �E` �O� _ �j Y hO_ �_ ~6GOP[OY��OjvE` �O �k_ |j bkh _ |a w�/E` �O_ 5a �%_ �%E` �O_ 5a �%_ �%E` �O_ ~a w�/E` �O_ 5a �%_ �%E` �O� a ��%a �%_ �%a �%_ �%j Y hO*_ �_ �_ �m+ �E` �O_ �E` �O_ �_ �6GOP[OY�iO� a �*_ �a �l+ �%j Y hO� a �a %a �a 'a �a ) *Y hO� a �_ �%a �&j Y hOa �_ �%j LO*_ I_ 5_ �m+ �E` �O� a �a %a �a 'a �a ) *Y hO*_ 4_ l+ �O*j �Oa �a �a �a �lva �la ) a �,E` �O_ �a � a � *a �_ I/a �&j �UY h ascr  ��ޭ