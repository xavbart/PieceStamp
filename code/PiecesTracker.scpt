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
   t o d o C  G H G l     �� I J��   I   NUMBERING is wrong �    J � K K *   N U M B E R I N G   i s   w r o n g  " H  L M L l     �� N O��   N 7 1 verify path for imagemagick (check with space) �    O � P P b   v e r i f y   p a t h   f o r   i m a g e m a g i c k   ( c h e c k   w i t h   s p a c e )  " M  Q R Q l     �� S T��   S 6 0 verify presence of stamp / offer to hunt for it    T � U U `   v e r i f y   p r e s e n c e   o f   s t a m p   /   o f f e r   t o   h u n t   f o r   i t R  V W V l     �� X Y��   X   verify name of file    Y � Z Z (   v e r i f y   n a m e   o f   f i l e W  [ \ [ l     �� ] ^��   ] 9 3 pass list fo file names, return list of file paths    ^ � _ _ f   p a s s   l i s t   f o   f i l e   n a m e s ,   r e t u r n   l i s t   o f   f i l e   p a t h s \  ` a ` l     �� b c��   b 8 2 implement proper log , not working even with dlog    c � d d d   i m p l e m e n t   p r o p e r   l o g   ,   n o t   w o r k i n g   e v e n   w i t h   d l o g a  e f e l     �� g h��   g M G implement cleaner image generation (library is using deprecated calls)    h � i i �   i m p l e m e n t   c l e a n e r   i m a g e   g e n e r a t i o n   ( l i b r a r y   i s   u s i n g   d e p r e c a t e d   c a l l s ) f  j k j l     �� l m��   l E ? offer to split files into size-based individual pieces or else    m � n n ~   o f f e r   t o   s p l i t   f i l e s   i n t o   s i z e - b a s e d   i n d i v i d u a l   p i e c e s   o r   e l s e k  o p o l     �� q r��   q &   add various fields to bordereau    r � s s @   a d d   v a r i o u s   f i e l d s   t o   b o r d e r e a u p  t u t l     �� v w��   v ) # open in Word a templated bordereau    w � x x F   o p e n   i n   W o r d   a   t e m p l a t e d   b o r d e r e a u u  y z y l     �� { |��   { � � allow for arbitrary numering (skip a piece, add a blank piece cover sheet for placeholder (name Nopiece instead of Piece, assume 1 page)    | � } }   a l l o w   f o r   a r b i t r a r y   n u m e r i n g   ( s k i p   a   p i e c e ,   a d d   a   b l a n k   p i e c e   c o v e r   s h e e t   f o r   p l a c e h o l d e r   ( n a m e   N o p i e c e   i n s t e a d   o f   P i e c e ,   a s s u m e   1   p a g e ) z  ~  ~ l     �� � ���   �    allow for number not full    � � � � 4   a l l o w   f o r   n u m b e r   n o t   f u l l   � � � l     �� � ���   � $  check for empty final lines ?    � � � � <   c h e c k   f o r   e m p t y   f i n a l   l i n e s   ? �  � � � l     �� � ���   � $  allow piece or pi�ce (accent)    � � � � <   a l l o w   p i e c e   o r   p i � c e   ( a c c e n t ) �  � � � l     �� � ���   � - ' offer reformatted listing in clipboard    � � � � N   o f f e r   r e f o r m a t t e d   l i s t i n g   i n   c l i p b o a r d �  � � � l     �� � ���   �   change N� to n� �    � � � � $   c h a n g e   N �   t o   n �  " �  � � � l     �� � ���   �   bolden piece number    � � � � (   b o l d e n   p i e c e   n u m b e r �  � � � l     �� � ���   � "  reposition stamp if need be    � � � � 8   r e p o s i t i o n   s t a m p   i f   n e e d   b e �  � � � l     �� � ���   �   insert ToC to PDF ?    � � � � (   i n s e r t   T o C   t o   P D F   ? �  � � � l     ��������  ��  ��   �  � � � p       � � ������ 	0 debug  ��   �  � � � p       � � ������ 0 	pieceword 	pieceWord��   �  � � � p       � � ������ $0 thecountofpieces theCountOfPieces��   �  � � � p       � � ������ &0 theconvertcommand theConvertCommand��   �  � � � p       � � ������ 0 verbose  ��   �  � � � p       � � ������ 0 thex theX��   �  � � � p       � � ������ 0 they theY��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l    ����� � r     � � � m     � � � � � 
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
   $ >   b r e w   i n s t a l l   i m a g e m a g i c k��   �  � � � I   & ,�� ����� 0 dlog   �  ��� � m   ' ( � � �   � a b o r t i n g :   w e   n e e d   i m a g e m a g i c k   o n   t h i s   M a c :   h t t p s : / / w w w . i m a g e m a g i c k . o r g / s c r i p t / b i n a r y - r e l e a s e s . p h p # m a c o s x��  ��   � �� L   - /����  ��  ��  ��   �  l  0 =���� Z  0 =���� o   0 1���� 	0 debug   I  4 9����
�� .sysodlogaskr        TEXT o   4 5���� &0 theconvertcommand theConvertCommand��  ��  ��  ��  ��   	 l  > F
����
 I   > F������ 0 dlog   �� b   ? B m   ? @ � D w e   w i l l   u s e   i m a g e m a g i c k ,   f o u n d   a t   o   @ A���� &0 theconvertcommand theConvertCommand��  ��  ��  ��  	  l     ��������  ��  ��    l     ����   #  let's  set the default names    � :   l e t ' s     s e t   t h e   d e f a u l t   n a m e s  l  G L���� r   G L m   G H �  b o r d e r e a u . t x t o      ���� ,0 defaultnamebordereau defaultNameBordereau��  ��     l  M T!����! r   M T"#" m   M P$$ �%%  P i � c e s . p d f# o      ���� 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc��  ��    &'& l  U \(��~( r   U \)*) m   U X++ �,,  t a m p o n . p n g* l     -�}�|- o      �{�{ "0 defaultnamelogo defaultNameLogo�}  �|  �  �~  ' ./. l  ] d0�z�y0 r   ] d121 m   ] `33 �44  t e m p2 o      �x�x .0 defaulttempfoldername defaultTempFolderName�z  �y  / 565 l  e l7�w�v7 r   e l898 m   e h:: �;; 
 P i � c e9 o      �u�u 0 	pieceword 	pieceWord�w  �v  6 <=< l  m r>�t�s> r   m r?@? m   m n�r�r  @ o      �q�q .0 thenumberofpagesinpdf theNumberofPagesInPDF�t  �s  = ABA l  s xC�p�oC r   s xDED m   s t�n�n  E o      �m�m $0 thecountofpieces theCountOfPieces�p  �o  B FGF l  y �H�l�kH r   y �IJI m   y |KK �LL  F i n a l P i e c e s . p d fJ o      �j�j "0 finalnamepdfdoc finalNamePDFDoc�l  �k  G MNM l     �i�h�g�i  �h  �g  N OPO l  � �Q�f�eQ I  � ��dR�c
�d .sysodlogaskr        TEXTR b   � �STS b   � �UVU b   � �WXW b   � �YZY b   � �[\[ b   � �]^] b   � �_`_ b   � �aba b   � �cdc m   � �ee �ff , P i e c e s T r a c k e r   v e r s i o n  d o   � ��b�b 0 versionnumber versionNumberb m   � �gg �hh � 
 
 O n   v a   v o u s   d e m a n d e r   l e   d o s s i e r   d a n s   l e q u e l   i l   y   a   : 
 -   l e   b o r d e r e a u   s o u s   l e   n o m   :   '` o   � ��a�a ,0 defaultnamebordereau defaultNameBordereau^ m   � �ii �jj \ '   
 l i s t a n t   l e s   p i � c e s   p a r   l i g n e   d � b u t a n t   p a r   '\ o   � ��`�` 0 	pieceword 	pieceWordZ m   � �kk �ll ~ '   s u i v i   d u   n �   d e   p i � c e 
 -   l e   f i c h i e r   P D F   d e   t o u t e s   l e s   p i � c e s   :  X o   � ��_�_ 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDocV m   � �mm �nn 2 ' 
 -   e t   l e   t a m p o n ,   s o u s   :  T o   � ��^�^ "0 defaultnamelogo defaultNameLogo�c  �f  �e  P opo l     �]�\�[�]  �\  �[  p qrq l     �Z�Y�X�Z  �Y  �X  r sts l  � �u�W�Vu Z  � �vw�U�Tv H   � �xx o   � ��S�S 	0 debug  w I  � ��Ryz
�R .sysonotfnull��� ��� TEXTy m   � �{{ �|| � R e c h e r c h e   d u   d o s s i e r   o �   s e   t r o u v e n t   v o t r e   f i c h i e r   d e   p i � c e s   e t   v o t r e   b o r d e r e a u .z �Q}~
�Q 
appr} m   � � ��� , N u m � r o t a t i o n   d e   p i � c e s~ �P��O
�P 
nsou� m   � ��� ���  B o t t l e�O  �U  �T  �W  �V  t ��� l     �N�M�L�N  �M  �L  � ��� l     �K�J�I�K  �J  �I  � ��� l     �H�G�F�H  �G  �F  � ��� l     �E���E  � S M let's choose where we saved both the bordereau and the pieces.pdf (one file)   � ��� �   l e t ' s   c h o o s e   w h e r e   w e   s a v e d   b o t h   t h e   b o r d e r e a u   a n d   t h e   p i e c e s . p d f   ( o n e   f i l e )� ��� l  � ���D�C� r   � ���� I  � ��B�A�
�B .sysostflalis    ��� null�A  � �@��
�@ 
prmp� b   � ���� b   � ���� m   � ��� ���� C h o i s i s s e z   l e   d o s s i e r   o �   s e   t r o u v e   l e   f i c h i e r   b o r d e r e a u . t x t   e t   l e   f i c h i e r   p i e c e s . p d f   c o m p o r t a n t   t o u t e s   l e s   p i � c e s   e n   u n   s e u l   P D F   
 ( a t t e n t i o n   :   c e   s c r i p t   s ' a t t e n d   �   t r o u v e r   l e s   p i e c e s   l i s t � e s   a v e c   l e   m o t   '� o   � ��?�? 0 	pieceword 	pieceWord� m   � ��� ���  ' )� �>��=
�> 
dflc� l  � ���<�;� I  � ��:��9
�: .earsffdralis        afdr� m   � ��8
�8 afdmdesk�9  �<  �;  �=  � o      �7�7 "0 theoutputfolder theOutputFolder�D  �C  � ��� l  � ���6�5� r   � ���� l  � ���4�3� n   � ���� 1   � ��2
�2 
psxp� o   � ��1�1 "0 theoutputfolder theOutputFolder�4  �3  � o      �0�0 0 thefolderpath theFolderPath�6  �5  � ��� l     �/�.�-�/  �.  �-  � ��� l  ���,�+� r   ���� b   ���� o   � ��*�* 0 thefolderpath theFolderPath� o   � �)�) .0 defaulttempfoldername defaultTempFolderName� o      �(�( 0 thetemppath theTempPath�,  �+  � ��� l ��'�&� r  ��� n  ��� 1  	�%
�% 
strq� o  	�$�$ 0 thetemppath theTempPath� o      �#�# &0 thequotedtemppath theQuotedTempPath�'  �&  � ��� l     �"�!� �"  �!  �   � ��� l &���� Z &����� o  �� 	0 debug  � I "���
� .sysodlogaskr        TEXT� I  ���� .0 checkfileexistsatpath CheckFileExistsAtPath� ��� o  �� 0 thetemppath theTempPath�  �  �  �  �  �  �  � ��� l '@���� Z '@����� o  '(�� 0 verbose  � I  +<���� 0 dlog  � ��� b  ,8��� m  ,/�� ��� ( w e   h a v e   a   t e m p   p a t h  � I  /7���� .0 checkfileexistsatpath CheckFileExistsAtPath� ��
� o  03�	�	 0 thetemppath theTempPath�
  �  �  �  �  �  �  �  � ��� l     ����  �  �  � ��� l A`���� Z A`����� H  AJ�� I  AI��� � .0 checkfileexistsatpath CheckFileExistsAtPath� ���� o  BE���� 0 thetemppath theTempPath��  �   � r  M\��� I  MX������� (0 createfolderatpath createFolderAtPath� ��� o  NQ���� 0 thefolderpath theFolderPath� ���� o  QT���� .0 defaulttempfoldername defaultTempFolderName��  ��  � o      ���� 0 thetemppath theTempPath�  �  �  �  � ��� l     ��������  ��  ��  � ��� l al������ r  al��� b  ah��� l ad������ o  ad���� 0 thefolderpath theFolderPath��  ��  � o  dg���� ,0 defaultnamebordereau defaultNameBordereau� o      ���� "0 directpathtotxt directPathToTxt��  ��  � ��� l m|������ r  m|��� l mx������ n  mx��� 1  tx��
�� 
strq� l mt������ b  mt��� o  mp���� 0 thefolderpath theFolderPath� o  ps���� ,0 defaultnamebordereau defaultNameBordereau��  ��  ��  ��  � o      ���� "0 quotedpathtotxt quotedPathToTxt��  ��  � ��� l     ��������  ��  ��  � ��� l }������� Z }�������� o  }~���� 0 verbose  � I  ��������� 0 dlog  � ���� b  ��� � m  �� � ( w e   h a v e   a   t e x t   f i l e    o  ������ "0 directpathtotxt directPathToTxt��  ��  ��  ��  ��  ��  �  l     ��������  ��  ��    l ������ r  ��	 b  ��

 l ������ o  ������ 0 thefolderpath theFolderPath��  ��   o  ������ 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc	 o      ���� "0 directpathtopdf directPathToPDF��  ��    l ������ r  �� l ������ n  �� 1  ����
�� 
strq l ������ b  �� o  ������ 0 thefolderpath theFolderPath o  ������ 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc��  ��  ��  ��   o      ���� "0 quotedpathtopdf quotedPathToPDF��  ��    l     ��������  ��  ��    l ������ Z ������ o  ������ 0 verbose   I  �������� 0 dlog    ��  b  ��!"! m  ��## �$$  w e   h a v e   a   p d f" o  ������ "0 directpathtopdf directPathToPDF��  ��  ��  ��  ��  ��   %&% l     ��������  ��  ��  & '(' l ��)����) r  ��*+* b  ��,-, l ��.����. o  ������ 0 thefolderpath theFolderPath��  ��  - o  ������ "0 defaultnamelogo defaultNameLogo+ o      ���� $0 directpathtologo directPathToLogo��  ��  ( /0/ l ��1����1 r  ��232 l ��4����4 n  ��565 1  ����
�� 
strq6 l ��7����7 b  ��898 o  ������ 0 thefolderpath theFolderPath9 o  ������ "0 defaultnamelogo defaultNameLogo��  ��  ��  ��  3 o      ���� $0 quotedpathtologo quotedPathToLogo��  ��  0 :;: l     ��������  ��  ��  ; <=< l ��>����> Z ��?@����? o  ������ 0 verbose  @ I  ����A���� 0 dlog  A B��B b  ��CDC m  ��EE �FF " w e   h a v e   a   t a m p o n  D o  ������ "0 defaultnamelogo defaultNameLogo��  ��  ��  ��  ��  ��  = GHG l     ��������  ��  ��  H IJI l �K����K Z �LM����L o  ������ 	0 debug  M I ���N��
�� .sysodlogaskr        TEXTN b  �OPO b  �QRQ b  �STS b  ��UVU o  ������ "0 directpathtotxt directPathToTxtV m  ��WW �XX   T o  ����� "0 directpathtopdf directPathToPDFR m  YY �ZZ   P o  
���� "0 defaultnamelogo defaultNameLogo��  ��  ��  ��  ��  J [\[ l     ��������  ��  ��  \ ]^] l 2_����_ Z 2`a����` H  bb o  ���� 	0 debug  a I .��cd
�� .sysonotfnull��� ��� TEXTc m  ee �ff J T o u s   l e s   f i c h i e r s   s o n t   l � ,   a l l o n s - y   !d ��gh
�� 
apprg m  "ii �jj , N u m � r o t a t i o n   d e   p i � c e sh ��k�
�� 
nsouk m  %(ll �mm  B o t t l e�  ��  ��  ��  ��  ^ non l     �~�}�|�~  �}  �|  o pqp l 3>r�{�zr r  3>sts b  3:uvu o  36�y�y 0 thefolderpath theFolderPathv o  69�x�x "0 finalnamepdfdoc finalNamePDFDoct o      �w�w  0 pathtofinalpdf pathToFinalPDF�{  �z  q wxw l     �v�u�t�v  �u  �t  x yzy l     �s{|�s  { - ' We stop if we don't find the bordereau   | �}} N   W e   s t o p   i f   w e   d o n ' t   f i n d   t h e   b o r d e r e a uz ~~ l ?h��r�q� Z  ?h��p�o�� I  ?G�n��m�n .0 checkfileexistsatpath CheckFileExistsAtPath� ��l� o  @C�k�k "0 directpathtotxt directPathToTxt�l  �m  �p  �o  � k  Nh�� ��� I NY�j��i
�j .sysodlogaskr        TEXT� b  NU��� m  NQ�� ��� 0 I l   n ' y   a   p a s   d e   f i c h i e r  � o  QT�h�h ,0 defaultnamebordereau defaultNameBordereau�i  � ��� I Ze�g��f
�g .ascrcmnt****      � ****� b  Za��� m  Z]�� ���  P a s   d e  � o  ]`�e�e ,0 defaultnamebordereau defaultNameBordereau�f  � ��� l ff�d�c�b�d  �c  �b  � ��a� L  fh�`�`  �a  �r  �q   ��� l     �_�^�]�_  �^  �]  � ��� l     �\���\  � ' ! We stop if we don't find the pdf   � ��� B   W e   s t o p   i f   w e   d o n ' t   f i n d   t h e   p d f� ��� l i���[�Z� Z  i���Y�X�� I  iq�W��V�W .0 checkfileexistsatpath CheckFileExistsAtPath� ��U� o  jm�T�T "0 directpathtopdf directPathToPDF�U  �V  �Y  �X  � k  x��� ��� I x��S��R
�S .sysodlogaskr        TEXT� b  x��� m  x{�� ��� 0 I l   n ' y   a   p a s   d e   f i c h i e r  � o  {~�Q�Q 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc�R  � ��P� L  ���O�O  �P  �[  �Z  � ��� l     �N�M�L�N  �M  �L  � ��� l     �K���K  � 5 / We stop if we don't find the pdf (in the name)   � ��� ^   W e   s t o p   i f   w e   d o n ' t   f i n d   t h e   p d f   ( i n   t h e   n a m e )� ��� l ����J�I� Z  ����H�G�� I  ���F��E�F *0 checkthisisapdfpath CheckThisIsAPDFPath� ��D� o  ���C�C "0 directpathtopdf directPathToPDF�D  �E  �H  �G  � k  ���� ��� I ���B��A
�B .sysodlogaskr        TEXT� m  ���� ��� & C e   n ' e s t   p a s   u n   P D F�A  � ��@� L  ���?�?  �@  �J  �I  � ��� l     �>�=�<�>  �=  �<  � ��� l     �;���;  � , & We stop if we don't find the logo.png   � ��� L   W e   s t o p   i f   w e   d o n ' t   f i n d   t h e   l o g o . p n g� ��� l ����:�9� Z  ����8�7�� I  ���6��5�6 .0 checkfileexistsatpath CheckFileExistsAtPath� ��4� o  ���3�3 $0 directpathtologo directPathToLogo�4  �5  �8  �7  � k  ���� ��� I ���2��1
�2 .sysodlogaskr        TEXT� b  ����� m  ���� ��� 0 I l   n ' y   a   p a s   d e   f i c h i e r  � o  ���0�0 "0 defaultnamelogo defaultNameLogo�1  � ��/� L  ���.�.  �/  �:  �9  � ��� l     �-�,�+�-  �,  �+  � ��� l     �*�)�(�*  �)  �(  � ��� l     �'���'  � $  let's load the bordereau info   � ��� <   l e t ' s   l o a d   t h e   b o r d e r e a u   i n f o� ��� l ����&�%� r  ����� I ���$��
�$ .rdwrread****        ****� l ����#�"� o  ���!�! "0 directpathtotxt directPathToTxt�#  �"  � � ��
�  
as  � m  ���
� 
utf8�  � o      �� $0 thebordereautext theBordereauText�&  �%  � ��� l ������ Z ������� o  ���� 	0 debug  � I �����
� .sysodlogaskr        TEXT� o  ���� $0 thebordereautext theBordereauText�  �  �  �  �  � ��� l ������ Z ������� o  ���� 0 verbose  � I �����
� .ascrcmnt****      � ****� b  ����� m  ���� ���  b o r d e r e a u   :  � o  ���� $0 thebordereautext theBordereauText�  �  �  �  �  � ��� l ����� r  �� � I  ���
�	�
 40 returnfilecontentsaslist ReturnFileContentsAsList � o  ���� "0 directpathtotxt directPathToTxt�  �	    o      �� 0 	textlines 	textLines�  �  �  l     ����  �  �    l �� r  	 I  
� 
���  60 countnameandpagesofpieces CountNameAndPagesOfPieces
 �� o  ���� 0 	textlines 	textLines��  ��  	 o      ���� <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces�  �    l     ��������  ��  ��    l ���� r   I  ������ "0 sumtotalofpages SumTotalOfPages �� o  ���� <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces��  ��   o      ���� .0 theexpectedtotalpages theExpectedTotalPages��  ��    l /���� Z /���� o  ���� 	0 debug   I  +����
�� .sysodlogaskr        TEXT b   ' m   # � R w e   h a v e   s o   m a n y   p a g e s   f r o m   t h e   b o r d e r e a u   o  #&���� .0 theexpectedtotalpages theExpectedTotalPages��  ��  ��  ��  ��     l 0;!����! I 0;��"��
�� .ascrcmnt****      � ****" b  07#$# m  03%% �&&   s o   m a n y   p a g e s   :  $ o  36���� .0 theexpectedtotalpages theExpectedTotalPages��  ��  ��    '(' l     ��������  ��  ��  ( )*) l <H+����+ r  <H,-, I  <D��.���� (0 detailsofbordereau DetailsOfBordereau. /��/ o  =@���� 0 	textlines 	textLines��  ��  - o      ���� $0 thekeyvaluepairs theKeyValuePairs��  ��  * 010 l     ��������  ��  ��  1 232 l     ��45��  4 , &if debug then display dialog textLines   5 �66 L i f   d e b u g   t h e n   d i s p l a y   d i a l o g   t e x t L i n e s3 787 l     ��������  ��  ��  8 9:9 l     ��;<��  ; , & let's find the number of pages in PDF   < �== L   l e t ' s   f i n d   t h e   n u m b e r   o f   p a g e s   i n   P D F: >?> l IU@����@ r  IUABA I  IQ��C���� $0 getpagesoffilepy GetPagesOfFilePYC D��D o  JM���� "0 directpathtopdf directPathToPDF��  ��  B o      ���� .0 thenumberofpagesinpdf theNumberofPagesInPDF��  ��  ? EFE l ViG����G Z ViHI����H o  VW���� 	0 debug  I I Ze��J��
�� .sysodlogaskr        TEXTJ b  ZaKLK o  Z]���� .0 thenumberofpagesinpdf theNumberofPagesInPDFL m  ]`MM �NN $   p a g e s   i n   t h i s   P D F��  ��  ��  ��  ��  F OPO l juQ����Q r  juRSR I jq��T��
�� .corecnte****       ****T o  jm���� <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces��  S o      ���� 0 countofpieces countofPieces��  ��  P UVU l v�W����W Z v�XY����X H  vxZZ o  vw���� 	0 debug  Y I {���[\
�� .sysonotfnull��� ��� TEXT[ b  {�]^] b  {�_`_ m  {~aa �bb  D a n s   u n   P D F   d e  ` o  ~����� .0 thenumberofpagesinpdf theNumberofPagesInPDF^ m  ��cc �dd    p a g e s .\ ��ef
�� 
appre b  ��ghg b  ��iji m  ��kk �ll  j o  ������ 0 countofpieces countofPiecesh m  ��mm �nn    p i � c e sf ��o��
�� 
nsouo m  ��pp �qq  B o t t l e��  ��  ��  ��  ��  V rsr l ��t����t Z ��uv����u o  ������ 	0 debug  v I ����wx
�� .sysonotfnull��� ��� TEXTw b  ��yzy b  ��{|{ m  ��}} �~~ J D a n s   u n   P D F   d e   t h e N u m b e r o f P a g e s I n P D F  | o  ������ .0 thenumberofpagesinpdf theNumberofPagesInPDFz m  �� ���    p a g e s .x ����
�� 
appr� b  ����� b  ����� m  ���� ���  � o  ������ 0 countofpieces countofPieces� m  ���� ���    p i � c e s� �����
�� 
nsou� m  ���� ���  B o t t l e��  ��  ��  ��  ��  s ��� l     ��������  ��  ��  � ��� l �������� I �������
�� .ascrcmnt****      � ****� b  ����� m  ���� ��� . i n   P D F   w e   f i n d   p a g e s   :  � o  ������ .0 thenumberofpagesinpdf theNumberofPagesInPDF��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � H B check consistency between the list and size of pieces and the PDF   � ��� �   c h e c k   c o n s i s t e n c y   b e t w e e n   t h e   l i s t   a n d   s i z e   o f   p i e c e s   a n d   t h e   P D F� ��� l ������� Z  �������� l �������� > ����� ]  ����� o  ������ .0 thenumberofpagesinpdf theNumberofPagesInPDF� m  ������ � ]  ����� o  ������ .0 theexpectedtotalpages theExpectedTotalPages� m  ������ ��  ��  � l ����� k  ��� ��� I ������
�� .sysodlogaskr        TEXT� b  � ��� b  ����� b  ����� b  ����� m  ���� ��� 8 O o o p s   !   V o u s   a v e z   u n   P D F   d e  � o  ������ .0 thenumberofpagesinpdf theNumberofPagesInPDF� m  ���� ��� Z   p a g e s ,   m a i s   v o u s   l i s t e z   d e s   p i � c e s   c o u v r a n t  � o  ������ .0 theexpectedtotalpages theExpectedTotalPages� m  ���� ���    f e u i l l e t s   !��  � ��� I �����
�� .ascrcmnt****      � ****� m  �� ��� t e r r o r   :   n o t   s a m e   t o t a l   p a g e s   i n   b o r d e r e a u   a n d   p a g e s   i n   P D F��  � ���� L  ����  ��  � / ) beware equality is not good on variables   � ��� R   b e w a r e   e q u a l i t y   i s   n o t   g o o d   o n   v a r i a b l e s��  ��  ��  ��  � ��� l      ������  � � �
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
� ��� l     ��������  ��  ��  � ��� l     ������  �  	 we need    � ���    w e   n e e d  � ��� l     ��������  ��  ��  � ��� l     �������  ��  �  � ��� l #��~�}� Z #���|�{� o  �z�z 	0 debug  � I �y��x
�y .sysodlogaskr        TEXT� m  �� ��� ( O k ,   w e   a r e   a l l   s e t   !�x  �|  �{  �~  �}  � ��� l $+��w�v� I $+�u��t
�u .ascrcmnt****      � ****� m  $'�� ��� ^ A l l   c o n f i g   i s   h e r e ,   l e t ' s   w a t e r m a r k   s o m e   f i l e s !�t  �w  �v  � ��� l     �s�r�q�s  �r  �q  � ��� l     �p���p  � � � split the pdf in the different pieces -- (beware, we have a function that expects to get the first split page number AT 2ND DOC page number)   � ���   s p l i t   t h e   p d f   i n   t h e   d i f f e r e n t   p i e c e s   - -   ( b e w a r e ,   w e   h a v e   a   f u n c t i o n   t h a t   e x p e c t s   t o   g e t   t h e   f i r s t   s p l i t   p a g e   n u m b e r   A T   2 N D   D O C   p a g e   n u m b e r )� ��� l     �o�n�m�o  �n  �m  � ��� l ,2��l�k� r  ,2��� J  ,.�j�j  � o      �i�i &0 thearrayofindexes theArrayOfIndexes�l  �k  � ��� l 3`��h�g� X  3`��f�� r  I[��� b  IW��� o  IL�e�e &0 thearrayofindexes theArrayOfIndexes� l LV��d�c� \  LV��� ]  LT� � l LR�b�a n  LR 4  MR�`
�` 
cobj m  PQ�_�_  o  LM�^�^ 
0 apiece  �b  �a    m  RS�]�] � m  TU�\�\ �d  �c  � o      �[�[ &0 thearrayofindexes theArrayOfIndexes�f 
0 apiece  � o  69�Z�Z <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces�h  �g  �  l     �Y�X�W�Y  �X  �W    l at	�V�U	 r  at

 n  ap 7 dp�T
�T 
cobj m  jl�S�S  m  mo�R�R�� o  ad�Q�Q &0 thearrayofindexes theArrayOfIndexes o      �P�P &0 thearrayofindexes theArrayOfIndexes�V  �U    l u}�O�N s  u} o  ux�M�M .0 theexpectedtotalpages theExpectedTotalPages l     �L�K n        ;  {| o  x{�J�J &0 thearrayofindexes theArrayOfIndexes�L  �K  �O  �N    l     �I�I   &  display dialog theArrayOfIndexes    � @ d i s p l a y   d i a l o g   t h e A r r a y O f I n d e x e s  l     �H�G�F�H  �G  �F     l ~�!�E�D! r  ~�"#" I  ~��C$�B�C 0 	splittext 	splitText$ %&% I  ��A'�@�A 0 trim  ' ()( I  ���?*�>�? 20 writexfilespdffromonepy WriteXFilesPDFfromOnePY* +,+ o  ���=�= "0 directpathtopdf directPathToPDF, -.- o  ���<�< 0 thetemppath theTempPath. /�;/ o  ���:�: &0 thearrayofindexes theArrayOfIndexes�;  �>  ) 0�90 1  ���8
�8 
spac�9  �@  & 1�71 1  ���6
�6 
spac�7  �B  # o      �5�5 .0 thegeneratedfileslist theGeneratedFilesList�E  �D    232 l ��4564 Z ��78�4�37 o  ���2�2 0 verbose  8 I ���19�0
�1 .ascrcmnt****      � ****9 b  ��:;: m  ��<< �== D W e   s p l i t   t h e   o n e   f i l e   i n t o   t h o s e :  ; o  ���/�/ .0 thegeneratedfileslist theGeneratedFilesList�0  �4  �3  5   this is an object list   6 �>> .   t h i s   i s   a n   o b j e c t   l i s t3 ?@? l     �.�-�,�.  �-  �,  @ ABA l     �+CD�+  C P J we make the watermark image with generateStampImageForPieceNumberIM4param   D �EE �   w e   m a k e   t h e   w a t e r m a r k   i m a g e   w i t h   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M 4 p a r a mB FGF l     �*HI�*  H R L todo : correct generateStampImageForPieceNumberIM to amend quoted path etc.   I �JJ �   t o d o   :   c o r r e c t   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M   t o   a m e n d   q u o t e d   p a t h   e t c .G KLK l     �)�(�'�)  �(  �'  L MNM l     �&OP�&  O � �if not debug then display notification "Dans un dossier '" & defaultTempFolderName & "/' dans votre dossier." with title "Cr�ation des fichiers interm�diaires" sound name "Bottle"   P �QQf i f   n o t   d e b u g   t h e n   d i s p l a y   n o t i f i c a t i o n   " D a n s   u n   d o s s i e r   ' "   &   d e f a u l t T e m p F o l d e r N a m e   &   " / '   d a n s   v o t r e   d o s s i e r . "   w i t h   t i t l e   " C r � a t i o n   d e s   f i c h i e r s   i n t e r m � d i a i r e s "   s o u n d   n a m e   " B o t t l e "N RSR l     �%�$�#�%  �$  �#  S TUT l ��V�"�!V r  ��WXW J  ��� �   X o      �� 0 themanyimages theManyImages�"  �!  U YZY l �[��[ Y  �\�]^�\ k  �__ `a` l ������  �  �  a bcb Z ��de��d o  ���� 	0 debug  e I ���f�
� .sysodlogaskr        TEXTf b  ��ghg b  ��iji b  ��klk m  ��mm �nn 4 m a k i n g   w a t e r m a r k i n g   i m a g e  l o  ���� 0 i  j m  ��oo �pp    :  h n  ��qrq 4  ���s
� 
cobjs o  ���� 0 i  r o  ���� .0 thegeneratedfileslist theGeneratedFilesList�  �  �  c tut l ���vw�  v � �generateStampImageForPieceNumberIM4param(convertcommand, theOriginalImagePathaAndName, thenumber, theResultingImagesPath , theNameOfFile)    w �xx g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M 4 p a r a m ( c o n v e r t c o m m a n d ,   t h e O r i g i n a l I m a g e P a t h a A n d N a m e ,   t h e n u m b e r ,   t h e R e s u l t i n g I m a g e s P a t h   ,   t h e N a m e O f F i l e )  u yzy l ������  �  �  z {|{ r  ��}~} I  ���
�	�
 T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param ��� o  ���� &0 theconvertcommand theConvertCommand� ��� o  ���� $0 directpathtologo directPathToLogo� ��� o  ���� 0 i  � ��� o  ���� 0 thetemppath theTempPath�  �	  ~ o      �� 0 theimage  | ��� Z ������ o  � � �  	0 debug  � I 
�����
�� .sysodlogaskr        TEXT� o  ���� 0 theimage  ��  �  �  � ��� s  ��� o  ���� 0 theimage  � l     ������ n      ���  ;  � l ������ o  ���� 0 themanyimages theManyImages��  ��  ��  ��  � ���� l ��������  ��  ��  ��  � 0 i  ] m  ������ ^ I �������
�� .corecnte****       ****� o  ������ .0 thegeneratedfileslist theGeneratedFilesList��  �  �  �  Z ��� l     ������  � Q Kdisplay dialog "generated image " & convertlisttostring(theManyImages, ",")   � ��� � d i s p l a y   d i a l o g   " g e n e r a t e d   i m a g e   "   &   c o n v e r t l i s t t o s t r i n g ( t h e M a n y I m a g e s ,   " , " )� ��� l     ������  � ( " we have all watermarks stamps now   � ��� D   w e   h a v e   a l l   w a t e r m a r k s   s t a m p s   n o w� ��� l     ��������  ��  ��  � ��� l     ������  � � ~if not debug then display notification "Nous avons tous les tampons !" with title "Num�rotation de pi�ces" sound name "Bottle"   � ��� � i f   n o t   d e b u g   t h e n   d i s p l a y   n o t i f i c a t i o n   " N o u s   a v o n s   t o u s   l e s   t a m p o n s   ! "   w i t h   t i t l e   " N u m � r o t a t i o n   d e   p i � c e s "   s o u n d   n a m e   " B o t t l e "� ��� l     ��������  ��  ��  � ��� l     ������  � 9 3 now we run through the files and put the watermark   � ��� f   n o w   w e   r u n   t h r o u g h   t h e   f i l e s   a n d   p u t   t h e   w a t e r m a r k� ��� l %������ r  %��� J  !����  � o      ���� 20 thewatermarkedfileslist theWatermarkedFilesList��  ��  � ��� l &������� Y  &��������� k  6��� ��� l 66��������  ��  ��  � ��� r  6B��� n  6>��� 4  9>���
�� 
cobj� o  <=���� 0 i  � o  69���� .0 thegeneratedfileslist theGeneratedFilesList� o      ���� 0 thefiletomark theFileToMark� ��� r  CR��� l CN������ b  CN��� b  CJ��� o  CF���� 0 thetemppath theTempPath� m  FI�� ���  /� o  JM���� 0 thefiletomark theFileToMark��  ��  � o      ���� *0 thepathtofiletomark thePathToFileToMark� ��� l SS��������  ��  ��  � ��� r  Sb��� l S^������ b  S^��� b  SZ��� o  SV���� 0 thetemppath theTempPath� m  VY�� ���  / M a r k e d _� o  Z]���� 0 thefiletomark theFileToMark��  ��  � o      ���� *0 thepathtofilemarked thePathToFileMarked� ��� l cc��������  ��  ��  � ��� l cc��������  ��  ��  � ��� r  co��� n  ck��� 4  fk���
�� 
cobj� o  ij���� 0 i  � o  cf���� 0 themanyimages theManyImages� o      ���� 0 thestampfile theStampFile� ��� r  p��� l p{������ b  p{��� b  pw��� o  ps���� 0 thetemppath theTempPath� m  sv�� ���  /� o  wz���� 0 thestampfile theStampFile��  ��  � o      ���� (0 thepathtostampfile thePathToStampFile� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� Z ��������� o  ������ 	0 debug  � I �������
�� .sysodlogaskr        TEXT� b  ����� b  ����� b  ����� b  ��   b  �� m  �� � : m a r k i n g   w a t e r m a r k i n g   i n   f i l e   o  ������ 0 i   m  �� �    :  � o  ������ *0 thepathtofiletomark thePathToFileToMark� m  �� �		    w i t h   s t a m p  � o  ������ 0 thestampfile theStampFile��  ��  ��  � 

 l ����������  ��  ��    l ������   @ :watermarkFilePY(theFileToStamp, theNewFile, theStampFile)     � t w a t e r m a r k F i l e P Y ( t h e F i l e T o S t a m p ,   t h e N e w F i l e ,   t h e S t a m p F i l e )    r  �� I  �������� "0 watermarkfilepy watermarkFilePY  o  ������ *0 thepathtofiletomark thePathToFileToMark  o  ������ *0 thepathtofilemarked thePathToFileMarked �� o  ������ (0 thepathtostampfile thePathToStampFile��  ��   o      ���� 0 themarkedfile    r  �� o  ������ *0 thepathtofilemarked thePathToFileMarked o      ���� 0 themarkedfile     s  ��!"! o  ������ 0 themarkedfile  " l     #����# n      $%$  ;  ��% l ��&����& o  ������ 20 thewatermarkedfileslist theWatermarkedFilesList��  ��  ��  ��    '(' l ����������  ��  ��  ( )��) l ����������  ��  ��  ��  �� 0 i  � m  )*���� � I *1��*��
�� .corecnte****       ***** o  *-���� .0 thegeneratedfileslist theGeneratedFilesList��  ��  ��  ��  � +,+ l ��-����- Z ��./����. o  ������ 	0 debug  / I ����0��
�� .sysodlogaskr        TEXT0 b  ��121 m  ��33 �44 & a d d e d   w a t e r m a r k   t o  2 I  ����5���� 0 convertlisttostring  5 676 o  ������ 20 thewatermarkedfileslist theWatermarkedFilesList7 8��8 m  ��99 �::  ,��  ��  ��  ��  ��  ��  ��  , ;<; l �=����= Z �>?���> H  ��@@ o  ���~�~ 	0 debug  ? I ��}AB
�} .sysonotfnull��� ��� TEXTA m  ��CC �DD Z N o u s   a v o n s   t a m p o n n �   l e s   f i c h i e r s   t e m p o r a i r e s .B �|EF
�| 
apprE m  ��GG �HH " T a m p o n n a g e   f i n i   !F �{I�z
�{ 
nsouI m  ��JJ �KK  B o t t l e�z  ��  �  ��  ��  < LML l     �y�x�w�y  �x  �w  M NON l     �v�u�t�v  �u  �t  O PQP l     �s�r�q�s  �r  �q  Q RSR l     �p�o�n�p  �o  �n  S TUT l V�m�lV Z WX�k�jW o  	�i�i 	0 debug  X I �hY�g
�h .sysodlogaskr        TEXTY c  Z[Z b  \]\ m  ^^ �__ N t h o s e   a r e   a l l   t h e   f i l e s   w e   w i l l   m e r g e :  ] o  �f�f 20 thewatermarkedfileslist theWatermarkedFilesList[ m  �e
�e 
TEXT�g  �k  �j  �m  �l  U `a` l  +b�d�cb I  +�bc�a
�b .ascrcmnt****      � ****c b   'ded m   #ff �gg 6 t h e   f i l e   l i s t   w e   w i l l   m e r g ee o  #&�`�` 20 thewatermarkedfileslist theWatermarkedFilesList�a  �d  �c  a hih l     �_�^�]�_  �^  �]  i jkj l ,>l�\�[l r  ,>mnm I  ,:�Zo�Y�Z 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPYo pqp o  -0�X�X  0 pathtofinalpdf pathToFinalPDFq rsr o  03�W�W 0 thetemppath theTempPaths t�Vt o  36�U�U 20 thewatermarkedfileslist theWatermarkedFilesList�V  �Y  n o      �T�T 60 theresultlogofthepyscript theResultLogOfThePyScript�\  �[  k uvu l ?]w�S�Rw Z ?]xy�Q�Px H  ?Azz o  ?@�O�O 	0 debug  y I DY�N{|
�N .sysonotfnull��� ��� TEXT{ m  DG}} �~~ � N o u s   a v o n s   f a i t   l e   n o u v e a u   f i c h i e r   d e   p i � c e s ,   t a m p o n n � e s   e t   n u m � r o t � e s .| �M�
�M 
appr m  JM�� ���  C ' e s t   f i n i   !� �L��K
�L 
nsou� m  PS�� ���  B o t t l e�K  �Q  �P  �S  �R  v ��� l     �J�I�H�J  �I  �H  � ��� l     �G���G  �   remove temporary folder   � ��� 0   r e m o v e   t e m p o r a r y   f o l d e r� ��� l ^i��F�E� I  ^i�D��C�D (0 deletefolderatpath deleteFolderAtPath� ��� o  _b�B�B 0 thefolderpath theFolderPath� ��A� o  be�@�@ .0 defaulttempfoldername defaultTempFolderName�A  �C  �F  �E  � ��� l     �?�>�=�?  �>  �=  � ��� l jo��<�;� I jo�:�9�8
�: .miscactvnull��� ��� null�9  �8  �<  �;  � ��� l p���7�6� r  p���� n  p���� 1  ���5
�5 
bhit� l p���4�3� I p��2��
�2 .sysodlogaskr        TEXT� m  ps�� ��� 6 L e   f i c h i e r   f i n a l   e s t   p r � t   !� �1��
�1 
btns� J  v~�� ��� m  vy�� ���   M o n t r e z   l e   m o i   !� ��0� m  y|�� ���  O k�0  � �/��.
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
thepdffile  ��  ��  � k     &�� ��� l     ������  � D > we need a pdf file : ensure you test with CheckThisIsAPDFPath   � ��� |   w e   n e e d   a   p d f   f i l e   :   e n s u r e   y o u   t e s t   w i t h   C h e c k T h i s I s A P D F P a t h� ��� r     ��� b     ��� b     ��� m        � �   ' # ! / u s r / b i n / p y t h o n ; 
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
�� .ascrcmnt****      � ****� b   Z _��� m   Z ]�� ��� 2 W r i t e X F i l e s P D F f r o m O n e P Y :  � o   ] ^���� 0 thecreatedfiles  ��  � ���� L   d f�� o   d e���� 0 thecreatedfiles  ��  F * $ returns INT number of files created   G ��� H   r e t u r n s   I N T   n u m b e r   o f   f i l e s   c r e a t e d< ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  	 FindText   � ���    F i n d T e x t� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � 0 * find the string toFind in the text inText   � ��� T   f i n d   t h e   s t r i n g   t o F i n d   i n   t h e   t e x t   i n T e x t� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 findtext FindText� ��� o      ���� 0 tofind toFind� ���� o      ���� 0 intext inText��  ��  � L     �� l    ������ E    ��� o     ���� 0 intext inText� o    ���� 0 tofind toFind��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �    writeOnePDFFileFromManyPY   � ��� 4   w r i t e O n e P D F F i l e F r o m M a n y P Y� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � Q K pass a file path, a number of files as list and write one file in the path   � ��� �   p a s s   a   f i l e   p a t h ,   a   n u m b e r   o f   f i l e s   a s   l i s t   a n d   w r i t e   o n e   f i l e   i n   t h e   p a t h� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPY� ��� o      ���� 0 thefinalfile theFinalFile� ��� o      ���� 20 wheretofindthefilespath whereToFindTheFilesPath� ���� o      �� 60 thefileslistwiththeirpath theFilesListWithTheirPath��  ��  � l    P���� k     P�� ��� l      �~���~  � � �
	set theNewList to {}
	repeat with thefile in theNamesOfFilesList
		copy (whereToFindPath & "/" & thefile) to end of theNewList
	end repeat
	   � ��� 
 	 s e t   t h e N e w L i s t   t o   { } 
 	 r e p e a t   w i t h   t h e f i l e   i n   t h e N a m e s O f F i l e s L i s t 
 	 	 c o p y   ( w h e r e T o F i n d P a t h   &   " / "   &   t h e f i l e )   t o   e n d   o f   t h e N e w L i s t 
 	 e n d   r e p e a t 
 	� ��� r     ��� b     ��� b     	��� m     �� ���  ( "� I    �}��|�} 0 convertlisttostring  � ��� o    �{�{ 60 thefileslistwiththeirpath theFilesListWithTheirPath� ��z� m    �� ���  " ,   "�z  �|  � m   	 
   �  " )� o      �y�y H0 "thecorrectedfileslistwiththeirpath "theCorrectedFilesListWithTheirPath�  Z   �x�w o    �v�v 	0 debug   I   �u�t
�u .sysodlogaskr        TEXT b     m    		 �

 N w r i t e O n e P D F F i l e F r o m M a n y P Y :   t h e   f i l e s   =   o    �s�s H0 "thecorrectedfileslistwiththeirpath "theCorrectedFilesListWithTheirPath�t  �x  �w    l   �r�q�p�r  �q  �p    l   �o�n�m�o  �n  �m    l    �l�l   * $ formatted as path and quote, comma     � H   f o r m a t t e d   a s   p a t h   a n d   q u o t e ,   c o m m a    l   �k�j�i�k  �j  �i    l   �h�g�f�h  �g  �f    r    + b    ) b    ' b    % !  b    #"#" b    !$%$ m    && �'' � ' # !   / u s r / b i n / p y t h o n 
 
 f r o m   Q u a r t z . C o r e G r a p h i c s   i m p o r t   * 
 
 t h e F i l e   =   "% o     �e�e 0 thefinalfile theFinalFile# m   ! "(( �))  " 
 t h e F o l d e r   =   "! m   # $** �++ $ "   
 t h e F i l e s L i s t   =   o   % &�d�d H0 "thecorrectedfileslistwiththeirpath "theCorrectedFilesListWithTheirPath m   ' (,, �--� 
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
 	 # C G C o n t e x t R e l e a s e ( w r i t e C o n t e x t ) ' o      �c�c 0 	thescript   ./. l  , ,�b�a�`�b  �a  �`  / 010 r   , 5232 I  , 3�_4�^
�_ .sysoexecTEXT���     TEXT4 b   , /565 m   , -77 �88  p y t h o n   - c  6 o   - .�]�] 0 	thescript  �^  3 o      �\�\ 
0 thedoc  1 9:9 Z  6 E;<�[�Z; o   6 7�Y�Y 	0 debug  < I  : A�X=�W
�X .sysodlogaskr        TEXT= b   : =>?> m   : ;@@ �AA t w r i t e O n e P D F F i l e F r o m M a n y P Y :   r e t u r n e d   O n e   P D F   f i l e   :   t h e d o c  ? o   ; <�V�V 
0 thedoc  �W  �[  �Z  : BCB I  F M�UD�T
�U .ascrcmnt****      � ****D b   F IEFE m   F GGG �HH d w r i t e O n e P D F F i l e F r o m M a n y P Y :   r e t u r n e d   O n e   P D F   f i l e   :F o   G H�S�S 
0 thedoc  �T  C I�RI L   N PJJ o   N O�Q�Q 
0 thedoc  �R  �   return the file   � �KK     r e t u r n   t h e   f i l e� LML l     �P�O�N�P  �O  �N  M NON l     �M�L�K�M  �L  �K  O PQP l     �JRS�J  R   CheckIMInstalled   S �TT "   C h e c k I M I n s t a l l e dQ UVU l     �IWX�I  W / ) ########################################   X �YY R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #V Z[Z l     �H\]�H  \ d ^ verify that we have a "convert" command available, and sets the value fo the command location   ] �^^ �   v e r i f y   t h a t   w e   h a v e   a   " c o n v e r t "   c o m m a n d   a v a i l a b l e ,   a n d   s e t s   t h e   v a l u e   f o   t h e   c o m m a n d   l o c a t i o n[ _`_ l     �G�F�E�G  �F  �E  ` aba i    cdc I      �D�C�B�D $0 checkiminstalled CheckIMInstalled�C  �B  d l    efge Q     hijh k    kk lml r    
non I   �Ap�@
�A .sysoexecTEXT���     TEXTp m    qq �rr 4 b a s h   - l   - c   ' w h i c h   c o n v e r t '�@  o o      �?�? &0 theconvertcommand theConvertCommandm s�>s L    tt m    �=
�= boovtrue�>  i R      �<�;�:
�< .ascrerr ****      � ****�;  �:  j L    uu m    �9
�9 boovfalsf + % returns location of convert or empty   g �vv J   r e t u r n s   l o c a t i o n   o f   c o n v e r t   o r   e m p t yb wxw l     �8�7�6�8  �7  �6  x yzy l     �5{|�5  {   insertToCInPDF   | �}}    i n s e r t T o C I n P D Fz ~~ i    ��� I      �4�3�2�4  0 inserttocinpdf insertToCInPDF�3  �2  � l     �1���1  � T N we need to pull the bordereau info as elements and page number to add the ToC   � ��� �   w e   n e e d   t o   p u l l   t h e   b o r d e r e a u   i n f o   a s   e l e m e n t s   a n d   p a g e   n u m b e r   t o   a d d   t h e   T o C ��� l     �0�/�.�0  �/  �.  � ��� l     �-���-  � ) # generateStampImageForPieceNumberIM   � ��� F   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M� ��� l     �,���,  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     �+���+  � � � use imagemagick, passes the command syntax (convert in its installed place), an original stamp image (located with path), a number a file path and returns the name of the image created at the path   � ����   u s e   i m a g e m a g i c k ,   p a s s e s   t h e   c o m m a n d   s y n t a x   ( c o n v e r t   i n   i t s   i n s t a l l e d   p l a c e ) ,   a n   o r i g i n a l   s t a m p   i m a g e   ( l o c a t e d   w i t h   p a t h ) ,   a   n u m b e r   a   f i l e   p a t h   a n d   r e t u r n s   t h e   n a m e   o f   t h e   i m a g e   c r e a t e d   a t   t h e   p a t h� ��� l     �*���*  � [ U beware ! passing the path doesn't work wih quoted form, but the space will break it.   � ��� �   b e w a r e   !   p a s s i n g   t h e   p a t h   d o e s n ' t   w o r k   w i h   q u o t e d   f o r m ,   b u t   t h e   s p a c e   w i l l   b r e a k   i t .� ��� l     �)�(�'�)  �(  �'  � ��� i    ��� I      �&��%�& H0 "generatestampimageforpiecenumberim "generateStampImageForPieceNumberIM� ��� o      �$�$ 0 convertcommand  � ��� o      �#�# <0 theoriginalimagepathaandname theOriginalImagePathaAndName� ��� o      �"�" 0 	thenumber  � ��� o      �!�! 00 theresultingimagespath theResultingImagesPath� �� � o      �� 0 thenameoffile theNameOfFile�   �%  � l    C���� k     C�� ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � ( "display dialog PathToOriginalImage   � ��� D d i s p l a y   d i a l o g   P a t h T o O r i g i n a l I m a g e� ��� r     ��� n     ��� 1    �
� 
strq� l    ���� o     �� <0 theoriginalimagepathaandname theOriginalImagePathaAndName�  �  � o      �� *0 pathtooriginalimage pathToOriginalImage� ��� r    ��� n    	��� 1    	�
� 
strq� l   ���� o    �� 00 theresultingimagespath theResultingImagesPath�  �  � o      ��  0 pathtonewimage PathToNewImage� ��� l   �
�	��
  �	  �  � ��� r    ��� b    ��� m    �� ���  P i � c e \ n n �� o    �� 0 	thenumber  � o      �� "0 piecenumbertext pieceNumberText� ��� r    ��� b    ��� b    ��� o    �� 0 thenameoffile theNameOfFile� o    �� 0 	thenumber  � m    �� ���  . p n g� o      �� 0 newimagename  � ��� l   ����  � ; 5display dialog "Now trying for image " & newimagename   � ��� j d i s p l a y   d i a l o g   " N o w   t r y i n g   f o r   i m a g e   "   &   n e w i m a g e n a m e� ��� r    +��� b    )��� b    '��� b    %��� b    #��� b    !��� b    ��� b    ��� o    �� 0 convertcommand  � m    �� ���   � o    � �  <0 theoriginalimagepathaandname theOriginalImagePathaAndName� m     �� ��� t   - g r a v i t y   c e n t e r   - p o i n t s i z e   7 0   - f i l l   ' b l a c k '   - a n n o t a t e   0   '� o   ! "���� "0 piecenumbertext pieceNumberText� m   # $�� ���  '  � o   % &����  0 pathtonewimage PathToNewImage� o   ' (���� 0 newimagename  � o      ����  0 theimagescript theImageScript� ��� l  , ,��������  ��  ��  � ��� l  , ,������  � # display dialog theImageScript   � ��� : d i s p l a y   d i a l o g   t h e I m a g e S c r i p t�    Q   , A k   / 7  I  / 4����
�� .sysoexecTEXT���     TEXT o   / 0����  0 theimagescript theImageScript��   	��	 L   5 7

 o   5 6���� 0 newimagename  ��   R      ������
�� .ascrerr ****      � ****��  ��   L   ? A m   ? @ � 
 e r r o r �� l  B B��������  ��  ��  ��  �   return new image name   � � ,   r e t u r n   n e w   i m a g e   n a m e�  l     ��������  ��  ��    l     ����   / ) generateStampImageForPieceNumberIM4param    � R   g e n e r a t e S t a m p I m a g e F o r P i e c e N u m b e r I M 4 p a r a m  l     ����   / ) ########################################    � R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #  l     ����   � � use imagemagick, passes the command syntax (convert in its installed place), an original stamp image (located with path), a number a file path and returns the name of the image created at the path    �  �   u s e   i m a g e m a g i c k ,   p a s s e s   t h e   c o m m a n d   s y n t a x   ( c o n v e r t   i n   i t s   i n s t a l l e d   p l a c e ) ,   a n   o r i g i n a l   s t a m p   i m a g e   ( l o c a t e d   w i t h   p a t h ) ,   a   n u m b e r   a   f i l e   p a t h   a n d   r e t u r n s   t h e   n a m e   o f   t h e   i m a g e   c r e a t e d   a t   t h e   p a t h !"! l     ��#$��  # [ U beware ! passing the path doesn't work wih quoted form, but the space will break it.   $ �%% �   b e w a r e   !   p a s s i n g   t h e   p a t h   d o e s n ' t   w o r k   w i h   q u o t e d   f o r m ,   b u t   t h e   s p a c e   w i l l   b r e a k   i t ." &'& l     ��������  ��  ��  ' ()( i    *+* I      ��,���� T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param, -.- o      ���� 0 convertcommand  . /0/ o      ���� <0 theoriginalimagepathaandname theOriginalImagePathaAndName0 121 o      ���� 0 	thenumber  2 3��3 o      ���� 00 theresultingimagespath theResultingImagesPath��  ��  + l    m4564 k     m77 898 l     ��������  ��  ��  9 :;: l     ��������  ��  ��  ; <=< l     ��������  ��  ��  = >?> l     ��������  ��  ��  ? @A@ l     ��BC��  B ( "display dialog PathToOriginalImage   C �DD D d i s p l a y   d i a l o g   P a t h T o O r i g i n a l I m a g eA EFE r     GHG b     IJI m     KK �LL  P i � c e \ n n �J o    ���� 0 	thenumber  H o      ���� "0 piecenumbertext pieceNumberTextF MNM r    OPO n    	QRQ 1    	��
�� 
strqR l   S����S o    ���� <0 theoriginalimagepathaandname theOriginalImagePathaAndName��  ��  P o      ���� *0 pathtooriginalimage pathToOriginalImageN TUT l   ��������  ��  ��  U VWV r    XYX b    Z[Z b    \]\ m    ^^ �__  p i e c e _ n _] o    ���� 0 	thenumber  [ m    `` �aa  . p n gY o      ���� 0 	imagename 	imageNameW bcb l   ��������  ��  ��  c ded l   fghf r    iji l   k����k b    lml b    non o    ���� 00 theresultingimagespath theResultingImagesPatho m    pp �qq  /m o    ���� 0 	imagename 	imageName��  ��  j o      ����  0 pathtonewimage PathToNewImageg   path is not proper if no /   h �rr 4 p a t h   i s   n o t   p r o p e r   i f   n o   /e sts r    !uvu n    wxw 1    ��
�� 
strqx o    ����  0 pathtonewimage PathToNewImagev o      ����  0 pathtonewimage PathToNewImaget yzy Z  " 1{|����{ o   " #���� 	0 debug  | I  & -��}��
�� .sysodlogaskr        TEXT} b   & )~~ m   & '�� ��� 6 t h e   p a t h   t o   n e w   i m a g e   i s   :   o   ' (����  0 pathtonewimage PathToNewImage��  ��  ��  z ��� l  2 2��������  ��  ��  � ��� r   2 A��� b   2 ?��� b   2 =��� b   2 ;��� b   2 9��� b   2 7��� b   2 5��� o   2 3���� 0 convertcommand  � m   3 4�� ���   � o   5 6���� *0 pathtooriginalimage pathToOriginalImage� m   7 8�� ��� �     - f o n t   ' / L i b r a r y / F o n t s / / C o u r i e r   N e w   B o l d . t t f '   - g r a v i t y   c e n t e r   - p o i n t s i z e   7 0   - f i l l   ' b l a c k '   - a n n o t a t e   0     '� o   9 :���� "0 piecenumbertext pieceNumberText� m   ; <�� ���  '    � o   = >����  0 pathtonewimage PathToNewImage� o      ����  0 theimagescript theImageScript� ��� l  B B��������  ��  ��  � ��� Z  B S������� o   B C���� 	0 debug  � I  F O�����
�� .sysodlogaskr        TEXT� b   F K��� b   F I��� m   F G�� ���  t h e   s c r i p t   i s   [� o   G H����  0 theimagescript theImageScript� m   I J�� ���  ]��  ��  ��  � ��� Q   T k���� k   W _�� ��� I  W \�����
�� .sysoexecTEXT���     TEXT� o   W X����  0 theimagescript theImageScript��  � ���� L   ] _�� o   ] ^���� 0 	imagename 	imageName��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   g k�� m   g j�� ��� 
 e r r o r� ��� l  l l��������  ��  ��  � ���� l  l l��������  ��  ��  ��  5   return new image name   6 ��� ,   r e t u r n   n e w   i m a g e   n a m e) ��� l     ��������  ��  ��  � ��� l     ������  �   CheckThisIsAPDFPath   � ��� (   C h e c k T h i s I s A P D F P a t h� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � ' ! verify the path ends with ".pdf"   � ��� B   v e r i f y   t h e   p a t h   e n d s   w i t h   " . p d f "� ��� l     ��������  ��  ��  � ��� i     #��� I      ������� *0 checkthisisapdfpath CheckThisIsAPDFPath� ���� o      ���� 0 thefile  ��  ��  � L     �� l    ������ =     ��� l    	������ I    	��~�
� .sysooffslong    ��� null�~  � �}��
�} 
psof� m    �� ���  . p d f� �|��{
�| 
psin� o    �z�z 0 thefile  �{  ��  ��  � l  	 ��y�x� \   	 ��� l  	 ��w�v� n   	 ��� 1   
 �u
�u 
leng� o   	 
�t�t 0 thefile  �w  �v  � m    �s�s �y  �x  ��  ��  � ��� l     �r�q�p�r  �q  �p  � ��� l     �o���o  �   CheckThisIsATxtPath   � ��� (   C h e c k T h i s I s A T x t P a t h� ��� l     �n���n  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     �m���m  � ' ! verify the path ends with ".txt"   � ��� B   v e r i f y   t h e   p a t h   e n d s   w i t h   " . t x t "� ��� l     �l�k�j�l  �k  �j  � ��� i   $ '��� I      �i��h�i *0 checkthisisatxtpath CheckThisIsATxtPath� ��g� o      �f�f 0 thefile  �g  �h  � L     �� l    ��e�d� =     	 		  l    		�c�b	 I    	�a�`	
�a .sysooffslong    ��� null�`  	 �_		
�_ 
psof	 m    		 �		  . t x t	 �^	�]
�^ 
psin	 o    �\�\ 0 thefile  �]  �c  �b  	 l  	 		�[�Z		 \   	 	
		
 l  	 	�Y�X	 n   	 			 1   
 �W
�W 
leng	 o   	 
�V�V 0 thefile  �Y  �X  	 m    �U�U �[  �Z  �e  �d  � 			 l     �T�S�R�T  �S  �R  	 			 l     �Q		�Q  	   CheckFileExistsAtPath   	 �		 ,   C h e c k F i l e E x i s t s A t P a t h	 			 l     �P		�P  	 / ) ########################################   	 �		 R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	 			 l     �O		�O  	 8 2 verify the file we need is present at given path    	 �		 d   v e r i f y   t h e   f i l e   w e   n e e d   i s   p r e s e n t   a t   g i v e n   p a t h  	 	 	!	  l     �N�M�L�N  �M  �L  	! 	"	#	" i   ( +	$	%	$ I      �K	&�J�K .0 checkfileexistsatpath CheckFileExistsAtPath	& 	'�I	' o      �H�H 0 thefile  �I  �J  	% l    	(	)	*	( Q     	+	,	-	+ k    	.	. 	/	0	/ c    		1	2	1 4    �G	3
�G 
psxf	3 o    �F�F 0 thefile  	2 m    �E
�E 
alis	0 	4�D	4 L   
 	5	5 m   
 �C
�C boovtrue�D  	, R      �B�A�@
�B .ascrerr ****      � ****�A  �@  	- L    	6	6 m    �?
�? boovfals	) / ) expect a POSIX file path -- returns BOOL   	* �	7	7 R   e x p e c t   a   P O S I X   f i l e   p a t h   - -   r e t u r n s   B O O L	# 	8	9	8 l     �>�=�<�>  �=  �<  	9 	:	;	: l     �;	<	=�;  	<   ReturnFileContentsAsList   	= �	>	> 2   R e t u r n F i l e C o n t e n t s A s L i s t	; 	?	@	? l     �:	A	B�:  	A / ) ########################################   	B �	C	C R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	@ 	D	E	D l     �9	F	G�9  	F F @ An AppleScript function that reads a file and returns the lines   	G �	H	H �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   r e a d s   a   f i l e   a n d   r e t u r n s   t h e   l i n e s	E 	I	J	I l     �8	K	L�8  	K    from that file as a list.   	L �	M	M 4   f r o m   t h a t   f i l e   a s   a   l i s t .	J 	N	O	N l     �7�6�5�7  �6  �5  	O 	P	Q	P i   , /	R	S	R I      �4	T�3�4 40 returnfilecontentsaslist ReturnFileContentsAsList	T 	U�2	U o      �1�1 0 thefile  �2  �3  	S k     	V	V 	W	X	W r     	Y	Z	Y I    �0	[�/
�0 .rdwropenshor       file	[ o     �.�. 0 thefile  �/  	Z o      �-�- 0 
filehandle 
fileHandle	X 	\	]	\ l   	^	_	`	^ r    	a	b	a n    	c	d	c 2   �,
�, 
cpar	d l   	e�+�*	e I   �)	f	g
�) .rdwrread****        ****	f o    	�(�( 0 
filehandle 
fileHandle	g �'	h�&
�' 
as  	h m   
 �%
�% 
utf8�&  �+  �*  	b o      �$�$ 0 thelines theLines	_   important to read UTF8   	` �	i	i .   i m p o r t a n t   t o   r e a d   U T F 8	] 	j	k	j I   �#	l�"
�# .rdwrclosnull���     ****	l o    �!�! 0 
filehandle 
fileHandle�"  	k 	m� 	m L    	n	n o    �� 0 thelines theLines�   	Q 	o	p	o l     ����  �  �  	p 	q	r	q l     �	s	t�  	s    CountNameAndPagesOfPieces   	t �	u	u 4   C o u n t N a m e A n d P a g e s O f P i e c e s	r 	v	w	v l     �	x	y�  	x / ) ########################################   	y �	z	z R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	w 	{	|	{ l     �	}	~�  	} p j An AppleScript function that finds lines with "piece X : WWWWWw [Y]" and picks number X and picks pages Y   	~ �		 �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   f i n d s   l i n e s   w i t h   " p i e c e   X   :   W W W W W w   [ Y ] "   a n d   p i c k s   n u m b e r   X   a n d   p i c k s   p a g e s   Y	| 	�	�	� l     ����  �  �  	� 	�	�	� l     �	�	��  	�    CountNameAndPagesOfPieces   	� �	�	� 4   C o u n t N a m e A n d P a g e s O f P i e c e s	� 	�	�	� l     �	�	��  	� / ) ########################################   	� �	�	� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	� 	�	�	� l     �	�	��  	� p j An AppleScript function that finds lines with "piece X : WWWWWw [Y]" and picks number X and picks pages Y   	� �	�	� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   f i n d s   l i n e s   w i t h   " p i e c e   X   :   W W W W W w   [ Y ] "   a n d   p i c k s   n u m b e r   X   a n d   p i c k s   p a g e s   Y	� 	�	�	� l     ����  �  �  	� 	�	�	� i   0 3	�	�	� I      �	��� 60 countnameandpagesofpieces CountNameAndPagesOfPieces	� 	��	� o      �� 0 thelist theList�  �  	� l   �	�	�	�	� k    �	�	� 	�	�	� r     	�	�	� J     ��  	� o      �
�
 0 thepieceslist thePiecesList	� 	�	�	� r    	�	�	� m    �	�	  	� o      �� 0 thepageindex thePageIndex	� 	�	�	� r   	 	�	�	� m   	 
��  	� o      �� 0 i  	� 	�	�	� X   �	��	�	� k   �	�	� 	�	�	� l   ����  �  �  	� 	��	� Z   �	�	�� ��	� I    $��	����� 0 findtext FindText	� 	�	�	� o    ���� 0 	pieceword 	pieceWord	� 	���	� o     ���� 0 theline theLine��  ��  	� k   '�	�	� 	�	�	� r   ' ,	�	�	� [   ' *	�	�	� o   ' (���� 0 i  	� m   ( )���� 	� o      ���� 0 i  	� 	�	�	� r   - 2	�	�	� [   - 0	�	�	� o   - .���� 0 thepageindex thePageIndex	� m   . /���� 	� o      ���� 0 thepageindex thePageIndex	� 	�	�	� Z  3 B	�	�����	� o   3 4���� 	0 debug  	� I  7 >��	���
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
psin	� o   m n���� 0 theline theLine��  	� o      ���� 0 firstbracket firstBracket	� 	�	�	� r   u �	�	�	� I  u �����	�
�� .sysooffslong    ��� null��  	� ��	�	�
�� 
psof	� m   w z	�	� �	�	�  ]	� ��	���
�� 
psin	� o   { |���� 0 theline theLine��  	� o      ���� 0 lastbracket lastBracket	� 
 

  l  � ���������  ��  ��  
 


 l  � ���

��  
 - ' put the number after piece in theCount   
 �

 N   p u t   t h e   n u m b e r   a f t e r   p i e c e   i n   t h e C o u n t
 


 r   � �
	


	 I   � ���
���� 0 trim  
 


 n   � �


 7  � ���


�� 
ctxt
 l  � �
����
 [   � �


 o   � ����� &0 piecewordposition pieceWordPosition
 m   � ����� ��  ��  
 l  � �
����
 \   � �


 o   � ����� 0 
semicolumn 
semiColumn
 m   � ����� ��  ��  
 o   � ����� 0 theline theLine
 
��
 m   � �

 �

   ��  ��  

 o      ���� 0 	thenumber  
 


 l  � ���������  ��  ��  
 


 l  � ���

 ��  
 I Cif debug then display dialog thenumber & " trouv� en position " & i   
  �
!
! � i f   d e b u g   t h e n   d i s p l a y   d i a l o g   t h e n u m b e r   &   "   t r o u v �   e n   p o s i t i o n   "   &   i
 
"
#
" Z  � �
$
%����
$ o   � ����� 0 verbose  
% I   � ���
&���� 0 dlog  
& 
'��
' b   � �
(
)
( b   � �
*
+
* o   � ����� 0 	thenumber  
+ m   � �
,
, �
-
- &   f o u n d   i n   p o s i t i o n  
) o   � ����� 0 i  ��  ��  ��  ��  
# 
.
/
. Z   � �
0
1��
2
0 l  � �
3����
3 =   � �
4
5
4 ]   � �
6
7
6 l  � �
8����
8 c   � �
9
:
9 o   � ����� 0 	thenumber  
: m   � ���
�� 
long��  ��  
7 m   � ����� 
5 ]   � �
;
<
; l  � �
=����
= c   � �
>
?
> o   � ����� 0 i  
? m   � ���
�� 
long��  ��  
< m   � ����� ��  ��  
1 r   � �
@
A
@ o   � ����� 0 i  
A o      ���� $0 thecountofpieces theCountOfPieces��  
2 k   � �
B
B 
C
D
C I  � ���
E��
�� .sysodlogaskr        TEXT
E b   � �
F
G
F b   � �
H
I
H b   � �
J
K
J b   � �
L
M
L m   � �
N
N �
O
O ` N u m e r o t a t i o n   d e s   p i � c e s   e r r o n � e s   a p r � s   l a   p i � c e  
M l  � �
P����
P \   � �
Q
R
Q o   � ����� 0 i  
R m   � ����� ��  ��  
K m   � �
S
S �
T
T $   ( p i � c e   n u m � r o t � e  
I o   � ����� 0 	thenumber  
G m   � �
U
U �
V
V  ) .��  
D 
W
X
W I  � ���
Y��
�� .ascrcmnt****      � ****
Y b   � �
Z
[
Z m   � �
\
\ �
]
] l s t o p p i n g   :   e r r o r   i n   a t t a c h m e n t s   n u m b e r i n g   a f t e r   p i e c e  
[ l  � �
^����
^ \   � �
_
`
_ o   � ����� 0 i  
` m   � ����� ��  ��  ��  
X 
a��
a R   � �����
b
�� .ascrerr ****      � ****��  
b ��
c��
�� 
errn
c m   � ���������  ��  
/ 
d
e
d l  � ���������  ��  ��  
e 
f
g
f l  � ���
h
i��  
h , & put the number in bracket in thePages   
i �
j
j L   p u t   t h e   n u m b e r   i n   b r a c k e t   i n   t h e P a g e s
g 
k
l
k r   �
m
n
m I   ���
o���� 0 trim  
o 
p
q
p n   �
r
s
r 7  ���
t
u
�� 
ctxt
t l 	
v���
v [  	
w
x
w o  �~�~ 0 firstbracket firstBracket
x m  �}�} ��  �  
u l 

y�|�{
y \  

z
{
z o  �z�z 0 lastbracket lastBracket
{ m  �y�y �|  �{  
s o   � ��x�x 0 theline theLine
q 
|�w
| m  
}
} �
~
~   �w  ��  
n o      �v�v 0 thepages thePages
l 

�
 l �u�t�s�u  �t  �s  
� 
�
�
� l �r�q�p�r  �q  �p  
� 
�
�
� l �o
�
��o  
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
� I  2�n
��m�n 0 trim  
� 
�
�
� n  +
�
�
� 7 +�l
�
�
�l 
ctxt
� l !%
��k�j
� [  !%
�
�
� o  "#�i�i 0 
semicolumn 
semiColumn
� m  #$�h�h �k  �j  
� l &*
��g�f
� \  &*
�
�
� o  '(�e�e 0 firstbracket firstBracket
� m  ()�d�d �g  �f  
� o  �c�c 0 theline theLine
� 
��b
� m  +.
�
� �
�
�   �b  �m  
� o      �a�a 0 thename theName
� 
�
�
� l 55�`�_�^�`  �_  �^  
� 
�
�
� l 55�]�\�[�]  �\  �[  
� 
�
�
� l 55�Z�Y�X�Z  �Y  �X  
� 
�
�
� Z 5N
�
��W�V
� o  56�U�U 	0 debug  
� I 9J�T
��S
�T .sysodlogaskr        TEXT
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
� o  9:�R�R 0 	thenumber  
� m  :=
�
� �
�
�    |  
� o  >?�Q�Q 0 thename theName
� m  @C
�
� �
�
�  � | �
� o  DE�P�P 0 thepages thePages�S  �W  �V  
� 
�
�
� l OO�O
�
��O  
� . ( add theCounts, the Pages in the listing   
� �
�
� P   a d d   t h e C o u n t s ,   t h e   P a g e s   i n   t h e   l i s t i n g
� 
�
�
� l OO�N�M�L�N  �M  �L  
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
� o  OP�K�K 0 thepieceslist thePiecesList
� J  PX
�
� 
��J
� J  PV
�
� 
�
�
� o  PQ�I�I 0 	thenumber  
� 
�
�
� o  QR�H�H 0 thepages thePages
� 
�
�
� o  RS�G�G 0 thepageindex thePageIndex
� 
��F
� o  ST�E�E 0 thename theName�F  �J  
� o      �D�D 0 thepieceslist thePiecesList
� - ' beware : we add a list INSIDE the list   
� �
�
� N   b e w a r e   :   w e   a d d   a   l i s t   I N S I D E   t h e   l i s t
� 
�
�
� I \e�C
��B
�C .ascrcmnt****      � ****
� b  \a
�
�
� m  \_
�
� �
�
� L t h i s   i s   t h e   l i s t   o f   f i l e s   w e   w i l l   n e e d
� o  _`�A�A 0 thepieceslist thePiecesList�B  
� 
�
�
� r  fo
�
�
� l fm
��@�?
� \  fm
�
�
� [  fk
�
�
� o  fg�>�> 0 thepageindex thePageIndex
� ]  gj
�
�
� o  gh�=�= 0 thepages thePages
� m  hi�<�< 
� m  kl�;�; �@  �?  
� o      �:�: 0 thepageindex thePageIndex
� 
�
�
� Z p�
�
��9�8
� o  pq�7�7 	0 debug  
� I t}�6
��5
�6 .sysodlogaskr        TEXT
� b  ty
�
�
� m  tw
�
� �
�
�  F i n i s h e s   a t  
� o  wx�4�4 0 thepageindex thePageIndex�5  �9  �8  
� 
��3
� I ���2
��1
�2 .ascrcmnt****      � ****
� b  ��
�
�
� m  ��
�
� �
�
�  F i n i s h e s   a t  
� o  ���0�0 0 thepageindex thePageIndex�1  �3  �   ��  �  � 0 theline theLine	� o    �/�/ 0 thelist theList	� 
��.
� L  ��
�
� o  ���-�- 0 thepieceslist thePiecesList�.  	� < 6 returns array of { { X, Y } { X', Y'}, {X", Y"}, ...}   	� �
�
� l   r e t u r n s   a r r a y   o f   {   {   X ,   Y   }   {   X ' ,   Y ' } ,   { X " ,   Y " } ,   . . . }	� 
�
�
� l     �,�+�*�,  �+  �*  
� 
�
�
� l     �)�(�'�)  �(  �'  
� 
�
�
� l     �&�%�$�&  �%  �$  
� 
�
�
� l     �#
�
��#  
�   DetailsOfBordereau   
� �
�
� &   D e t a i l s O f B o r d e r e a u
� 
�
�
� l     �"
� �"  
� / ) ########################################     � R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
�  l     �!�!   | v An AppleScript function that finds lines with "ITEM : NAME " returns array of { { ITEM1, NAME1}, {ITEM2, NAME2}, ...}    � �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   f i n d s   l i n e s   w i t h   " I T E M   :   N A M E   "   r e t u r n s   a r r a y   o f   {   {   I T E M 1 ,   N A M E 1 } ,   { I T E M 2 ,   N A M E 2 } ,   . . . }  l     � ���   �  �   	
	 i   4 7 I      ��� (0 detailsofbordereau DetailsOfBordereau � o      �� 0 thelist theList�  �   l    � k     �  r      J     ��   o      ��  0 thedetailslist theDetailsList  X    �� Z    �� I    ��� 0 findtext FindText   o    �� 0 	pieceword 	pieceWord  !�! o    �� 0 theline theLine�  �   l   �"#�  "  ignore   # �$$  i g n o r e�   k   # �%% &'& r   # .()( I  # ,��*
� .sysooffslong    ��� null�  * �+,
� 
psof+ m   % &-- �..  :, �/�
� 
psin/ o   ' (�
�
 0 theline theLine�  ) o      �	�	 0 
semicolumn 
semiColumn' 010 r   / D232 I   / B�4�� 0 trim  4 565 n   0 =787 7  1 =�9:
� 
ctxt9 m   5 7�� : l  8 <;��; \   8 <<=< o   9 :�� 0 
semicolumn 
semiColumn= m   : ;�� �  �  8 o   0 1� �  0 theline theLine6 >��> m   = >?? �@@   ��  �  3 o      ���� 0 thekey theKey1 ABA r   E \CDC I   E Z��E���� 0 trim  E FGF n   F UHIH 7  G U��JK
�� 
ctxtJ l  K OL����L [   K OMNM o   L M���� 0 
semicolumn 
semiColumnN m   M N���� ��  ��  K l  P TO����O n   P TPQP 1   R T��
�� 
lengQ o   P R���� 0 theline theLine��  ��  I o   F G���� 0 theline theLineG R��R m   U VSS �TT   ��  ��  D o      ���� 0 thevalue theValueB UVU l  ] ]��������  ��  ��  V WXW Z  ] pYZ����Y o   ] ^���� 	0 debug  Z I  a l��[��
�� .sysodlogaskr        TEXT[ b   a h\]\ b   a f^_^ o   a b���� 0 thekey theKey_ m   b e`` �aa    |  ] o   f g���� 0 thevalue theValue��  ��  ��  X bcb Z  q �de����d o   q t���� 0 verbose  e b   w �fgf b   w �hih b   w |jkj m   w zll �mm * D e t a i l s O f B o r d e r e a u   :  k o   z {���� 0 thekey theKeyi m   | nn �oo    |  g o   � ����� 0 thevalue theValue��  ��  c p��p r   � �qrq b   � �sts o   � �����  0 thedetailslist theDetailsListt K   � �uu ��v���� 0 thekey theKeyv o   � ����� 0 thevalue theValue��  r o      ����  0 thedetailslist theDetailsList��  � 0 theline theLine o    	���� 0 thelist theList w��w L   � �xx o   � �����  0 thedetailslist theDetailsList��   < 6 returns array of { { X, Y } { X', Y'}, {X", Y"}, ...}    �yy l   r e t u r n s   a r r a y   o f   {   {   X ,   Y   }   {   X ' ,   Y ' } ,   { X " ,   Y " } ,   . . . }
 z{z l     ��������  ��  ��  { |}| l     ��������  ��  ��  } ~~ l     ������  �   SumTotalOfPages   � ���     S u m T o t a l O f P a g e s ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   8 ;��� I      ������� "0 sumtotalofpages SumTotalOfPages� ���� o      ���� @0 anarrayofarrayofnumberandpages anArrayofArrayOfNumberAndPages��  ��  � k     [�� ��� r     ��� m     ����  � o      ���� 0 thetotal theTotal� ��� X    V����� k    Q�� ��� r    ��� n    ��� 4    ���
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
   t r i m� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � F @ An AppleScript function that trim theseCharacters from someText   � ��� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   t r i m   t h e s e C h a r a c t e r s   f r o m   s o m e T e x t� ��� l     ��������  ��  ��  � ��� i   < ?��� I      ������� 0 trim  � ��� o      ���� 0 sometext someText� ���� o      ���� "0 thesecharacters theseCharacters��  ��  � k     ]�� ��� l     �� ��    @ : Lazy default (AppleScript doesn't support default values)    � t   L a z y   d e f a u l t   ( A p p l e S c r i p t   d o e s n ' t   s u p p o r t   d e f a u l t   v a l u e s )�  Z    ���� =     o     ���� "0 thesecharacters theseCharacters m    ��
�� boovtrue r    	
	 J      m     �     1    ��
�� 
tab   I   ����
�� .sysontocTEXT       shor m    	���� 
��    o    ��
�� 
ret   m     �  
 �� I   ���
�� .sysontocTEXT       shor m    �~�~  �  ��  
 o      �}�} "0 thesecharacters theseCharacters��  ��    l   �|�{�z�|  �{  �z     W    ;!"! r   ) 6#$# n   ) 4%&% 7  * 4�y'(
�y 
ctxt' m   . 0�x�x ( m   1 3�w�w��& o   ) *�v�v 0 sometext someText$ o      �u�u 0 sometext someText" H   ! ()) E  ! '*+* o   ! "�t�t "0 thesecharacters theseCharacters+ n   " &,-, 4  # &�s.
�s 
cha . m   $ %�r�r - o   " #�q�q 0 sometext someText  /0/ l  < <�p�o�n�p  �o  �n  0 121 W   < Z343 r   H U565 n   H S787 7  I S�m9:
�m 
ctxt9 m   M O�l�l : m   P R�k�k��8 o   H I�j�j 0 sometext someText6 o      �i�i 0 sometext someText4 H   @ G;; E  @ F<=< o   @ A�h�h "0 thesecharacters theseCharacters= n   A E>?> 4  B E�g@
�g 
cha @ m   C D�f�f��? o   A B�e�e 0 sometext someText2 ABA l  [ [�d�c�b�d  �c  �b  B C�aC L   [ ]DD o   [ \�`�` 0 sometext someText�a  � EFE l     �_�^�]�_  �^  �]  F GHG l     �\�[�Z�\  �[  �Z  H IJI l     �Y�X�W�Y  �X  �W  J KLK l     �VMN�V  M  
 splitText   N �OO    s p l i t T e x tL PQP l     �URS�U  R / ) ########################################   S �TT R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #Q UVU l     �TWX�T  W I C An AppleScript function that explodes into a list the string items   X �YY �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   e x p l o d e s   i n t o   a   l i s t   t h e   s t r i n g   i t e m sV Z[Z l     �S�R�Q�S  �R  �Q  [ \]\ i   @ C^_^ I      �P`�O�P 0 	splittext 	splitText` aba o      �N�N 0 thetext theTextb c�Mc o      �L�L 0 thedelimiter theDelimiter�M  �O  _ l    defd k     gg hih r     jkj o     �K�K 0 thedelimiter theDelimiterk n     lml 1    �J
�J 
txdlm 1    �I
�I 
ascri non r    pqp n    	rsr 2    	�H
�H 
citms o    �G�G 0 thetext theTextq o      �F�F 0 thetextitems theTextItemso tut r    vwv m    xx �yy  w n     z{z 1    �E
�E 
txdl{ 1    �D
�D 
ascru |�C| L    }} o    �B�B 0 thetextitems theTextItems�C  e   returns a list   f �~~    r e t u r n s   a   l i s t] � l     �A�@�?�A  �@  �?  � ��� l     �>�=�<�>  �=  �<  � ��� l     �;���;  �   convertListToString   � ��� (   c o n v e r t L i s t T o S t r i n g� ��� l     �:���:  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     �9���9  � I C An AppleScript function that explodes into a list the string items   � ��� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   e x p l o d e s   i n t o   a   l i s t   t h e   s t r i n g   i t e m s� ��� l     �8�7�6�8  �7  �6  � ��� i   D G��� I      �5��4�5 0 convertlisttostring  � ��� o      �3�3 0 thelist theList� ��2� o      �1�1 0 thedelimiter theDelimiter�2  �4  � k     �� ��� r     ��� o     �0�0 0 thedelimiter theDelimiter� n     ��� 1    �/
�/ 
txdl� 1    �.
�. 
ascr� ��� r    ��� c    	��� o    �-�- 0 thelist theList� m    �,
�, 
TEXT� o      �+�+ 0 	thestring 	theString� ��� r    ��� m    �� ���  � n     ��� 1    �*
�* 
txdl� 1    �)
�) 
ascr� ��(� L    �� o    �'�' 0 	thestring 	theString�(  � ��� l     �&�%�$�&  �%  �$  � ��� l     �#�"�!�#  �"  �!  � ��� l     � ���   �   deleteFolderAtPath   � ��� &   d e l e t e F o l d e r A t P a t h� ��� l     ����  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ����  � C = An AppleScript function that delete a folder in a given path   � ��� z   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   d e l e t e   a   f o l d e r   i n   a   g i v e n   p a t h� ��� l     ����  �  �  � ��� i   H K��� I      ���� (0 deletefolderatpath deleteFolderAtPath� ��� o      �� 0 thepath  � ��� o      �� 0 
foldername  �  �  � l    -���� Q     -���� k    �� ��� O    ��� k    �� ��� l   ����  � l fset newfo to POSIX path of (make new folder at POSIX file (thepath) with properties {name:foldername})   � ��� � s e t   n e w f o   t o   P O S I X   p a t h   o f   ( m a k e   n e w   f o l d e r   a t   P O S I X   f i l e   ( t h e p a t h )   w i t h   p r o p e r t i e s   { n a m e : f o l d e r n a m e } )� ��� r    ��� c    ��� 4    ��
� 
psxf� l  	 ���� b   	 ��� o   	 
�� 0 thepath  � o   
 �� 0 
foldername  �  �  � m    �
� 
ctxt� o      �� 0 
deletefile 
deleteFile� ��� I   ���
� .coredelonull���     obj � o    �
�
 0 
deletefile 
deleteFile�  �  � m    ���                                                                                  MACS  alis    :  	MacOSSlim                      BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p   	 M a c O S S l i m  &System/Library/CoreServices/Finder.app  / ��  � ��	� L    �� o    �� 	0 newfo  �	  � R      ���
� .ascrerr ****      � ****�  �  � k   # -�� ��� I  # (���
� .ascrcmnt****      � ****� m   # $�� ���  f a i l�  � ��� L   ) -�� b   ) ,��� o   ) *�� 0 thepath  � o   * +� �  0 
foldername  �  �   return bool   � ���    r e t u r n   b o o l� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � � � l     ��������  ��  ��     l     ����     createFolderAtPath    � &   c r e a t e F o l d e r A t P a t h  l     ��	��   / ) ########################################   	 �

 R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #  l     ����   D > An AppleScript function that creates a folder in a given path    � |   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   c r e a t e s   a   f o l d e r   i n   a   g i v e n   p a t h  l     ��������  ��  ��    i   L O I      ������ (0 createfolderatpath createFolderAtPath  o      ���� 0 thepath   �� o      ���� 0 
foldername  ��  ��   l    , Q     , k        !"! O    #$# r    %&% n    '(' 1    ��
�� 
psxp( l   )����) I   ����*
�� .corecrel****      � null��  * ��+,
�� 
kocl+ m   	 
��
�� 
cfol, ��-.
�� 
insh- 4    ��/
�� 
psxf/ l   0����0 o    ���� 0 thepath  ��  ��  . ��1��
�� 
prdt1 K    22 ��3��
�� 
pnam3 o    ���� 0 
foldername  ��  ��  ��  ��  & o      ���� 	0 newfo  $ m    44�                                                                                  MACS  alis    :  	MacOSSlim                      BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p   	 M a c O S S l i m  &System/Library/CoreServices/Finder.app  / ��  " 5��5 L     66 o    ���� 	0 newfo  ��   R      ������
�� .ascrerr ****      � ****��  ��   L   ( ,77 b   ( +898 o   ( )���� 0 thepath  9 o   ) *���� 0 
foldername     return bool    �::    r e t u r n   b o o l ;<; l     ��������  ��  ��  < =>= l     ��������  ��  ��  > ?@? l     ��AB��  A   prefixFileListWithPath   B �CC .   p r e f i x F i l e L i s t W i t h P a t h@ DED l     ��FG��  F / ) ########################################   G �HH R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #E IJI l     ��KL��  K f ` An AppleScript function that takes a list of files and return their locations with a given path   L �MM �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   t a k e s   a   l i s t   o f   f i l e s   a n d   r e t u r n   t h e i r   l o c a t i o n s   w i t h   a   g i v e n   p a t hJ NON l     ��������  ��  ��  O PQP i   P SRSR I      ��T���� 00 prefixfilelistwithpath prefixFileListWithPathT UVU o      ���� 0 thepath  V W��W o      ���� 0 filelist  ��  ��  S l    (XYZX k     ([[ \]\ r     ^_^ J     ����  _ o      ���� 0 filelistwithpath  ] `a` X    %b��cb k     dd efe r    ghg b    iji o    ���� 0 filelistwithpath  j J    kk l��l l   m����m b    non o    ���� 0 thepath  o o    ���� 0 thefile  ��  ��  ��  h o      ���� 0 filelistwithpath  f p��p l   ��������  ��  ��  ��  �� 0 thefile  c o    	���� 0 filelist  a q��q L   & (rr o   & '���� 0 filelistwithpath  ��  Y !  return file list with path   Z �ss 6   r e t u r n   f i l e   l i s t   w i t h   p a t hQ tut l     ��������  ��  ��  u vwv l     ��xy��  x #  prefixFileListWithPathQuoted   y �zz :   p r e f i x F i l e L i s t W i t h P a t h Q u o t e dw {|{ l     ��}~��  } / ) ########################################   ~ � R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #| ��� l     ������  � m g An AppleScript function that takes a list of files and return their locations with a given QUOTED path   � ��� �   A n   A p p l e S c r i p t   f u n c t i o n   t h a t   t a k e s   a   l i s t   o f   f i l e s   a n d   r e t u r n   t h e i r   l o c a t i o n s   w i t h   a   g i v e n   Q U O T E D   p a t h� ��� l     ��������  ��  ��  � ��� i   T W��� I      ������� <0 prefixfilelistwithpathquoted prefixFileListWithPathQuoted� ��� o      ���� 0 thepath  � ���� o      ���� 0 filelist  ��  ��  � l    *���� k     *�� ��� r     ��� J     ����  � o      ���� 0 filelistwithpath  � ��� X    '����� k    "�� ��� r     ��� b    ��� o    ���� 0 filelistwithpath  � J    �� ���� l   ������ n    ��� 1    ��
�� 
strq� l   ������ b    ��� o    ���� 0 thepath  � o    ���� 0 thefile  ��  ��  ��  ��  ��  � o      ���� 0 filelistwithpath  � ���� l  ! !��������  ��  ��  ��  �� 0 thefile  � o    	���� 0 filelist  � ���� L   ( *�� o   ( )���� 0 filelistwithpath  ��  �    return file list with pth   � ��� 4   r e t u r n   f i l e   l i s t   w i t h   p t h� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   watermarkFilePY   � ���     w a t e r m a r k F i l e P Y� ��� l     ������  � / ) ########################################   � ��� R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     ������  � D > pass a file to watermark, a file to save in, and a stamp file   � ��� |   p a s s   a   f i l e   t o   w a t e r m a r k ,   a   f i l e   t o   s a v e   i n ,   a n d   a   s t a m p   f i l e� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   X [��� I      ���~� "0 watermarkfilepy watermarkFilePY� ��� o      �}�}  0 thefiletostamp theFileToStamp� ��� o      �|�| 0 
thenewfile 
theNewFile� ��{� o      �z�z 0 thestampfile theStampFile�{  �~  � l    Z���� k     Z�� ��� l     �y�x�w�y  �x  �w  � ��� l     �v���v  �  set theX to "450.0"   � ��� & s e t   t h e X   t o   " 4 5 0 . 0 "� ��� l     �u���u  �  set theY to "700"   � ��� " s e t   t h e Y   t o   " 7 0 0 "� ��� l     �t���t  � B < we now use global position variables, declared at beginning   � ��� x   w e   n o w   u s e   g l o b a l   p o s i t i o n   v a r i a b l e s ,   d e c l a r e d   a t   b e g i n n i n g� ��� r     ��� m     �� ���  - 2 0� o      �s�s 0 theangle  � ��� r    ��� m    �� ���  0 . 2� o      �r�r 0 thesize  � ��� r    ��� m    	�� ���  1� o      �q�q 0 
theopacity 
theOpacity� ��� l   �p�o�n�p  �o  �n  � ��� r    /��� b    -��� b    +��� b    )   b    ' b    % b    # b    !	 b    

 b     b     b     b     b     b     b     b     m     �n ' # ! / u s r / b i n / p y t h o n 
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
 i n p u t F i l e =   " o    �m�m  0 thefiletostamp theFileToStamp m     � $ " 
 i m a g e s f i l e s   =   ( " o    �l�l 0 thestampfile theStampFile m       �!! " " , ) 
 o u t p u t F i l e =   " o    �k�k 0 
thenewfile 
theNewFile m    "" �## n " 
 w a t e r m a r k ( i n p u t F i l e ,   i m a g e s f i l e s ,   o u t p u t F i l e ,   F a l s e ,   o    �j�j 0 thex theX m    $$ �%%  ,   o    �i�i 0 they theY	 m     && �''  ,   o   ! "�h�h 0 theangle   m   # $(( �))  , o   % &�g�g 0 thesize   m   ' (** �++    ,  � o   ) *�f�f 0 
theopacity 
theOpacity� m   + ,,, �--  ,   F a l s e ) '� o      �e�e 0 	thescript  � ./. l  0 0�d�c�b�d  �c  �b  / 010 r   0 9232 I  0 7�a4�`
�a .sysoexecTEXT���     TEXT4 b   0 3565 m   0 177 �88  p y t h o n   - c  6 o   1 2�_�_ 0 	thescript  �`  3 o      �^�^ 0 
stampedpdf  1 9:9 Z  : M;<�]�\; o   : =�[�[ 	0 debug  < I  @ I�Z=�Y
�Z .sysodlogaskr        TEXT= b   @ E>?> m   @ C@@ �AA " w a t e r m a r k F i l e P Y :  ? o   C D�X�X 0 
stampedpdf  �Y  �]  �\  : BCB I  N W�WD�V
�W .ascrcmnt****      � ****D b   N SEFE m   N QGG �HH " w a t e r m a r k F i l e P Y :  F o   Q R�U�U 0 
stampedpdf  �V  C I�TI L   X ZJJ o   X Y�S�S 0 
thenewfile 
theNewFile�T  �   return the file   � �KK     r e t u r n   t h e   f i l e� LML l     �R�Q�P�R  �Q  �P  M NON l     �OPQ�O  P   remove_extension   Q �RR "   r e m o v e _ e x t e n s i o nO STS l     �NUV�N  U / ) ########################################   V �WW R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #T XYX l     �MZ[�M  Z 1 + pass a file name returns without extension   [ �\\ V   p a s s   a   f i l e   n a m e   r e t u r n s   w i t h o u t   e x t e n s i o nY ]^] l     �L�K�J�L  �K  �J  ^ _`_ i   \ _aba I      �Ic�H�I 0 remove_extension  c d�Gd o      �F�F 0 	this_name  �G  �H  b k     <ee fgf Z     9hi�E�Dh E     jkj o     �C�C 0 	this_name  k m    ll �mm  .i k    5nn opo r    qrq c    sts l 	  u�B�Au l   v�@�?v l   w�>�=w n    xyx 1   	 �<
�< 
rvsey n    	z{z 2    	�;
�; 
cha { o    �:�: 0 	this_name  �>  �=  �@  �?  �B  �A  t m    �9
�9 
TEXTr o      �8�8 0 	this_name  p |}| r    ~~ l   ��7�6� I   �5�4�
�5 .sysooffslong    ��� null�4  � �3��
�3 
psof� m    �� ���  .� �2��1
�2 
psin� o    �0�0 0 	this_name  �1  �7  �6   o      �/�/ 0 x  } ��� r    +��� l   )��.�-� n    )��� 7   )�,��
�, 
ctxt� l  ! %��+�*� [   ! %��� o   " #�)�) 0 x  � m   # $�(�( �+  �*  � m   & (�'�'��� o    �&�& 0 	this_name  �.  �-  � o      �%�% 0 	this_name  � ��$� r   , 5��� c   , 3��� l  , 1��#�"� l  , 1��!� � n   , 1��� 1   / 1�
� 
rvse� n   , /��� 2   - /�
� 
cha � o   , -�� 0 	this_name  �!  �   �#  �"  � m   1 2�
� 
TEXT� o      �� 0 	this_name  �$  �E  �D  g ��� L   : <�� o   : ;�� 0 	this_name  �  ` ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � x r Logs a text representation of the specified object or objects, which may be of any type, typically for debugging.   � ��� �   L o g s   a   t e x t   r e p r e s e n t a t i o n   o f   t h e   s p e c i f i e d   o b j e c t   o r   o b j e c t s ,   w h i c h   m a y   b e   o f   a n y   t y p e ,   t y p i c a l l y   f o r   d e b u g g i n g .� ��� l     ����  � J D Works hard to find a meaningful text representation of each object.   � ��� �   W o r k s   h a r d   t o   f i n d   a   m e a n i n g f u l   t e x t   r e p r e s e n t a t i o n   o f   e a c h   o b j e c t .� ��� l     ����  �  	 SYNOPSIS   � ���    S Y N O P S I S� ��� l     ����  � $    dlog(anyObjOrListOfObjects)   � ��� <       d l o g ( a n y O b j O r L i s t O f O b j e c t s )� ��� l     ����  �   USE EXAMPLES   � ���    U S E   E X A M P L E S� ��� l     �
���
  � ( "   dlog("before")  # single object   � ��� D       d l o g ( " b e f o r e " )     #   s i n g l e   o b j e c t� ��� l     �	���	  � E ?     dlog({ "front window: ", front window }) # list of objects   � ��� ~           d l o g ( {   " f r o n t   w i n d o w :   " ,   f r o n t   w i n d o w   } )   #   l i s t   o f   o b j e c t s� ��� l     ����  �   SETUP   � ���    S E T U P� ��� l     ����  � � �   At the top of your script, define global variable DLOG_TARGETS and set it to a *list* of targets (even if you only have 1 target).   � ���
       A t   t h e   t o p   o f   y o u r   s c r i p t ,   d e f i n e   g l o b a l   v a r i a b l e   D L O G _ T A R G E T S   a n d   s e t   i t   t o   a   * l i s t *   o f   t a r g e t s   ( e v e n   i f   y o u   o n l y   h a v e   1   t a r g e t ) .� ��� l     ����  � u o     set DLOG_TARGETS to {} # must be a list with any combination of: "log", "syslog", "alert", <posixFilePath>   � ��� �           s e t   D L O G _ T A R G E T S   t o   { }   #   m u s t   b e   a   l i s t   w i t h   a n y   c o m b i n a t i o n   o f :   " l o g " ,   " s y s l o g " ,   " a l e r t " ,   < p o s i x F i l e P a t h >� ��� l     ����  � A ;   An *empty* list means that logging should be *disabled*.   � ��� v       A n   * e m p t y *   l i s t   m e a n s   t h a t   l o g g i n g   s h o u l d   b e   * d i s a b l e d * .� ��� l     ����  � j d   If you specify a POSIX file path, the file will be *appended* to; variable references in the path   � ��� �       I f   y o u   s p e c i f y   a   P O S I X   f i l e   p a t h ,   t h e   f i l e   w i l l   b e   * a p p e n d e d *   t o ;   v a r i a b l e   r e f e r e n c e s   i n   t h e   p a t h� ��� l     ����  � ^ X   are allowed, and as a courtesy the path may start with "~" to refer to your home dir.   � ��� �       a r e   a l l o w e d ,   a n d   a s   a   c o u r t e s y   t h e   p a t h   m a y   s t a r t   w i t h   " ~ "   t o   r e f e r   t o   y o u r   h o m e   d i r .� ��� l     ����  � ~ x   Caveat: while you can *remove* the variable definition to disable logging, you'll take an additional performance hit.   � ��� �       C a v e a t :   w h i l e   y o u   c a n   * r e m o v e *   t h e   v a r i a b l e   d e f i n i t i o n   t o   d i s a b l e   l o g g i n g ,   y o u ' l l   t a k e   a n   a d d i t i o n a l   p e r f o r m a n c e   h i t .� ��� l     ����  �   SETUP EXAMPLES   � ���    S E T U P   E X A M P L E S� ��� l     � ���   � ] W    For instance, to use both AppleScript's log command *and* display a GUI alert, use:   � ��� �         F o r   i n s t a n c e ,   t o   u s e   b o t h   A p p l e S c r i p t ' s   l o g   c o m m a n d   * a n d *   d i s p l a y   a   G U I   a l e r t ,   u s e :� ��� l     ������  � 3 -       set DLOG_TARGETS to { "log", "alert" }   � ��� Z               s e t   D L O G _ T A R G E T S   t o   {   " l o g " ,   " a l e r t "   }� ��� l     ������  �   Note:    � ���    N o t e :  �    l     ����   Y S   - Since the subroutine is still called even when DLOG_TARGETS is an empty list,     � �       -   S i n c e   t h e   s u b r o u t i n e   i s   s t i l l   c a l l e d   e v e n   w h e n   D L O G _ T A R G E T S   i s   a n   e m p t y   l i s t ,    l     ����   O I     you pay a performancy penalty for leaving dlog() calls in your code.    �		 �           y o u   p a y   a   p e r f o r m a n c y   p e n a l t y   f o r   l e a v i n g   d l o g ( )   c a l l s   i n   y o u r   c o d e . 

 l     ����   ` Z   - Unlike with the built-in log() method, you MUST use parentheses around the parameter.    � �       -   U n l i k e   w i t h   t h e   b u i l t - i n   l o g ( )   m e t h o d ,   y o u   M U S T   u s e   p a r e n t h e s e s   a r o u n d   t h e   p a r a m e t e r .  l     ����   o i   - To specify more than one object, pass a *list*. Note that while you could try to synthesize a single    � �       -   T o   s p e c i f y   m o r e   t h a n   o n e   o b j e c t ,   p a s s   a   * l i s t * .   N o t e   t h a t   w h i l e   y o u   c o u l d   t r y   t o   s y n t h e s i z e   a   s i n g l e  l     ����   q k     output string by concatenation yourself, you'd lose the benefit of this subroutine's ability to derive    � �           o u t p u t   s t r i n g   b y   c o n c a t e n a t i o n   y o u r s e l f ,   y o u ' d   l o s e   t h e   b e n e f i t   o f   t h i s   s u b r o u t i n e ' s   a b i l i t y   t o   d e r i v e  l     ����   g a     readable text representations even of objects that can't simply be converted with `as text`.    � �           r e a d a b l e   t e x t   r e p r e s e n t a t i o n s   e v e n   o f   o b j e c t s   t h a t   c a n ' t   s i m p l y   b e   c o n v e r t e d   w i t h   ` a s   t e x t ` .  i   ` c !  I      ��"���� 0 dlog  " #��# o      ���� .0 anyobjorlistofobjects anyObjOrListOfObjects��  ��  ! k    �$$ %&% p      '' ������ 0 dlog_targets DLOG_TARGETS��  & ()( Q     *+,* Z   -.����- =   /0/ n    121 1    ��
�� 
leng2 o    ���� 0 dlog_targets DLOG_TARGETS0 m    ����  . L    ����  ��  ��  + R      ������
�� .ascrerr ****      � ****��  ��  , L    ����  ) 343 l   ��56��  5 ] W The following tries hard to derive a readable representation from the input object(s).   6 �77 �   T h e   f o l l o w i n g   t r i e s   h a r d   t o   d e r i v e   a   r e a d a b l e   r e p r e s e n t a t i o n   f r o m   t h e   i n p u t   o b j e c t ( s ) .4 898 Z   -:;����: >   !<=< n    >?> m    ��
�� 
pcls? o    ���� .0 anyobjorlistofobjects anyObjOrListOfObjects= m     ��
�� 
list; r   $ )@A@ J   $ 'BB C��C o   $ %���� .0 anyobjorlistofobjects anyObjOrListOfObjects��  A o      ���� .0 anyobjorlistofobjects anyObjOrListOfObjects��  ��  9 DED q   . .FF ��G�� 0 lst  G ��H�� 0 i  H ��I�� 0 txt  I ��J�� 0 errmsg errMsgJ ��K�� 0 orgtids orgTidsK ��L�� 0 oname oNameL ��M�� 
0 oid oIdM ��N�� 
0 prefix  N ��O�� 0 	logtarget 	logTargetO ��P�� 0 txtcombined txtCombinedP ��Q�� 0 
prefixtime 
prefixTimeQ ������  0 prefixdatetime prefixDateTime��  E RSR r   . 2TUT J   . 0����  U o      ���� 0 lst  S VWV X   3�X��YX k   C�ZZ [\[ r   C F]^] m   C D__ �``  ^ o      ���� 0 txt  \ aba Y   G �c��de��c k   Q �ff ghg Q   Q �ijki Z   T �lm��nl =  T Wopo o   T U���� 0 i  p m   U V���� m Z   Z �qr��sq =  Z _tut n   Z ]vwv m   [ ]��
�� 
pclsw o   Z [���� 0 anyobj anyObju m   ] ^��
�� 
listr k   b �xx yzy l  b {{|}{ r   b {~~ J   b j�� ��� n  b e��� 1   c e��
�� 
txdl� 1   b c��
�� 
ascr� ���� J   e h�� ���� m   e f�� ���  ,  ��  ��   J      �� ��� o      ���� 0 orgtids orgTids� ���� n     ��� 1   w y��
�� 
txdl� 1   v w��
�� 
ascr��  |   '   } ���    'z ��� r   | ���� b   | ���� l  | ������� c   | ���� b   | ��� m   | }�� ���  {� o   } ~���� 0 anyobj anyObj� m    ���
�� 
TEXT��  ��  � m   � ��� ���  }� o      ���� 0 txt  � ���� l  � ����� r   � ���� o   � ����� 0 orgtids orgTids� n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr�   '   � ���    '��  ��  s r   � ���� c   � ���� o   � ����� 0 anyobj anyObj� m   � ���
�� 
TEXT� o      ���� 0 txt  ��  n r   � ���� c   � ���� n   � ���� 1   � ���
�� 
pALL� o   � ����� 0 anyobj anyObj� m   � ���
�� 
TEXT� o      ���� 0 txt  j R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg��  k k   � ��� ��� l  � �������  � 3 - Trick for records and record-*like* objects:   � ��� Z   T r i c k   f o r   r e c o r d s   a n d   r e c o r d - * l i k e *   o b j e c t s :� ��� l  � �������  � � � We exploit the fact that the error message contains the desired string representation of the record, so we extract it from there. This (still) works as of AS 2.3 (OS X 10.9).   � ���^   W e   e x p l o i t   t h e   f a c t   t h a t   t h e   e r r o r   m e s s a g e   c o n t a i n s   t h e   d e s i r e d   s t r i n g   r e p r e s e n t a t i o n   o f   t h e   r e c o r d ,   s o   w e   e x t r a c t   i t   f r o m   t h e r e .   T h i s   ( s t i l l )   w o r k s   a s   o f   A S   2 . 3   ( O S   X   1 0 . 9 ) .� ���� Q   � ������ r   � ���� I  � ������
�� .sysoexecTEXT���     TEXT� b   � ���� m   � ��� ��� , e g r e p   - o   ' \ { . * \ } '   < < <  � n   � ���� 1   � ���
�� 
strq� o   � ����� 0 errmsg errMsg��  � o      ���� 0 txt  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  h ���� Z  � �������� >  � ���� o   � ����� 0 txt  � m   � ��� ���  �  S   � ���  ��  ��  �� 0 i  d m   J K���� e m   K L���� ��  b ��� r   � ���� m   � ��� ���  � o      ���� 
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
msng� k  ��� ��� r  ��� b  ��� m  
�� ���  [� n  
��� m  ��
�� 
pcls� o  
���� 0 anyobj anyObj� o      ���� 
0 prefix  � ��� r     m   �   o      ���� 0 oname oName�  r   m   �		   o      ���� 
0 oid oId 

 Q  J�� k   A  r   ' n   % 1  !%��
�� 
pnam o   !���� 0 anyobj anyObj o      ���� 0 oname oName � Z (A�~�} > (- o  ()�|�| 0 oname oName m  ),�{
�{ 
msng r  0= b  0; b  07 b  05 !  o  01�z�z 
0 prefix  ! m  14"" �##    n a m e = " o  56�y�y 0 oname oName m  7:$$ �%%  " o      �x�x 
0 prefix  �~  �}  �   R      �w�v�u
�w .ascrerr ****      � ****�v  �u  ��   &'& Q  Kt()�t( k  Nk** +,+ r  NU-.- n  NS/0/ 1  OS�s
�s 
ID  0 o  NO�r�r 0 anyobj anyObj. o      �q�q 
0 oid oId, 1�p1 Z Vk23�o�n2 > V[454 o  VW�m�m 
0 oid oId5 m  WZ�l
�l 
msng3 r  ^g676 b  ^e898 b  ^c:;: o  ^_�k�k 
0 prefix  ; m  _b<< �==    i d =9 o  cd�j�j 
0 oid oId7 o      �i�i 
0 prefix  �o  �n  �p  ) R      �h�g�f
�h .ascrerr ****      � ****�g  �f  �t  ' >?> r  u|@A@ b  uzBCB o  uv�e�e 
0 prefix  C m  vyDD �EE  ]  A o      �d�d 
0 prefix  ? F�cF r  }�GHG b  }�IJI o  }~�b�b 
0 prefix  J o  ~�a�a 0 txt  H o      �`�` 0 txt  �c  ��  ��  � K�_K r  ��LML b  ��NON o  ���^�^ 0 lst  O o  ���]�] 0 txt  M o      �\�\ 0 lst  �_  �� 0 anyobj anyObjY o   6 7�[�[ .0 anyobjorlistofobjects anyObjOrListOfObjectsW PQP l ��RSTR r  ��UVU J  ��WW XYX n ��Z[Z 1  ���Z
�Z 
txdl[ 1  ���Y
�Y 
ascrY \�X\ J  ��]] ^�W^ m  ��__ �``   �W  �X  V J      aa bcb o      �V�V 0 orgtids orgTidsc d�Ud n     efe 1  ���T
�T 
txdlf 1  ���S
�S 
ascr�U  S   '   T �gg    'Q hih r  ��jkj c  ��lml o  ���R�R 0 lst  m m  ���Q
�Q 
TEXTk o      �P�P 0 txtcombined txtCombinedi non r  ��pqp b  ��rsr b  ��tut m  ��vv �ww  [u n  ��xyx 1  ���O
�O 
tstry l ��z�N�Mz I ���L�K�J
�L .misccurdldt    ��� null�K  �J  �N  �M  s m  ��{{ �||  ]  q o      �I�I 0 
prefixtime 
prefixTimeo }~} r  ��� b  ����� b  ����� b  ����� m  ���� ���  [� n  ����� 1  ���H
�H 
shdt� l ����G�F� I ���E�D�C
�E .misccurdldt    ��� null�D  �C  �G  �F  � m  ���� ���   � n  ����� 7 ���B��
�B 
ctxt� m  ���A�A � m  ���@�@��� o  ���?�? 0 
prefixtime 
prefixTime� o      �>�>  0 prefixdatetime prefixDateTime~ ��� l ������ r  ����� o  ���=�= 0 orgtids orgTids� n     ��� 1  ���<
�< 
txdl� 1  ���;
�; 
ascr�   '   � ���    '� ��� l ���:���:  � 0 * Log the result to every target specified.   � ��� T   L o g   t h e   r e s u l t   t o   e v e r y   t a r g e t   s p e c i f i e d .� ��9� X  ����8�� Z   ������ =  	��� n   ��� 1  �7
�7 
pcnt� o   �6�6 0 	logtarget 	logTarget� m  �� ���  l o g� I �5��4
�5 .ascrcmnt****      � ****� b  ��� o  �3�3 0 
prefixtime 
prefixTime� o  �2�2 0 txtcombined txtCombined�4  � ��� = ��� n  ��� 1  �1
�1 
pcnt� o  �0�0 0 	logtarget 	logTarget� m  �� ��� 
 a l e r t� ��� I ")�/��.
�/ .sysodisAaleR        TEXT� b  "%��� o  "#�-�- 0 
prefixtime 
prefixTime� o  #$�,�, 0 txtcombined txtCombined�.  � ��� = ,5��� n  ,1��� 1  -1�+
�+ 
pcnt� o  ,-�*�* 0 	logtarget 	logTarget� m  14�� ���  s y s l o g� ��)� I 8W�(��'
�( .sysoexecTEXT���     TEXT� b  8S��� b  8M��� b  8I��� m  8;�� ���  l o g g e r   - t  � n  ;H��� 1  DH�&
�& 
strq� l ;D��%�$� b  ;D��� m  ;>�� ���  A S :  � l >C��#�"� n  >C��� 1  ?C�!
�! 
pnam�  f  >?�#  �"  �%  �$  � m  IL�� ���   � n  MR��� 1  NR� 
�  
strq� o  MN�� 0 txtcombined txtCombined�'  �)  � l Z����� k  Z��� ��� r  Za��� n  Z_��� 1  [_�
� 
pcnt� o  Z[�� 0 	logtarget 	logTarget� o      �� 	0 fpath  � ��� Z b������ C  bg��� o  bc�� 	0 fpath  � m  cf�� ���  ~ /� r  j}��� b  j{��� m  jm�� ���  $ H O M E /� n  mz��� 7 nz���
� 
ctxt� m  tv�� � m  wy����� o  mn�� 	0 fpath  � o      �� 	0 fpath  �  �  � ��� I �����
� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ��   b  �� m  �� �  p r i n t f   ' % s \ n '   n  �� 1  ���
� 
strq l ���� b  ��	
	 o  ����  0 prefixdatetime prefixDateTime
 o  ���� 0 txtcombined txtCombined�  �   m  �� � 
   > >   "� o  ���� 	0 fpath  � m  �� �  "�  �  � 6 0 assumed to be a POSIX file path to *append* to.   � � `   a s s u m e d   t o   b e   a   P O S I X   f i l e   p a t h   t o   * a p p e n d *   t o .�8 0 	logtarget 	logTarget� o  ���
�
 0 dlog_targets DLOG_TARGETS�9    l     �	���	  �  �    l     ����  �  �    l     ��   u o Converts the specified object - which may be of any type - into a string representation for logging/debugging.    � �   C o n v e r t s   t h e   s p e c i f i e d   o b j e c t   -   w h i c h   m a y   b e   o f   a n y   t y p e   -   i n t o   a   s t r i n g   r e p r e s e n t a t i o n   f o r   l o g g i n g / d e b u g g i n g .  l     ��   � � Tries hard to find a readable representation - sadly, simple conversion with `as text` mostly doesn't work with non-primitive types.    �
   T r i e s   h a r d   t o   f i n d   a   r e a d a b l e   r e p r e s e n t a t i o n   -   s a d l y ,   s i m p l e   c o n v e r s i o n   w i t h   ` a s   t e x t `   m o s t l y   d o e s n ' t   w o r k   w i t h   n o n - p r i m i t i v e   t y p e s .  l     � !�    � � An attempt is made to list the properties of non-primitive types (does not always work), and the result is prefixed with the type (class) name   ! �""   A n   a t t e m p t   i s   m a d e   t o   l i s t   t h e   p r o p e r t i e s   o f   n o n - p r i m i t i v e   t y p e s   ( d o e s   n o t   a l w a y s   w o r k ) ,   a n d   t h e   r e s u l t   i s   p r e f i x e d   w i t h   t h e   t y p e   ( c l a s s )   n a m e #$# l     � %&�   % 1 + and, if present, the object's name and ID.   & �'' V   a n d ,   i f   p r e s e n t ,   t h e   o b j e c t ' s   n a m e   a n d   I D .$ ()( l     ��*+��  *   EXAMPLE   + �,,    E X A M P L E) -.- l     ��/0��  / [ U       toString(path to desktop)  # -> "[alias] Macintosh HD:Users:mklement:Desktop:"   0 �11 �               t o S t r i n g ( p a t h   t o   d e s k t o p )     #   - >   " [ a l i a s ]   M a c i n t o s h   H D : U s e r s : m k l e m e n t : D e s k t o p : ". 232 l     ��45��  4 V P To test this subroutine and see the various representations, use the following:   5 �66 �   T o   t e s t   t h i s   s u b r o u t i n e   a n d   s e e   t h e   v a r i o u s   r e p r e s e n t a t i o n s ,   u s e   t h e   f o l l o w i n g :3 787 l     ��9:��  9 � �   repeat with elem in {42, 3.14, "two", true, (current date), {"one", "two", "three"}, {one:1, two:"deux", three:false}, missing value, me,  path to desktop, front window of application (path to frontmost application as text)}   : �;;�       r e p e a t   w i t h   e l e m   i n   { 4 2 ,   3 . 1 4 ,   " t w o " ,   t r u e ,   ( c u r r e n t   d a t e ) ,   { " o n e " ,   " t w o " ,   " t h r e e " } ,   { o n e : 1 ,   t w o : " d e u x " ,   t h r e e : f a l s e } ,   m i s s i n g   v a l u e ,   m e ,     p a t h   t o   d e s k t o p ,   f r o n t   w i n d o w   o f   a p p l i c a t i o n   ( p a t h   t o   f r o n t m o s t   a p p l i c a t i o n   a s   t e x t ) }8 <=< l     ��>?��  > . (       log my toString(contents of elem)   ? �@@ P               l o g   m y   t o S t r i n g ( c o n t e n t s   o f   e l e m )= ABA l     ��CD��  C     end repeat   D �EE        e n d   r e p e a tB F��F i   d gGHG I      ��I���� 0 tostring toStringI J��J o      ���� 0 anyobj anyObj��  ��  H k    <KK LML q      NN ��O�� 0 i  O ��P�� 0 txt  P ��Q�� 0 errmsg errMsgQ ��R�� 0 orgtids orgTidsR ��S�� 0 oname oNameS ��T�� 
0 oid oIdT ������ 
0 prefix  ��  M UVU r     WXW m     YY �ZZ  X o      ���� 0 txt  V [\[ Y    �]��^_��] k    �`` aba Q    ycdec Z    Zfg��hf =   iji o    ���� 0 i  j m    ���� g Z    Pkl��mk =   non n    pqp m    ��
�� 
pclsq o    ���� 0 anyobj anyObjo m    ��
�� 
listl k    Hrr sts r    8uvu J    'ww xyx n   "z{z 1     "��
�� 
txdl{ 1     ��
�� 
ascry |��| J   " %}} ~��~ m   " # ���  ,  ��  ��  v J      �� ��� o      ���� 0 orgtids orgTids� ���� n     ��� 1   4 6��
�� 
txdl� 1   3 4��
�� 
ascr��  t ��� r   9 B��� b   9 @��� l  9 >������ c   9 >��� b   9 <��� m   9 :�� ���  {� o   : ;���� 0 anyobj anyObj� m   < =��
�� 
TEXT��  ��  � m   > ?�� ���  }� o      ���� 0 txt  � ���� l  C H���� r   C H��� o   C D���� 0 orgtids orgTids� n     ��� 1   E G��
�� 
txdl� 1   D E��
�� 
ascr�   '   � ���    '��  ��  m r   K P��� c   K N��� o   K L���� 0 anyobj anyObj� m   L M��
�� 
TEXT� o      ���� 0 txt  ��  h r   S Z��� c   S X��� n   S V��� 1   T V��
�� 
pALL� o   S T���� 0 anyobj anyObj� m   V W��
�� 
TEXT� o      ���� 0 txt  d R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg��  e k   b y�� ��� l  b b������  � 3 - Trick for records and record-*like* objects:   � ��� Z   T r i c k   f o r   r e c o r d s   a n d   r e c o r d - * l i k e *   o b j e c t s :� ��� l  b b������  � � � We exploit the fact that the error message contains the desired string representation of the record, so we extract it from there. This (still) works as of AS 2.3 (OS X 10.9).   � ���^   W e   e x p l o i t   t h e   f a c t   t h a t   t h e   e r r o r   m e s s a g e   c o n t a i n s   t h e   d e s i r e d   s t r i n g   r e p r e s e n t a t i o n   o f   t h e   r e c o r d ,   s o   w e   e x t r a c t   i t   f r o m   t h e r e .   T h i s   ( s t i l l )   w o r k s   a s   o f   A S   2 . 3   ( O S   X   1 0 . 9 ) .� ���� Q   b y����� r   e p��� I  e n�����
�� .sysoexecTEXT���     TEXT� b   e j��� m   e f�� ��� , e g r e p   - o   ' \ { . * \ } '   < < <  � n   f i��� 1   g i��
�� 
strq� o   f g���� 0 errmsg errMsg��  � o      ���� 0 txt  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  b ���� Z  z �������� >  z ��� o   z {���� 0 txt  � m   { ~�� ���  �  S   � ���  ��  ��  �� 0 i  ^ m    ���� _ m    	���� ��  \ ��� r   � ���� m   � ��� ���  � o      ���� 
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
0 prefix  � ��� r   � ���� m   � ��� ���  � o      ���� 0 oname oName� ��� r   � ���� m   � ��� ���  � o      ���� 
0 oid oId�    Q   ��� k   � �  r   � � n   � �	
	 1   � ���
�� 
pnam
 o   � ����� 0 anyobj anyObj o      ���� 0 oname oName �� Z  � ����� >  � � o   � ����� 0 oname oName m   � ���
�� 
msng r   � � b   � � b   � � b   � � o   � ����� 
0 prefix   m   � � �    n a m e = " o   � ����� 0 oname oName m   � � �  " o      ���� 
0 prefix  ��  ��  ��   R      ������
�� .ascrerr ****      � ****��  ��  ��    Q  +�� k  "   !"! r  #$# n  
%&% 1  
��
�� 
ID  & o  ���� 0 anyobj anyObj$ o      ���� 
0 oid oId" '��' Z "()����( > *+* o  ���� 
0 oid oId+ m  ��
�� 
msng) r  ,-, b  ./. b  010 o  ���� 
0 prefix  1 m  22 �33    i d =/ o  ���� 
0 oid oId- o      ���� 
0 prefix  ��  ��  ��   R      ������
�� .ascrerr ****      � ****��  ��  ��   4��4 r  ,3565 b  ,1787 o  ,-���� 
0 prefix  8 m  -099 �::  ]  6 o      ���� 
0 prefix  ��  ��  ��  � ;��; L  8<<< b  8;=>= o  89�� 
0 prefix  > o  9:�~�~ 0 txt  ��  ��       �}?@ABCDEFGHIJKLMNOPQRSTUVWXYZ�}  ? �|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�| $0 getpagesoffilepy GetPagesOfFilePY�{ 20 writexfilespdffromonepy WriteXFilesPDFfromOnePY�z 0 findtext FindText�y 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPY�x $0 checkiminstalled CheckIMInstalled�w  0 inserttocinpdf insertToCInPDF�v H0 "generatestampimageforpiecenumberim "generateStampImageForPieceNumberIM�u T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param�t *0 checkthisisapdfpath CheckThisIsAPDFPath�s *0 checkthisisatxtpath CheckThisIsATxtPath�r .0 checkfileexistsatpath CheckFileExistsAtPath�q 40 returnfilecontentsaslist ReturnFileContentsAsList�p 60 countnameandpagesofpieces CountNameAndPagesOfPieces�o (0 detailsofbordereau DetailsOfBordereau�n "0 sumtotalofpages SumTotalOfPages�m 0 trim  �l 0 	splittext 	splitText�k 0 convertlisttostring  �j (0 deletefolderatpath deleteFolderAtPath�i (0 createfolderatpath createFolderAtPath�h 00 prefixfilelistwithpath prefixFileListWithPath�g <0 prefixfilelistwithpathquoted prefixFileListWithPathQuoted�f "0 watermarkfilepy watermarkFilePY�e 0 remove_extension  �d 0 dlog  �c 0 tostring toString
�b .aevtoappnull  �   � ****@ �a��`�_[\�^�a $0 getpagesoffilepy GetPagesOfFilePY�` �]]�] ]  �\�\ 0 
thepdffile  �_  [ �[�Z�Y�[ 0 
thepdffile  �Z 0 	thescript  �Y 0 	thenumber  \  �X�W�V
�X .sysoexecTEXT���     TEXT�W 	0 debug  
�V .sysodlogaskr        TEXT�^ '�%�%E�O�%j E�O� �%j Y hO�OPA �U>�T�S^_�R�U 20 writexfilespdffromonepy WriteXFilesPDFfromOnePY�T �Q`�Q `  �P�O�N�P 0 
thepdffile  �O "0 wheretosavepath whereToSavePath�N 0 indexeslist indexesList�S  ^ �M�L�K�J�I�H�M 0 
thepdffile  �L "0 wheretosavepath whereToSavePath�K 0 indexeslist indexesList�J $0 theindexesstring theIndexesString�I 0 	thescript  �H 0 thecreatedfiles  _ SY�G[�Fd�E�Dm�C�����B���G 0 convertlisttostring  �F 	0 debug  
�E .sysodlogaskr        TEXT�D 0 verbose  
�C .ascrcmnt****      � ****
�B .sysoexecTEXT���     TEXT�R g�*��l+ %�%E�O� �%j Y hO� �%j 	Y hO�%�%�%�%�%�%E�O�%j E�O� a �%j Y hOa �%j 	O�B �A��@�?ab�>�A 0 findtext FindText�@ �=c�= c  �<�;�< 0 tofind toFind�; 0 intext inText�?  a �:�9�: 0 tofind toFind�9 0 intext inTextb  �> ��C �8��7�6de�5�8 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPY�7 �4f�4 f  �3�2�1�3 0 thefinalfile theFinalFile�2 20 wheretofindthefilespath whereToFindTheFilesPath�1 60 thefileslistwiththeirpath theFilesListWithTheirPath�6  d �0�/�.�-�,�+�0 0 thefinalfile theFinalFile�/ 20 wheretofindthefilespath whereToFindTheFilesPath�. 60 thefileslistwiththeirpath theFilesListWithTheirPath�- H0 "thecorrectedfileslistwiththeirpath "theCorrectedFilesListWithTheirPath�, 0 	thescript  �+ 
0 thedoc  e ���* �)	�(&(*,7�'@G�&�* 0 convertlisttostring  �) 	0 debug  
�( .sysodlogaskr        TEXT
�' .sysoexecTEXT���     TEXT
�& .ascrcmnt****      � ****�5 Q�*��l+ %�%E�O� �%j Y hO�%�%�%�%�%E�O�%j E�O� ��%j Y hO�%j O�D �%d�$�#gh�"�% $0 checkiminstalled CheckIMInstalled�$  �#  g  h q�!� ��
�! .sysoexecTEXT���     TEXT�  &0 theconvertcommand theConvertCommand�  �  �"  �j E�OeW 	X  fE ����ij��  0 inserttocinpdf insertToCInPDF�  �  i  j  � hF ����kl�� H0 "generatestampimageforpiecenumberim "generateStampImageForPieceNumberIM� �m� m  ������ 0 convertcommand  � <0 theoriginalimagepathaandname theOriginalImagePathaAndName� 0 	thenumber  � 00 theresultingimagespath theResultingImagesPath� 0 thenameoffile theNameOfFile�  k 
������
�	���� 0 convertcommand  � <0 theoriginalimagepathaandname theOriginalImagePathaAndName� 0 	thenumber  � 00 theresultingimagespath theResultingImagesPath� 0 thenameoffile theNameOfFile�
 *0 pathtooriginalimage pathToOriginalImage�	  0 pathtonewimage PathToNewImage� "0 piecenumbertext pieceNumberText� 0 newimagename  �  0 theimagescript theImageScriptl 
���������
� 
strq
� .sysoexecTEXT���     TEXT�  �  � D��,E�O��,E�O�%E�O��%�%E�O��%�%�%�%�%�%�%E�O �j O�W 	X  �OPG �+� ��no��� T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param�  ��p�� p  ���������� 0 convertcommand  �� <0 theoriginalimagepathaandname theOriginalImagePathaAndName�� 0 	thenumber  �� 00 theresultingimagespath theResultingImagesPath��  n 	�������������������� 0 convertcommand  �� <0 theoriginalimagepathaandname theOriginalImagePathaAndName�� 0 	thenumber  �� 00 theresultingimagespath theResultingImagesPath�� "0 piecenumbertext pieceNumberText�� *0 pathtooriginalimage pathToOriginalImage�� 0 	imagename 	imageName��  0 pathtonewimage PathToNewImage��  0 theimagescript theImageScripto K��^`p�����������������
�� 
strq�� 	0 debug  
�� .sysodlogaskr        TEXT
�� .sysoexecTEXT���     TEXT��  ��  �� n�%E�O��,E�O�%�%E�O��%�%E�O��,E�O� �%j Y hO��%�%�%�%�%�%E�O� �%�%j Y hO �j O�W X  a OPH �������qr���� *0 checkthisisapdfpath CheckThisIsAPDFPath�� ��s�� s  ���� 0 thefile  ��  q ���� 0 thefile  r �����������
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
leng�� *���� ��,m I �������tu���� *0 checkthisisatxtpath CheckThisIsATxtPath�� ��v�� v  ���� 0 thefile  ��  t ���� 0 thefile  u ��	��������
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
leng�� *���� ��,m J ��	%����wx���� .0 checkfileexistsatpath CheckFileExistsAtPath�� ��y�� y  ���� 0 thefile  ��  w ���� 0 thefile  x ��������
�� 
psxf
�� 
alis��  ��  ��  *�/�&OeW 	X  fK ��	S����z{���� 40 returnfilecontentsaslist ReturnFileContentsAsList�� ��|�� |  ���� 0 thefile  ��  z �������� 0 thefile  �� 0 
filehandle 
fileHandle�� 0 thelines theLines{ ������������
�� .rdwropenshor       file
�� 
as  
�� 
utf8
�� .rdwrread****        ****
�� 
cpar
�� .rdwrclosnull���     ****�� �j  E�O���l �-E�O�j O�L ��	�����}~���� 60 countnameandpagesofpieces CountNameAndPagesOfPieces�� ����   ���� 0 thelist theList��  } �������������������������� 0 thelist theList�� 0 thepieceslist thePiecesList�� 0 thepageindex thePageIndex�� 0 i  �� 0 theline theLine�� &0 piecewordposition pieceWordPosition�� 0 
semicolumn 
semiColumn�� 0 firstbracket firstBracket�� 0 lastbracket lastBracket�� 0 	thenumber  �� 0 thepages thePages�� 0 thename theName~ '������������	���	�������������	�	�	���
����
,������
N
S
U
\����
}
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
�E` Y .a �k%a %�%a %j Oa �k%j 	O)a a lhO*�[a \[Z�k\Z�k2a  l+ E�O*�[a \[Z�k\Z�k2a !l+ E�O� �a "%�%a #%�%j Y hO������vkv%E�Oa $�%j 	O��k kE�O� a %�%j Y hOa &�%j 	Y h[OY��O�M ��������� (0 detailsofbordereau DetailsOfBordereau� ��� �  �� 0 thelist theList�  � ������� 0 thelist theList�  0 thedetailslist theDetailsList� 0 theline theLine� 0 
semicolumn 
semiColumn� 0 thekey theKey� 0 thevalue theValue� ������-�~�}�|�{?�z�yS�x`�w�vln�u
� 
kocl
� 
cobj
� .corecnte****       ****� 0 	pieceword 	pieceWord� 0 findtext FindText
� 
psof
�~ 
psin�} 
�| .sysooffslong    ��� null
�{ 
ctxt�z 0 trim  
�y 
leng�x 	0 debug  
�w .sysodlogaskr        TEXT�v 0 verbose  �u 0 thekey theKey� �jvE�O ��[��l kh *âl+  hY p*���� 	E�O*�[�\[Zk\Z�k2�l+ E�O*�[�\[Z�k\Z��,2�l+ E�O� �a %�%j Y hO_  a �%a %�%Y hO�a �l%E�[OY�~O�N �t��s�r���q�t "0 sumtotalofpages SumTotalOfPages�s �p��p �  �o�o @0 anarrayofarrayofnumberandpages anArrayofArrayOfNumberAndPages�r  � �n�m�l�k�j�n @0 anarrayofarrayofnumberandpages anArrayofArrayOfNumberAndPages�m 0 thetotal theTotal�l 0 thearray theArray�k  0 thepiecenumber thePieceNumber�j 0 thepagecount thePageCount� �i�h�g�f�e����d����c
�i 
kocl
�h 
cobj
�g .corecnte****       ****
�f 
long�e 	0 debug  
�d .sysodlogaskr        TEXT
�c .ascrcmnt****      � ****�q \jE�O Q�[��l kh ��k/E�Ok��l/�& E�O� �%�%�%�%j Y hO�%�%�%�%j O��k E�[OY��O�OPO �b��a�`���_�b 0 trim  �a �^��^ �  �]�\�] 0 sometext someText�\ "0 thesecharacters theseCharacters�`  � �[�Z�[ 0 sometext someText�Z "0 thesecharacters theseCharacters� 
�Y�X�W�V�U�T�S�R
�Y 
tab �X 

�W .sysontocTEXT       shor
�V 
ret �U 
�T 
cha 
�S 
ctxt�R���_ ^�e  ���j ��jj �vE�Y hO h���k/�[�\[Zl\Zi2E�[OY��O h���i/�[�\[Zk\Z�2E�[OY��O�P �Q_�P�O���N�Q 0 	splittext 	splitText�P �M��M �  �L�K�L 0 thetext theText�K 0 thedelimiter theDelimiter�O  � �J�I�H�J 0 thetext theText�I 0 thedelimiter theDelimiter�H 0 thetextitems theTextItems� �G�F�Ex
�G 
ascr
�F 
txdl
�E 
citm�N ���,FO��-E�O���,FO�Q �D��C�B���A�D 0 convertlisttostring  �C �@��@ �  �?�>�? 0 thelist theList�> 0 thedelimiter theDelimiter�B  � �=�<�;�= 0 thelist theList�< 0 thedelimiter theDelimiter�; 0 	thestring 	theString� �:�9�8�
�: 
ascr
�9 
txdl
�8 
TEXT�A ���,FO��&E�O���,FO�R �7��6�5���4�7 (0 deletefolderatpath deleteFolderAtPath�6 �3��3 �  �2�1�2 0 thepath  �1 0 
foldername  �5  � �0�/�.�-�0 0 thepath  �/ 0 
foldername  �. 0 
deletefile 
deleteFile�- 	0 newfo  � ��,�+�*�)�(��'
�, 
psxf
�+ 
ctxt
�* .coredelonull���     obj �)  �(  
�' .ascrcmnt****      � ****�4 . � *ᠡ%/�&E�O�j UO�W X  �j O��%S �&�%�$���#�& (0 createfolderatpath createFolderAtPath�% �"��" �  �!� �! 0 thepath  �  0 
foldername  �$  � ���� 0 thepath  � 0 
foldername  � 	0 newfo  � 4�����������
� 
kocl
� 
cfol
� 
insh
� 
psxf
� 
prdt
� 
pnam� 
� .corecrel****      � null
� 
psxp�  �  �# - "� *���*�/��l� �,E�UO�W X 
 ��%T �S������ 00 prefixfilelistwithpath prefixFileListWithPath� ��� �  ��� 0 thepath  � 0 filelist  �  � �
�	���
 0 thepath  �	 0 filelist  � 0 filelistwithpath  � 0 thefile  � ���
� 
kocl
� 
cobj
� .corecnte****       ****� )jvE�O �[��l kh ���%kv%E�OP[OY��O�U ������� � <0 prefixfilelistwithpathquoted prefixFileListWithPathQuoted� ����� �  ������ 0 thepath  �� 0 filelist  �  � ���������� 0 thepath  �� 0 filelist  �� 0 filelistwithpath  �� 0 thefile  � ��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
strq�  +jvE�O !�[��l kh ���%�,kv%E�OP[OY��O�V ������������� "0 watermarkfilepy watermarkFilePY�� ����� �  ��������  0 thefiletostamp theFileToStamp�� 0 
thenewfile 
theNewFile�� 0 thestampfile theStampFile��  � ������������������  0 thefiletostamp theFileToStamp�� 0 
thenewfile 
theNewFile�� 0 thestampfile theStampFile�� 0 theangle  �� 0 thesize  �� 0 
theopacity 
theOpacity�� 0 	thescript  �� 0 
stampedpdf  � ��� "��$��&(*,7����@��G���� 0 thex theX�� 0 they theY
�� .sysoexecTEXT���     TEXT�� 	0 debug  
�� .sysodlogaskr        TEXT
�� .ascrcmnt****      � ****�� [�E�O�E�O�E�O�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%E�O�%j E�O_  a �%j Y hOa �%j O�W ��b���������� 0 remove_extension  �� ����� �  ���� 0 	this_name  ��  � ������ 0 	this_name  �� 0 x  � 
l�����������������
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
ctxt�� =�� 4��-�,�&E�O*���� E�O�[�\[Z�k\Zi2E�O��-�,�&E�Y hO�X ��!���������� 0 dlog  �� ����� �  ���� .0 anyobjorlistofobjects anyObjOrListOfObjects��  � �������������������������� .0 anyobjorlistofobjects anyObjOrListOfObjects�� 0 lst  �� 0 i  �� 0 txt  �� 0 errmsg errMsg�� 0 orgtids orgTids�� 0 oname oName�� 
0 oid oId�� 
0 prefix  � 0 	logtarget 	logTarget� 0 txtcombined txtCombined� 0 
prefixtime 
prefixTime�  0 prefixdatetime prefixDateTime� 0 anyobj anyObj� 	0 fpath  � >���������_�����������������������"$�<D_v��{��������������� 0 dlog_targets DLOG_TARGETS
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
�kvE�Y hOjvE�O]�[��l kh �E�O �klkh  P�k  >��,�  .��,�kvlvE[�k/E�Z[�l/��,FZO��%�&�%E�O���,FY ��&E�Y �a ,�&E�W "X   a �a ,%j E�W X  hO�a  Y h[OY�{Oa E�Oa a a a a �a a v��,	 �a a & �a ��,%E�Oa  E�Oa !E�O &�a ",E�O�a  �a #%�%a $%E�Y hW X  hO "�a %,E�O�a  �a &%�%E�Y hW X  hO�a '%E�O��%E�Y hO��%E�[OY��O��,a (kvlvE[�k/E�Z[�l/��,FZO��&E�Oa )*j *a +,%a ,%E�Oa -*j *a .,%a /%�[a \[Zl\Zi2%E�O���,FO ��[��l kh 	�a 0,a 1  ��%j 2Y ��a 0,a 3  ��%j 4Y q�a 0,a 5  $a 6a 7)a ",%a ,%a 8%�a ,%j Y C�a 0,E�O�a 9 a :�[a \[Zm\Zi2%E�Y hOa ;��%a ,%a <%�%a =%j [OY�_Y �H������ 0 tostring toString� ��� �  �� 0 anyobj anyObj�  � ��������� 0 anyobj anyObj� 0 i  � 0 txt  � 0 errmsg errMsg� 0 orgtids orgTids� 0 oname oName� 
0 oid oId� 
0 prefix  � $Y�������������������~�}�|�{�z�y�x����w�v29
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
� 
ctxt
�~ 
long
�} 
doub
�| 
bool
�{ 
ldt 
�z 
reco�y 
�x 
msng
�w 
pnam
�v 
ID  �=�E�O �klkh  N�k  >��,�  .��,�kvlvE[�k/E�Z[�l/��,FZO�%�&�%E�O���,FY ��&E�Y 	��,�&E�W X   ���,%j E�W X  hO�a  Y h[OY��Oa E�Oa a a a a �a a v��,	 �a a & za ��,%E�Oa E�Oa E�O &�a ,E�O�a  �a %�%a  %E�Y hW X  hO "�a !,E�O�a  �a "%�%E�Y hW X  hO�a #%E�Y hO��%Z �u��t�s���r
�u .aevtoappnull  �   � ****� k    ���  ��  ���  ���  ���  ���  ��� �� �� �� �� &�� .�� 5�� <�� A�� F�� O�� s�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �� �� '�� /�� <�� I�� ]�� p�� ~�� ��� ��� ��� ��� ��� ��� ��� �� �� �� �� )�� >�� E�� O�� U�� r�� ��� ��� ��� ��� ��� ��� �� �� �� 2�� T�� Y�� ��� ��� +�� ;�� T�� `�� j�� u�� ��� ��� ��� ��q�q  �t  �s  � �p�o�p 
0 apiece  �o 0 i  � � �n ��m ��l�k�j�i ��h ��g�f�e$�d+�c3�b:�a�`�_K�^egikm{�]�\��[�Z�Y���X�W�V�U�T�S�R�Q�P�O�N��M�L�K�J�I#�H�GEWYeil�F���E��D���C�B�A�@��?�>�=�<�;�:%�9�8�7M�6�5ackmp}�����������4�3�2�1�0�/�.�-<�,mo�+�*�)�(��'��&�%��$�#�"39�!CGJ^� f��}�����������������n 0 versionnumber versionNumber�m 0 thex theX�l 0 they theY�k 	0 debug  �j 0 verbose  �i $0 checkiminstalled CheckIMInstalled
�h .sysodlogaskr        TEXT�g 0 dlog  �f &0 theconvertcommand theConvertCommand�e ,0 defaultnamebordereau defaultNameBordereau�d 20 defaultnamepiecespdfdoc defaultNamePiecesPDFDoc�c "0 defaultnamelogo defaultNameLogo�b .0 defaulttempfoldername defaultTempFolderName�a 0 	pieceword 	pieceWord�` .0 thenumberofpagesinpdf theNumberofPagesInPDF�_ $0 thecountofpieces theCountOfPieces�^ "0 finalnamepdfdoc finalNamePDFDoc
�] 
appr
�\ 
nsou�[ 
�Z .sysonotfnull��� ��� TEXT
�Y 
prmp
�X 
dflc
�W afdmdesk
�V .earsffdralis        afdr
�U .sysostflalis    ��� null�T "0 theoutputfolder theOutputFolder
�S 
psxp�R 0 thefolderpath theFolderPath�Q 0 thetemppath theTempPath
�P 
strq�O &0 thequotedtemppath theQuotedTempPath�N .0 checkfileexistsatpath CheckFileExistsAtPath�M (0 createfolderatpath createFolderAtPath�L "0 directpathtotxt directPathToTxt�K "0 quotedpathtotxt quotedPathToTxt�J "0 directpathtopdf directPathToPDF�I "0 quotedpathtopdf quotedPathToPDF�H $0 directpathtologo directPathToLogo�G $0 quotedpathtologo quotedPathToLogo�F  0 pathtofinalpdf pathToFinalPDF
�E .ascrcmnt****      � ****�D *0 checkthisisapdfpath CheckThisIsAPDFPath
�C 
as  
�B 
utf8
�A .rdwrread****        ****�@ $0 thebordereautext theBordereauText�? 40 returnfilecontentsaslist ReturnFileContentsAsList�> 0 	textlines 	textLines�= 60 countnameandpagesofpieces CountNameAndPagesOfPieces�< <0 thecountnameandpagesofpieces theCountNameAndPagesOfPieces�; "0 sumtotalofpages SumTotalOfPages�: .0 theexpectedtotalpages theExpectedTotalPages�9 (0 detailsofbordereau DetailsOfBordereau�8 $0 thekeyvaluepairs theKeyValuePairs�7 $0 getpagesoffilepy GetPagesOfFilePY
�6 .corecnte****       ****�5 0 countofpieces countofPieces�4 &0 thearrayofindexes theArrayOfIndexes
�3 
kocl
�2 
cobj�1 20 writexfilespdffromonepy WriteXFilesPDFfromOnePY
�0 
spac�/ 0 trim  �. 0 	splittext 	splitText�- .0 thegeneratedfileslist theGeneratedFilesList�, 0 themanyimages theManyImages�+ T0 (generatestampimageforpiecenumberim4param (generateStampImageForPieceNumberIM4param�* 0 theimage  �) 20 thewatermarkedfileslist theWatermarkedFilesList�( 0 thefiletomark theFileToMark�' *0 thepathtofiletomark thePathToFileToMark�& *0 thepathtofilemarked thePathToFileMarked�% 0 thestampfile theStampFile�$ (0 thepathtostampfile thePathToStampFile�# "0 watermarkfilepy watermarkFilePY�" 0 themarkedfile  �! 0 convertlisttostring  
�  
TEXT� 60 writeonepdffilefrommanypy writeOnePDFFileFromManyPY� 60 theresultlogofthepyscript theResultLogOfThePyScript� (0 deletefolderatpath deleteFolderAtPath
� .miscactvnull��� ��� null
� 
btns
� 
dflt
� 
bhit� 0 
showbutton  
� 
psxf
� 
alis
� .aevtodocnull  �    alis�r��E�O�E�O�E�OfE�OeE�O*j+  hY �j 
O*�k+ OhO� 
�j 
Y hO*��%k+ O�E` Oa E` Oa E` Oa E` Oa E` OjE` OjE` Oa E` Oa �%a %_ %a %_ %a  %_ %a !%_ %j 
O� a "a #a $a %a &a ' (Y hO*a )a *_ %a +%a ,a -j .a ' /E` 0O_ 0a 1,E` 2O_ 2_ %E` 3O_ 3a 4,E` 5O� *_ 3k+ 6j 
Y hO� *a 7*_ 3k+ 6%k+ Y hO*_ 3k+ 6 *_ 2_ l+ 8E` 3Y hO_ 2_ %E` 9O_ 2_ %a 4,E` :O� *a ;_ 9%k+ Y hO_ 2_ %E` <O_ 2_ %a 4,E` =O� *a >_ <%k+ Y hO_ 2_ %E` ?O_ 2_ %a 4,E` @O� *a A_ %k+ Y hO� _ 9a B%_ <%a C%_ %j 
Y hO� a Da #a Ea %a Fa ' (Y hO_ 2_ %E` GO*_ 9k+ 6 hY a H_ %j 
Oa I_ %j JOhO*_ <k+ 6 hY a K_ %j 
OhO*_ <k+ L hY a Mj 
OhO*_ ?k+ 6 hY a N_ %j 
OhO_ 9a Oa Pl QE` RO� _ Rj 
Y hO� a S_ R%j JY hO*_ 9k+ TE` UO*_ Uk+ VE` WO*_ Wk+ XE` YO� a Z_ Y%j 
Y hOa [_ Y%j JO*_ Uk+ \E` ]O*_ <k+ ^E` O� _ a _%j 
Y hO_ Wj `E` aO� *a b_ %a c%a #a d_ a%a e%a %a fa ' (Y hO� *a g_ %a h%a #a i_ a%a j%a %a ka ' (Y hOa l_ %j JO_ k _ Yk  'a m_ %a n%_ Y%a o%j 
Oa pj JOhY hO� a qj 
Y hOa rj JOjvE` sO ,_ W[a ta ul `kh  _ s�a um/k k%E` s[OY��O_ s[a u\[Zl\Zi2E` sO_ Y_ s6GO***_ <_ 3_ sm+ v_ wl+ x_ wl+ yE` zO� a {_ z%j JY hOjvE` |O ak_ zj `kh � a }�%a ~%_ za u�/%j 
Y hO*�_ ?�_ 3a '+ E` �O� _ �j 
Y hO_ �_ |6GOP[OY��OjvE` �O �k_ zj `kh _ za u�/E` �O_ 3a �%_ �%E` �O_ 3a �%_ �%E` �O_ |a u�/E` �O_ 3a �%_ �%E` �O� a ��%a �%_ �%a �%_ �%j 
Y hO*_ �_ �_ �m+ �E` �O_ �E` �O_ �_ �6GOP[OY�iO� a �*_ �a �l+ �%j 
Y hO� a �a #a �a %a �a ' (Y hO� a �_ �%a �&j 
Y hOa �_ �%j JO*_ G_ 3_ �m+ �E` �O� a �a #a �a %a �a ' (Y hO*_ 2_ l+ �O*j �Oa �a �a �a �lva �la ' 
a �,E` �O_ �a � a � *a �_ G/a �&j �UY h ascr  ��ޭ