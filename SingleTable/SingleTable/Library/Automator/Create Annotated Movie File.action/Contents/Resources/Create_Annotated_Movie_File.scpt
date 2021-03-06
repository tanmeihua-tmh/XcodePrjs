FasdUAS 1.101.10   ��   ��    k             l     ��  ��    . ( Create_Annotated_Movie_File.applescript     � 	 	 P   C r e a t e _ A n n o t a t e d _ M o v i e _ F i l e . a p p l e s c r i p t   
  
 l     ��  ��    "  Create Annotated Movie File     �   8   C r e a t e   A n n o t a t e d   M o v i e   F i l e      l     ��������  ��  ��        l     ��  ��    * $ Created by Sal Soghoian on 12/7/10.     �   H   C r e a t e d   b y   S a l   S o g h o i a n   o n   1 2 / 7 / 1 0 .      l     ��  ��    !  sal@apple.com, sal@mac.com     �   6   s a l @ a p p l e . c o m ,   s a l @ m a c . c o m      l     ��  ��    C = Copyright (c) Apple Computer Inc. 2010. All rights reserved.     �   z   C o p y r i g h t   ( c )   A p p l e   C o m p u t e r   I n c .   2 0 1 0 .   A l l   r i g h t s   r e s e r v e d .     !   l     ��������  ��  ��   !  " # " l      �� $ %��   $F@ ADDING ANNOTATIONS TO THE ANNOTATIONS LIST

To add new annotations to this action, it is not necessary to edit the run code. Simply follow these steps:

1) add the annotation identifer to the annotationsAndValues entry of the AMDefaultParameters parameter record in the info.plist file (just duplicate and then edit one of the existing annotationsAndValues children). An annotation QuickTime identifier is something like this: com.apple.quicktime.author
2) add the QuickTime identifer and its corresponding localized annotation name to the Localizable.strings file, similar to this:

"annotationidentifier" = "Localized Name of Annotation";

Compile the project and the new annotation will automatically appear in the annotations list in the action view.

NOTE: it is assumed that any new annotations have values that are strings

    % � & &�   A D D I N G   A N N O T A T I O N S   T O   T H E   A N N O T A T I O N S   L I S T 
 
 T o   a d d   n e w   a n n o t a t i o n s   t o   t h i s   a c t i o n ,   i t   i s   n o t   n e c e s s a r y   t o   e d i t   t h e   r u n   c o d e .   S i m p l y   f o l l o w   t h e s e   s t e p s : 
 
 1 )   a d d   t h e   a n n o t a t i o n   i d e n t i f e r   t o   t h e   a n n o t a t i o n s A n d V a l u e s   e n t r y   o f   t h e   A M D e f a u l t P a r a m e t e r s   p a r a m e t e r   r e c o r d   i n   t h e   i n f o . p l i s t   f i l e   ( j u s t   d u p l i c a t e   a n d   t h e n   e d i t   o n e   o f   t h e   e x i s t i n g   a n n o t a t i o n s A n d V a l u e s   c h i l d r e n ) .   A n   a n n o t a t i o n   Q u i c k T i m e   i d e n t i f i e r   i s   s o m e t h i n g   l i k e   t h i s :   c o m . a p p l e . q u i c k t i m e . a u t h o r 
 2 )   a d d   t h e   Q u i c k T i m e   i d e n t i f e r   a n d   i t s   c o r r e s p o n d i n g   l o c a l i z e d   a n n o t a t i o n   n a m e   t o   t h e   L o c a l i z a b l e . s t r i n g s   f i l e ,   s i m i l a r   t o   t h i s : 
 
 " a n n o t a t i o n i d e n t i f i e r "   =   " L o c a l i z e d   N a m e   o f   A n n o t a t i o n " ; 
 
 C o m p i l e   t h e   p r o j e c t   a n d   t h e   n e w   a n n o t a t i o n   w i l l   a u t o m a t i c a l l y   a p p e a r   i n   t h e   a n n o t a t i o n s   l i s t   i n   t h e   a c t i o n   v i e w . 
 
 N O T E :   i t   i s   a s s u m e d   t h a t   a n y   n e w   a n n o t a t i o n s   h a v e   v a l u e s   t h a t   a r e   s t r i n g s 
 
 #  ' ( ' l     ��������  ��  ��   (  )�� ) h     �� *�� :0 create_annotated_movie_file Create_Annotated_Movie_File * k       + +  , - , l      �� . /��   .    REQUIRED PARENT PROPERTY     / � 0 0 4   R E Q U I R E D   P A R E N T   P R O P E R T Y   -  1 2 1 j     �� 3
�� 
pare 3 4     �� 4
�� 
pcls 4 m     5 5 � 6 6  A M B u n d l e A c t i o n 2  7 8 7 l     ��������  ��  ��   8  9 : 9 l      �� ; <��   ; : 4 PROPERTIES USED AS REFERENCES TO INTERFACE OBJECTS     < � = = h   P R O P E R T I E S   U S E D   A S   R E F E R E N C E S   T O   I N T E R F A C E   O B J E C T S   :  > ? > l     �� @ A��   @ E ? PROPERTIES LINKED TO TABLE CONTROLLER OBJECTS IN THE INTERFACE    A � B B ~   P R O P E R T I E S   L I N K E D   T O   T A B L E   C O N T R O L L E R   O B J E C T S   I N   T H E   I N T E R F A C E ?  C D C j   	 �� E�� &0 tablecontroller01 tableController01 E m   	 
��
�� 
msng D  F G F l     �� H I��   H   TABLE DATA    I � J J    T A B L E   D A T A G  K L K l      M N O M j    �� P�� &0 tabledatapairings tableDataPairings P J    ����   N F @ stores current table values for retrieval after UI is presented    O � Q Q �   s t o r e s   c u r r e n t   t a b l e   v a l u e s   f o r   r e t r i e v a l   a f t e r   U I   i s   p r e s e n t e d L  R S R l     ��������  ��  ��   S  T U T j    �� V�� 0 	logstatus 	logStatus V m    ��
�� boovfals U  W X W l     ��������  ��  ��   X  Y Z Y l      �� [ \��   [ L F THE HANDLER EXECUTED WHEN THE WORKFLOW CONTAINING THIS ACTION IS RUN     \ � ] ] �   T H E   H A N D L E R   E X E C U T E D   W H E N   T H E   W O R K F L O W   C O N T A I N I N G   T H I S   A C T I O N   I S   R U N   Z  ^ _ ^ i     ` a ` I      �� b���� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_ b  c d c o      ���� 	0 input   d  e f e o      ���� 0 anaction anAction f  g�� g o      ���� 0 errorref errorRef��  ��   a Q    � h i j h k   a k k  l m l l   �� n o��   n    reset general alert title    o � p p 4   r e s e t   g e n e r a l   a l e r t   t i t l e m  q r q r     s t s m     u u � v v   t o      ���� 0 
alerttitle 
alertTitle r  w x w l   �� y z��   y F @ make sure the items passed to the action, are in a list (array)    z � { { �   m a k e   s u r e   t h e   i t e m s   p a s s e d   t o   t h e   a c t i o n ,   a r e   i n   a   l i s t   ( a r r a y ) x  | } | l    ~  � ~ r     � � � c    
 � � � o    ���� 	0 input   � m    	��
�� 
list � o      ���� 0 these_items    4 . get list of input items from the passed input    � � � � \   g e t   l i s t   o f   i n p u t   i t e m s   f r o m   t h e   p a s s e d   i n p u t }  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � 7 1 STORE THE ACTION PARAMETERS RECORD IN A VARIABLE    � � � � b   S T O R E   T H E   A C T I O N   P A R A M E T E R S   R E C O R D   I N   A   V A R I A B L E �  � � � r     � � � n    � � � I    �������� 0 
parameters  ��  ��   �  f     � l      ����� � o      ���� ,0 parametersdictionary parametersDictionary��  ��   �  � � � l   �� � ���   � ' ! GET THE VALUE FOR EACH PARAMETER    � � � � B   G E T   T H E   V A L U E   F O R   E A C H   P A R A M E T E R �  � � � l   �� � ���   � #  check for passed error first    � � � � :   c h e c k   f o r   p a s s e d   e r r o r   f i r s t �  � � � Z    ; � ����� � =    � � � l    ����� � c     � � � n    � � � I    �� ����� 0 valueforkey_ valueForKey_ �  ��� � m     � � � � �  e r r o r O c c u r e d��  ��   � o    ���� ,0 parametersdictionary parametersDictionary � m    ��
�� 
bool��  ��   � m    ��
�� boovtrue � k   " 7 � �  � � � r   " , � � � l  " * ����� � c   " * � � � n  " ( � � � I   # (�� ����� 0 valueforkey_ valueForKey_ �  ��� � m   # $ � � � � �  e r r o r T i t l e��  ��   � o   " #���� ,0 parametersdictionary parametersDictionary � m   ( )��
�� 
TEXT��  ��   � o      ���� 0 
alerttitle 
alertTitle �  ��� � r   - 7 � � � l  - 5 ����� � c   - 5 � � � n  - 3 � � � I   . 3�� ����� 0 valueforkey_ valueForKey_ �  ��� � m   . / � � � � �  e r r o r M e s s a g e��  ��   � o   - .���� ,0 parametersdictionary parametersDictionary � m   3 4��
�� 
TEXT��  ��   � o      ���� 0 alertmessage alertMessage��  ��  ��   �  � � � l  < <�� � ���   � 2 , retrieve values of file handling parameters    � � � � X   r e t r i e v e   v a l u e s   o f   f i l e   h a n d l i n g   p a r a m e t e r s �  � � � r   < F � � � c   < D � � � n  < B � � � I   = B�� ����� 0 valueforkey_ valueForKey_ �  ��� � m   = > � � � � � " d e l e t e S o u r c e F i l e s��  ��   � o   < =���� ,0 parametersdictionary parametersDictionary � m   B C��
�� 
bool � o      ���� &0 deletesourcefiles deleteSourceFiles �  � � � r   G Q � � � c   G O � � � n  G M � � � I   H M�� ����� 0 valueforkey_ valueForKey_ �  ��� � m   H I � � � � � * u s e S a m e F o l d e r A s S o u r c e��  ��   � o   G H���� ,0 parametersdictionary parametersDictionary � m   M N��
�� 
bool � o      ���� .0 usesamefolderassource useSameFolderAsSource �  � � � r   R \ � � � c   R Z � � � n  R X � � � I   S X�� ����� 0 valueforkey_ valueForKey_ �  ��� � m   S T � � � � � " d e s t i n a t i o n F o l d e r��  ��   � o   R S���� ,0 parametersdictionary parametersDictionary � m   X Y��
�� 
TEXT � o      ���� .0 destinationfolderpath destinationFolderPath �  � � � Z  ] m � ����� � H   ] a � � D   ] ` � � � o   ] ^���� .0 destinationfolderpath destinationFolderPath � m   ^ _ � � � � �  / � r   d i � � � b   d g � � � o   d e���� .0 destinationfolderpath destinationFolderPath � m   e f � � � � �  / � o      ���� .0 destinationfolderpath destinationFolderPath��  ��   �  �  � l  n n��������  ��  ��     Z   n ����� =  n q o   n o���� .0 usesamefolderassource useSameFolderAsSource m   o p��
�� boovfals k   t � 	 l  t t��
��  
 ; 5 stringByExpandingTildeInPath_(destinationFolderPath)    � j   s t r i n g B y E x p a n d i n g T i l d e I n P a t h _ ( d e s t i n a t i o n F o l d e r P a t h )	 �� Q   t � k   w �  r   w � l  w ~���� I  w ~����
�� .sysoexecTEXT���     TEXT b   w z m   w x � 
 e c h o   o   x y�� .0 destinationfolderpath destinationFolderPath��  ��  ��   o      �~�~ .0 destinationfolderpath destinationFolderPath  r   � � c   � � !  l  � �"�}�|" I  � ��{#�z
�{ .sysoexecTEXT���     TEXT# b   � �$%$ b   � �&'& m   � �(( �)) 
 [   - d  ' l  � �*�y�x* n   � �+,+ 1   � ��w
�w 
strq, o   � ��v�v .0 destinationfolderpath destinationFolderPath�y  �x  % m   � �-- �.. B   ]   & &   e c h o   ' t r u e '   | |   e c h o   ' f a l s e '�z  �}  �|  ! m   � ��u
�u 
bool l     /�t�s/ o      �r�r .0 folderexistencestatus folderExistenceStatus�t  �s   0�q0 Z  � �12�p�o1 =  � �343 o   � ��n�n .0 folderexistencestatus folderExistenceStatus4 m   � ��m
�m boovfals2 R   � ��l�k�j
�l .ascrerr ****      � ****�k  �j  �p  �o  �q   R      �i�h�g
�i .ascrerr ****      � ****�h  �g   k   � �55 676 l  � ��f89�f  8 5 / chosen folder doesn't exist so use the desktop   9 �:: ^   c h o s e n   f o l d e r   d o e s n ' t   e x i s t   s o   u s e   t h e   d e s k t o p7 ;�e; r   � �<=< l  � �>�d�c> I  � ��b?�a
�b .sysoexecTEXT���     TEXT? m   � �@@ �AA  e c h o   ~ / D e s k t o p�a  �d  �c  = o      �`�` .0 destinationfolderpath destinationFolderPath�e  ��  ��  ��   BCB l  � ��_�^�]�_  �^  �]  C DED l  � ��\FG�\  F , & WRITE ANNOTATIONS AND VALUES TO PLIST   G �HH L   W R I T E   A N N O T A T I O N S   A N D   V A L U E S   T O   P L I S TE IJI r   � �KLK l  � �M�[�ZM c   � �NON n  � �PQP I   � ��YR�X�Y 0 valueforkey_ valueForKey_R S�WS m   � �TT �UU ( a n n o t a t i o n s A n d V a l u e s�W  �X  Q o   � ��V�V ,0 parametersdictionary parametersDictionaryO m   � ��U
�U 
list�[  �Z  L o      �T�T "0 storeddatapairs storedDataPairsJ VWV r   � �XYX b   � �Z[Z l  � �\�S�R\ I  � ��Q]�P
�Q .sysoexecTEXT���     TEXT] m   � �^^ �__  u u i d g e n�P  �S  �R  [ m   � �`` �aa  . p l i s tY l     b�O�Nb o      �M�M 0 plistfilename plistFileName�O  �N  W cdc r   � �efe b   � �ghg l  � �i�L�Ki n   � �jkj 1   � ��J
�J 
psxpk l  � �l�I�Hl I  � ��Gm�F
�G .earsffdralis        afdrm m   � ��E
�E afdmtemp�F  �I  �H  �L  �K  h o   � ��D�D 0 plistfilename plistFileNamef o      �C�C 0 plistfilepath plistFilePathd non Z   �pq�B�Ap =  � �rsr n  � �tut I   � ��@v�?�@ $0 makedefaultplist makeDefaultPlistv wxw o   � ��>�> 0 plistfilepath plistFilePathx y�=y o   � ��<�< "0 storeddatapairs storedDataPairs�=  �?  u  f   � �s m   � ��;
�; boovfalsq k   �zz {|{ r   � �}~} l  � ��:�9 n  � ���� I   � ��8��7�8 &0 nslocalizedstring NSLocalizedString� ��6� m   � ��� ��� 2 P L I S T _ W R I T E _ P R O B L E M _ T I T L E�6  �7  �  f   � ��:  �9  ~ o      �5�5 0 
alerttitle 
alertTitle| ��4� R   ��3��2
�3 .ascrerr ****      � ****� l  ���1�0� n  ���� I   �/��.�/ &0 nslocalizedstring NSLocalizedString� ��-� m   �� ��� & P L I S T _ W R I T E _ P R O B L E M�-  �.  �  f   � �1  �0  �2  �4  �B  �A  o ��� l �,�+�*�,  �+  �*  � ��� r  ��� J  �)�)  � o      �(�( 0 output_list  � ��� r  ��� m  �� ���  m o v� o      �'�' 0 nameextension nameExtension� ��� Y  F��&���%� k  &A�� ��� r  &2��� n  &.��� 4  '.�$�
�$ 
cobj� o  *-�#�# 0 i  � o  &'�"�" 0 these_items  � l     ��!� � o      �� ,0 sourcemediaposixpath sourceMediaPOSIXPath�!  �   � ��� l 33����  �  �  � ��� l 33����  � 1 + DERIVE THE PATH TO THE NEW ANNOTATED FILE    � ��� V   D E R I V E   T H E   P A T H   T O   T H E   N E W   A N N O T A T E D   F I L E  � ��� Z  3������ = 36��� o  34�� .0 usesamefolderassource useSameFolderAsSource� m  45�
� boovtrue� l 9c���� s  9c��� n 9J��� I  :J���� &0 derivenewfilename deriveNewFilename� ��� o  :=�� ,0 sourcemediaposixpath sourceMediaPOSIXPath� ��� o  =>�� 0 nameextension nameExtension� ��� m  >A�� ���  -� ��� m  AD�� ���  �  �  �  f  9:� J      �� ��� o      �� 0 
targetname 
targetName� ��� o      �� *0 finalmediaposixpath finalMediaPOSIXPath�  � 5 / IN THE SAME DIRECTORY AS THE SOURCE MEDIA FILE   � ��� ^   I N   T H E   S A M E   D I R E C T O R Y   A S   T H E   S O U R C E   M E D I A   F I L E�  � s  f���� n fu��� I  gu���� &0 derivenewfilename deriveNewFilename� ��� o  gj�� ,0 sourcemediaposixpath sourceMediaPOSIXPath� ��� o  jk�� 0 nameextension nameExtension� ��� m  kn�� ���  -� ��� o  no�
�
 .0 destinationfolderpath destinationFolderPath�  �  �  f  fg� J      �� ��� o      �	�	 0 
targetname 
targetName� ��� o      �� *0 finalmediaposixpath finalMediaPOSIXPath�  � ��� l ������  �  �  � ��� l ������  �   ANNOTATE THE MEDIA FILE   � ��� 0   A N N O T A T E   T H E   M E D I A   F I L E� ��� l  ������  � o i Write new movie file in quicktime metadata format: avmetareadwrite -q -w meta.plist source.mov dest.mov    � ��� �   W r i t e   n e w   m o v i e   f i l e   i n   q u i c k t i m e   m e t a d a t a   f o r m a t :   a v m e t a r e a d w r i t e   - q   - w   m e t a . p l i s t   s o u r c e . m o v   d e s t . m o v  � ��� l  ������  � m g Write merge movie file quicktime metadata format: avmetareadwrite -q -a meta.plist source.mov dest.mov   � ��� �   W r i t e   m e r g e   m o v i e   f i l e   q u i c k t i m e   m e t a d a t a   f o r m a t :   a v m e t a r e a d w r i t e   - q   - a   m e t a . p l i s t   s o u r c e . m o v   d e s t . m o v� ��� r  ����� c  ����� l ���� ��� b  ����� b  ����� b  ����� b  ��� � b  �� b  �� m  �� � * a v m e t a r e a d w r i t e   - q   - a 1  ����
�� 
spac l ������ n  ��	 1  ����
�� 
strq	 o  ������ 0 plistfilepath plistFilePath��  ��    1  ����
�� 
spac� l ��
����
 n  �� 1  ����
�� 
strq o  ������ ,0 sourcemediaposixpath sourceMediaPOSIXPath��  ��  � 1  ����
�� 
spac� l ������ n  �� 1  ����
�� 
strq o  ������ *0 finalmediaposixpath finalMediaPOSIXPath��  ��  �   ��  � m  ����
�� 
TEXT� l     ���� o      ���� 0 commandstring commandString��  ��  �  Z ������ = �� o  ������ 0 	logstatus 	logStatus m  ����
�� boovtrue I ������
�� .ascrcmnt****      � **** b  �� m  �� � > A N N O T A T E   A C T I O N   c o m m a n d S t r i n g :   o  ������ 0 commandstring commandString��  ��  ��    I ������
�� .sysoexecTEXT���     TEXT o  ������ 0 commandstring commandString��     l ����������  ��  ��    !"! l ����#$��  #   DELETE THE TEMP FILE   $ �%% *   D E L E T E   T H E   T E M P   F I L E" &'& l ��()*( I ����+��
�� .sysodelanull��� ��� nmbr+ m  ������ ��  ) ? 9 wait one second after the previous command has completed   * �,, r   w a i t   o n e   s e c o n d   a f t e r   t h e   p r e v i o u s   c o m m a n d   h a s   c o m p l e t e d' -.- r  ��/0/ c  ��121 l ��3����3 b  ��454 m  ��66 �77  r m   - f  5 l ��8����8 l ��9����9 n  ��:;: 1  ����
�� 
strq; o  ������ 0 plistfilepath plistFilePath��  ��  ��  ��  ��  ��  2 m  ����
�� 
TEXT0 l     <����< o      ���� 0 commandstring commandString��  ��  . =>= I ����?��
�� .sysoexecTEXT���     TEXT? o  ������ 0 commandstring commandString��  > @A@ l ����������  ��  ��  A BCB Z  �DE����D = ��FGF o  ������ &0 deletesourcefiles deleteSourceFilesG m  ����
�� boovtrueE k  HH IJI l ��KL��  K   DELETE THE SOURCE FILE   L �MM .   D E L E T E   T H E   S O U R C E   F I L EJ NON r  PQP c  RSR l T����T b  UVU m  WW �XX  r m   - f  V l Y����Y l Z����Z n  [\[ 1  ��
�� 
strq\ o  ���� ,0 sourcemediaposixpath sourceMediaPOSIXPath��  ��  ��  ��  ��  ��  S m  ��
�� 
TEXTQ l     ]����] o      ���� 0 commandstring commandString��  ��  O ^��^ I ��_��
�� .sysoexecTEXT���     TEXT_ o  ���� 0 commandstring commandString��  ��  ��  ��  C `a` l ��������  ��  ��  a bcb l ��de��  d A ; ADD THE PATH TO THE NEW ANNOTATED FILE TO THE OUTPUT ARRAY   e �ff v   A D D   T H E   P A T H   T O   T H E   N E W   A N N O T A T E D   F I L E   T O   T H E   O U T P U T   A R R A Yc ghg Z 8ij����i = &klk o  $���� 0 	logstatus 	logStatusl m  $%��
�� boovtruej I )4��m��
�� .ascrcmnt****      � ****m b  )0non m  ),pp �qq R A N N O T A T E   A C T I O N   a n n o t a t e d M e d i a P O S I X p a t h :  o o  ,/���� *0 finalmediaposixpath finalMediaPOSIXPath��  ��  ��  h r��r r  9Asts c  9>uvu o  9<���� *0 finalmediaposixpath finalMediaPOSIXPathv m  <=��
�� 
TEXTt l     w����w n      xyx  ;  ?@y l >?z����z o  >?���� 0 output_list  ��  ��  ��  ��  ��  �& 0 i  � m  ���� � l !{����{ I !��|��
�� .corecnte****       ****| o  ���� 0 these_items  ��  ��  ��  �%  � }~} l GG��������  ��  ��  ~ � Z G^������� = GN��� o  GL���� 0 	logstatus 	logStatus� m  LM��
�� boovtrue� I QZ�����
�� .ascrcmnt****      � ****� b  QV��� m  QT�� ��� * E N C O D E A C T I O N   O U T P U T :  � o  TU���� 0 output_list  ��  ��  ��  � ���� L  _a�� o  _`���� 0 output_list  ��   i R      ����
�� .ascrerr ****      � ****� o      ���� 0 error_message  � �����
�� 
errn� o      ���� 0 error_number  ��   j k  i��� ��� Z  i�������� > ip��� l il������ o  il���� 0 error_number  ��  ��  � m  lo������� k  s��� ��� Z s�������� = sx��� o  st���� 0 
alerttitle 
alertTitle� m  tw�� ���  � r  {���� o  {~���� 0 error_message  � o      �� 0 
alerttitle 
alertTitle��  ��  � ��� I ���~�}�|
�~ .sysobeepnull��� ��� long�}  �|  � ��{� I ���z��
�z .sysodisAaleR        TEXT� o  ���y�y 0 
alerttitle 
alertTitle� �x��w
�x 
mesS� o  ���v�v 0 error_message  �w  �{  ��  ��  � ��u� L  ���� m  ���� ���  e r r o r   o c c u r e d�u   _ ��� l     �t�s�r�t  �s  �r  � ��� l      �q���q  � = 7 HANDLER CALLED BEFORE ACTION VIEW APPEARS IN WORKFLOW    � ��� n   H A N D L E R   C A L L E D   B E F O R E   A C T I O N   V I E W   A P P E A R S   I N   W O R K F L O W  � ��� i    ��� I      �p�o�n�p 
0 opened  �o  �n  � n    ��� I    �m�l�k�m  0 populatetables populateTables�l  �k  �  f     � ��� l     �j�i�h�j  �i  �h  � ��� l      �g���g  � \ V HANDLER CALLED TO STORE THE CURRENT SELECTIONS. CALLED WHEN WORKFLOW IS SAVED OR RUN    � ��� �   H A N D L E R   C A L L E D   T O   S T O R E   T H E   C U R R E N T   S E L E C T I O N S .   C A L L E D   W H E N   W O R K F L O W   I S   S A V E D   O R   R U N  � ��� i    ��� I      �f�e�d�f $0 updateparameters updateParameters�e  �d  � k    �� ��� Z    ���c�b� =    ��� o     �a�a 0 	logstatus 	logStatus� m    �`
�` boovtrue� I  
 �_��^
�_ .ascrcmnt****      � ****� m   
 �� ��� V * * * * * * *   B E G I N N I N G   U P D A T E   P A R A M E T E R S   * * * * * * *�^  �c  �b  � ��� l   �]���]  � %  reset error indicator property   � ��� >   r e s e t   e r r o r   i n d i c a t o r   p r o p e r t y� ��� n   ��� n   ��� I    �\��[�\ $0 setvalue_forkey_ setValue_forKey_� ��� m    �Z
�Z boovfals� ��Y� m    �� ���  e r r o r O c c u r e d�Y  �[  � I    �X�W�V�X 0 
parameters  �W  �V  �  f    � ��� l     �U�T�S�U  �T  �S  � ��� l     �R���R  � � � TABLE 01: get the contents  of  table, which is returned as a list of records. Convert from a list of records to a list of arrays of the row's values   � ���,   T A B L E   0 1 :   g e t   t h e   c o n t e n t s     o f     t a b l e ,   w h i c h   i s   r e t u r n e d   a s   a   l i s t   o f   r e c o r d s .   C o n v e r t   f r o m   a   l i s t   o f   r e c o r d s   t o   a   l i s t   o f   a r r a y s   o f   t h e   r o w ' s   v a l u e s� ��� r     )��� n    '��� o   % '�Q�Q 0 content  � o     %�P�P &0 tablecontroller01 tableController01� o      �O�O 0 
table_data  � ��� l  * *�N���N  � - 'log "CURRENT TABLE DATA: " & table_data   � ��� N l o g   " C U R R E N T   T A B L E   D A T A :   "   &   t a b l e _ d a t a� ��� r   * .��� J   * ,�M�M  � o      �L�L &0 tabledataasarrays tableDataAsArrays� ��� r   / 2��� m   / 0�K
�K boovtrue� o      �J�J 20 emptyselectionerrorflag emptySelectionErrorFlag� ��� Y   3 ���I���H� k   A ��� � � r   A G n   A E 4   B E�G
�G 
cobj o   C D�F�F 0 i   l  A B�E�D o   A B�C�C 0 
table_data  �E  �D   o      �B�B 0 this_record     Q   H ]	
	 r   K R c   K P l  K N�A�@ n   K N o   L N�?�? 0 annotationValues   o   K L�>�> 0 this_record  �A  �@   m   N O�=
�= 
TEXT o      �<�< *0 thisannotationvalue thisAnnotationValue
 R      �;�:�9
�; .ascrerr ****      � ****�:  �9   l  Z ] r   Z ] m   Z [ �   o      �8�8 *0 thisannotationvalue thisAnnotationValue   no data supplied by user    � 2   n o   d a t a   s u p p l i e d   b y   u s e r  r   ^ e c   ^ c  l  ^ a!�7�6! n   ^ a"#" o   _ a�5�5 0 selectionIndicator  # o   ^ _�4�4 0 this_record  �7  �6    m   a b�3
�3 
bool o      �2�2 (0 thisselectionvalue thisSelectionValue $%$ Z  f s&'�1�0& =  f i()( o   f g�/�/ (0 thisselectionvalue thisSelectionValue) m   g h�.
�. boovtrue' r   l o*+* m   l m�-
�- boovfals+ o      �,�, 20 emptyselectionerrorflag emptySelectionErrorFlag�1  �0  % ,-, l  t t�+./�+  . � � swap the the localized annotation name for annotation identifier to write back to the info.plist, i.e.:  "Author" = "com.apple.quicktime.author"   / �00"   s w a p   t h e   t h e   l o c a l i z e d   a n n o t a t i o n   n a m e   f o r   a n n o t a t i o n   i d e n t i f i e r   t o   w r i t e   b a c k   t o   t h e   i n f o . p l i s t ,   i . e . :     " A u t h o r "   =   " c o m . a p p l e . q u i c k t i m e . a u t h o r "- 121 r   t y343 l  t w5�*�)5 n   t w676 o   u w�(�( 0 annotationNames  7 o   t u�'�' 0 this_record  �*  �)  4 o      �&�& (0 thisannotationname thisAnnotationName2 898 l  z �:;<: r   z �=>= n  z �?@? I   { ��%A�$�% ,0 returnvalueinparings returnValueInParingsA BCB o   { ��#�# &0 tabledatapairings tableDataPairingsC D�"D o   � ��!�! (0 thisannotationname thisAnnotationName�"  �$  @  f   z {> o      � �  40 thisannotationidentifier thisAnnotationIdentifier; A ; (my NSLocalizedString((|annotationNames| of this_record)))   < �EE v   ( m y   N S L o c a l i z e d S t r i n g ( ( | a n n o t a t i o n N a m e s |   o f   t h i s _ r e c o r d ) ) )9 FGF r   � �HIH J   � �JJ KLK o   � ��� (0 thisselectionvalue thisSelectionValueL MNM o   � ��� 40 thisannotationidentifier thisAnnotationIdentifierN O�O o   � ��� *0 thisannotationvalue thisAnnotationValue�  I o      �� 0 row_data  G PQP Z  � �RS��R =  � �TUT o   � ��� 0 	logstatus 	logStatusU m   � ��
� boovtrueS I  � ��V�
� .ascrcmnt****      � ****V b   � �WXW m   � �YY �ZZ & D A T A   R O W   T O   W R I T E :  X J   � �[[ \]\ o   � ��� (0 thisselectionvalue thisSelectionValue] ^_^ 1   � ��
� 
spac_ `a` o   � ��� 40 thisannotationidentifier thisAnnotationIdentifiera bcb 1   � ��
� 
spacc d�d o   � ��� *0 thisannotationvalue thisAnnotationValue�  �  �  �  Q e�e r   � �fgf l  � �h��h o   � ��� 0 row_data  �  �  g l     i�
�	i n      jkj  ;   � �k o   � ��� &0 tabledataasarrays tableDataAsArrays�
  �	  �  �I 0 i  � m   6 7�� � l  7 <l��l I  7 <�m�
� .corecnte****       ****m o   7 8�� 0 
table_data  �  �  �  �H  � non Z   �pq�� p =  � �rsr o   � ����� 20 emptyselectionerrorflag emptySelectionErrorFlags m   � ���
�� boovtrueq k   �tt uvu l  � ���wx��  w B < throw the error to the run handler by passing as parameters   x �yy x   t h r o w   t h e   e r r o r   t o   t h e   r u n   h a n d l e r   b y   p a s s i n g   a s   p a r a m e t e r sv z{z n  � �|}| n  � �~~ I   � �������� $0 setvalue_forkey_ setValue_forKey_� ��� m   � ���
�� boovtrue� ���� m   � ��� ���  e r r o r O c c u r e d��  ��   I   � ��������� 0 
parameters  ��  ��  }  f   � �{ ��� r   � ���� l  � ������� n  � ���� I   � �������� &0 nslocalizedstring NSLocalizedString� ���� m   � ��� ��� * S E L E C T I O N _ E R R O R _ T I T L E��  ��  �  f   � ���  ��  � l     ������ o      ���� 0 alert_title  ��  ��  � ��� r   � ���� l  � ������� n  � ���� I   � �������� &0 nslocalizedstring NSLocalizedString� ���� m   � ��� ��� . S E L E C T I O N _ E R R O R _ M E S S A G E��  ��  �  f   � ���  ��  � l     ������ o      ���� 0 alert_message  ��  ��  � ��� n  � ���� n  � ���� I   � �������� $0 setvalue_forkey_ setValue_forKey_� ��� o   � ����� 0 alert_title  � ���� m   � ��� ���  e r r o r T i t l e��  ��  � I   � ��������� 0 
parameters  ��  ��  �  f   � �� ���� n  ���� n  ���� I   �������� $0 setvalue_forkey_ setValue_forKey_� ��� o   � ����� 0 alert_message  � ���� m   � ��� ���  e r r o r M e s s a g e��  ��  � I   � ��������� 0 
parameters  ��  ��  �  f   � ���  �  �   o ��� l ������  � 2 , write the values into the parameters record   � ��� X   w r i t e   t h e   v a l u e s   i n t o   t h e   p a r a m e t e r s   r e c o r d� ���� n ��� n 	��� I  ������� $0 setvalue_forkey_ setValue_forKey_� ��� o  ���� &0 tabledataasarrays tableDataAsArrays� ���� m  �� ��� ( a n n o t a t i o n s A n d V a l u e s��  ��  � I  	�������� 0 
parameters  ��  ��  �  f  	��  � ��� l     ��������  ��  ��  � ��� l     ������  � L F MATCHES THE LOCALIZED ANNOTATION NAME TO THE CORRESPONDING IDENTIFIER   � ��� �   M A T C H E S   T H E   L O C A L I Z E D   A N N O T A T I O N   N A M E   T O   T H E   C O R R E S P O N D I N G   I D E N T I F I E R� ��� i    "��� I      ������� ,0 returnvalueinparings returnValueInParings� ��� o      ���� $0 thisarrayofpairs thisArrayOfPairs� ���� o      ���� 0 
keytomatch 
keyToMatch��  ��  � k     ��� ��� Z    ������� =    ��� o     ���� 0 	logstatus 	logStatus� m    ��
�� boovtrue� I  
 �����
�� .ascrcmnt****      � ****� b   
 ��� m   
 �� ��� 4 A N N O T A T I O N   N A M E   T O   M A T C H :  � o    ���� 0 
keytomatch 
keyToMatch��  ��  ��  � ��� Y    ��������� k   $ ~�� ��� s   $ 9��� n   $ (��� 4   % (���
�� 
cobj� o   & '���� 0 i  � o   $ %���� $0 thisarrayofpairs thisArrayOfPairs� J      �� ��� o      ���� 0 thiskey thisKey� ���� o      ���� 0 	thisvalue 	thisValue��  � ��� Z  : W������� =  : A��� o   : ?���� 0 	logstatus 	logStatus� m   ? @��
�� boovtrue� I  D S�����
�� .ascrcmnt****      � ****� b   D O��� b   D I��� b   D G��� m   D E�� ���  S T O R E D   P A I R  � o   E F���� 0 i  � m   G H   �  ;  � J   I N  o   I J���� 0 thiskey thisKey  1   J K��
�� 
spac �� o   K L���� 0 	thisvalue 	thisValue��  ��  ��  ��  � �� Z   X ~	
����	 =  X _ c   X [ o   X Y���� 0 thiskey thisKey m   Y Z��
�� 
TEXT c   [ ^ l  [ \���� o   [ \���� 0 
keytomatch 
keyToMatch��  ��   m   \ ]��
�� 
TEXT
 k   b z  Z  b w���� =  b i o   b g���� 0 	logstatus 	logStatus m   g h��
�� boovtrue I  l s����
�� .ascrcmnt****      � **** b   l o m   l m � ( M A T C H E D   I D E N T I F I E R :   o   m n���� 0 	thisvalue 	thisValue��  ��  ��   �� L   x z o   x y���� 0 	thisvalue 	thisValue��  ��  ��  ��  �� 0 i  � m    ���� � l    ����  I   ��!��
�� .corecnte****       ****! o    ���� $0 thisarrayofpairs thisArrayOfPairs��  ��  ��  ��  � "#" Z  � �$%����$ =  � �&'& o   � ����� 0 	logstatus 	logStatus' m   � ���
�� boovtrue% I  � ���(��
�� .ascrcmnt****      � ****( m   � �)) �**  N O   M A T C H   F O U N D��  ��  ��  # +��+ L   � �,, m   � ���
�� boovfals��  � -.- l     ��������  ��  ��  . /0/ l     ��12��  1 ' ! SUB-ROUTINE POPULATES THE TABLES   2 �33 B   S U B - R O U T I N E   P O P U L A T E S   T H E   T A B L E S0 454 i   # &676 I      ��������  0 populatetables populateTables��  ��  7 k     I88 9:9 r     ;<; n    =>= I    �������� 0 
parameters  ��  ��  >  f     < l     ?���? o      �~�~ ,0 parametersdictionary parametersDictionary��  �  : @A@ l   �}BC�}  B #  retrieve the stored defaults   C �DD :   r e t r i e v e   t h e   s t o r e d   d e f a u l t sA EFE r    GHG l   I�|�{I c    JKJ n   LML I   	 �zN�y�z 0 valueforkey_ valueForKey_N O�xO m   	 
PP �QQ ( a n n o t a t i o n s A n d V a l u e s�x  �y  M o    	�w�w ,0 parametersdictionary parametersDictionaryK m    �v
�v 
list�|  �{  H o      �u�u 0 
storeddata 
storedDataF RSR Z    BTU�t�sT =   VWV o    �r�r 0 	logstatus 	logStatusW m    �q
�q boovtrueU k    >XX YZY I   "�p[�o
�p .ascrcmnt****      � ****[ m    \\ �]] J * * * * * * *   R E A D I N G   S T O R E D   V A L U E S   * * * * * * *�o  Z ^�n^ Y   # >_�m`a�l_ I  1 9�kb�j
�k .ascrcmnt****      � ****b l  1 5c�i�hc n   1 5ded 4   2 5�gf
�g 
cobjf o   3 4�f�f 0 i  e l  1 2g�e�dg o   1 2�c�c 0 
storeddata 
storedData�e  �d  �i  �h  �j  �m 0 i  ` m   & '�b�b a l  ' ,h�a�`h I  ' ,�_i�^
�_ .corecnte****       ****i l  ' (j�]�\j o   ' (�[�[ 0 
storeddata 
storedData�]  �\  �^  �a  �`  �l  �n  �t  �s  S k�Zk n  C Ilml I   D I�Yn�X�Y $0 adddatatotable01 addDataToTable01n o�Wo o   D E�V�V 0 
storeddata 
storedData�W  �X  m  f   C D�Z  5 pqp l     �U�T�S�U  �T  �S  q rsr l     �Rtu�R  t   ADD DATA TO THE TABLE   u �vv ,   A D D   D A T A   T O   T H E   T A B L Es wxw i   ' *yzy I      �Q{�P�Q $0 adddatatotable01 addDataToTable01{ |�O| o      �N�N 0 	dataarray 	dataArray�O  �P  z k     �}} ~~ l     �M���M  � !  remove existing list items   � ��� 6   r e m o v e   e x i s t i n g   l i s t   i t e m s ��� O    ��� I    �L��K�L  0 removeobjects_ removeObjects_� ��J� n  	 ��� o    �I�I 0 content  � o   	 �H�H &0 tablecontroller01 tableController01�J  �K  � o     �G�G &0 tablecontroller01 tableController01� ��� l   �F���F  � &   add new items to the empty list   � ��� @   a d d   n e w   i t e m s   t o   t h e   e m p t y   l i s t� ��� r    ��� J    �E�E  � l     ��D�C� o      �B�B 0 paringslist paringsList�D  �C  � ��� Z   .���A�@� =   "��� o     �?�? 0 	logstatus 	logStatus� m     !�>
�> boovtrue� I  % *�=��<
�= .ascrcmnt****      � ****� m   % &�� ��� J * * * * * * *   C R E A T I N G   D I S P L A Y   L I S T   * * * * * * *�<  �A  �@  � ��� Y   / ���;���:� k   = ��� ��� s   = Z��� n   = A��� 4   > A�9�
�9 
cobj� o   ? @�8�8 0 i  � l  = >��7�6� o   = >�5�5 0 	dataarray 	dataArray�7  �6  � J      �� ��� o      �4�4 0 
thisstatus 
thisStatus� ��� o      �3�3 40 thisannotationidentifier thisAnnotationIdentifier� ��2� o      �1�1 *0 thisannotationvalue thisAnnotationValue�2  � ��� Z  [ p���0�/� =  [ b��� o   [ `�.�. 0 	logstatus 	logStatus� m   ` a�-
�- boovtrue� I  e l�,��+
�, .ascrcmnt****      � ****� b   e h��� m   e f�� ��� 4 t h i s A n n o t a t i o n I d e n t i f i e r :  � o   f g�*�* 40 thisannotationidentifier thisAnnotationIdentifier�+  �0  �/  � ��� l  q q�)���)  � � � swap the annotation identifier from the info.plist for the localized annotation name, i.e.: "com.apple.quicktime.author" = "Author"   � ���   s w a p   t h e   a n n o t a t i o n   i d e n t i f i e r   f r o m   t h e   i n f o . p l i s t   f o r   t h e   l o c a l i z e d   a n n o t a t i o n   n a m e ,   i . e . :   " c o m . a p p l e . q u i c k t i m e . a u t h o r "   =   " A u t h o r "� ��� r   q y��� l  q w��(�'� n  q w��� I   r w�&��%�& &0 nslocalizedstring NSLocalizedString� ��$� o   r s�#�# 40 thisannotationidentifier thisAnnotationIdentifier�$  �%  �  f   q r�(  �'  � o      �"�" (0 thisannotationname thisAnnotationName� ��� Z  z ����!� � =  z ���� o   z �� 0 	logstatus 	logStatus� m    ��
� boovtrue� I  � ����
� .ascrcmnt****      � ****� b   � ���� m   � ��� ��� ( t h i s A n n o t a t i o n N a m e :  � o   � ��� (0 thisannotationname thisAnnotationName�  �!  �   � ��� r   � ���� J   � ��� ��� o   � ��� (0 thisannotationname thisAnnotationName� ��� o   � ��� 40 thisannotationidentifier thisAnnotationIdentifier�  � l     ���� n      ���  ;   � �� l  � ����� o   � ��� 0 paringslist paringsList�  �  �  �  � ��� l  � �����  � � � NOTE: two sets of brackets are used here: the outermost indicates the item is a list (array), and the innermost indicates the item is a record (dictionary)   � ���8   N O T E :   t w o   s e t s   o f   b r a c k e t s   a r e   u s e d   h e r e :   t h e   o u t e r m o s t   i n d i c a t e s   t h e   i t e m   i s   a   l i s t   ( a r r a y ) ,   a n d   t h e   i n n e r m o s t   i n d i c a t e s   t h e   i t e m   i s   a   r e c o r d   ( d i c t i o n a r y )� ��� O  � ���� I   � ����� 0 addobjects_ addObjects_� ��� J   � ��� ��� K   � ��� ���� 0 selectionIndicator  � o   � ��� 0 
thisstatus 
thisStatus� �
���
 0 annotationNames  � o   � ��	�	 (0 thisannotationname thisAnnotationName� ���� 0 annotationValues  � o   � ��� *0 thisannotationvalue thisAnnotationValue�  �  �  �  � o   � ��� &0 tablecontroller01 tableController01�  �; 0 i  � m   2 3�� � l  3 8���� I  3 8��� 
� .corecnte****       ****� l  3 4������ o   3 4���� 0 	dataarray 	dataArray��  ��  �   �  �  �:  � ��� Z   � �������� =  � ���� o   � ����� 0 	logstatus 	logStatus� m   � ���
�� boovtrue� k   � ��� ��� I  � ��� ��
�� .ascrcmnt****      � ****  m   � � � ` * * * * * * *   P A I R I N G S   L I S T   T O   S T O R E   I N   M E M O R Y   * * * * * * *��  � �� Y   � ����� I  � �����
�� .ascrcmnt****      � **** l  � ����� n   � �	
	 4   � ���
�� 
cobj o   � ����� 0 i  
 l  � ����� o   � ����� 0 paringslist paringsList��  ��  ��  ��  ��  �� 0 i   m   � �����  l  � ����� I  � �����
�� .corecnte****       **** l  � ����� o   � ����� 0 paringslist paringsList��  ��  ��  ��  ��  ��  ��  ��  ��  � �� r   � � l  � ����� o   � ����� 0 paringslist paringsList��  ��   o      ���� &0 tabledatapairings tableDataPairings��  x  l     ��������  ��  ��    l      ����   &   ROUTINES FOR EDITING THE TABLE     � @   R O U T I N E S   F O R   E D I T I N G   T H E   T A B L E    i   + . I      ������ ,0 setcheckboxestotrue_ setCheckboxesToTrue_  ��  o      ���� 
0 sender  ��  ��   X      !��"! r    #$# m    ��
�� boovtrue$ n      %&% o    ���� 0 selectionIndicator  & o    ���� 0 
eachobject 
eachObject�� 0 
eachobject 
eachObject" l   
'����' n   
()( o    
���� 0 content  ) o    ���� &0 tablecontroller01 tableController01��  ��   *+* l     ��������  ��  ��  + ,-, i   / 2./. I      ��0���� .0 setcheckboxestofalse_ setCheckboxesToFalse_0 1��1 o      ���� 
0 sender  ��  ��  / X      2��32 r    454 m    ��
�� boovfals5 n      676 o    ���� 0 selectionIndicator  7 o    ���� 0 
eachobject 
eachObject�� 0 
eachobject 
eachObject3 l   
8����8 n   
9:9 o    
���� 0 content  : o    ���� &0 tablecontroller01 tableController01��  ��  - ;<; l     ��������  ��  ��  < =>= i   3 6?@? I      ��A���� "0 clearallvalues_ clearAllValues_A B��B o      ���� 
0 sender  ��  ��  @ X      C��DC r    EFE m    GG �HH  F n      IJI o    ���� 0 annotationValues  J o    ���� 0 
eachobject 
eachObject�� 0 
eachobject 
eachObjectD l   
K����K n   
LML o    
���� 0 content  M o    ���� &0 tablecontroller01 tableController01��  ��  > NON l     ��������  ��  ��  O PQP l     ��RS��  R 6 0 ROUTINE FOR CREATING THE ANNOTATIONS PLIST FILE   S �TT `   R O U T I N E   F O R   C R E A T I N G   T H E   A N N O T A T I O N S   P L I S T   F I L EQ UVU i   7 :WXW I      ��Y���� $0 makedefaultplist makeDefaultPlistY Z[Z o      ���� 0 plistfilepath plistFilePath[ \��\ o      ���� "0 storeddatapairs storedDataPairs��  ��  X k     p]] ^_^ r     `a` n    bcb I    �������� 0 init  ��  ��  c n    ded I    �������� 	0 alloc  ��  ��  e n    fgf o    ���� *0 nsmutabledictionary NSMutableDictionaryg m     ��
�� misccuraa o      ���� 0 theplist thePlist_ hih Y    _j��kl��j k    Zmm non s    9pqp n     rsr 4     ��t
�� 
cobjt o    ���� 0 i  s l   u����u o    ���� "0 storeddatapairs storedDataPairs��  ��  q J      vv wxw o      ���� *0 thisselectionstatus thisSelectionStatusx yzy o      ���� (0 thisannotationname thisAnnotationNamez {��{ o      ���� *0 thisannotationvalue thisAnnotationValue��  o |��| Z   : Z}~����} F   : G� =  : ?��� l  : =������ c   : =��� o   : ;���� *0 thisselectionstatus thisSelectionStatus� m   ; <��
�� 
bool��  ��  � m   = >��
�� boovtrue� l  B E������ >  B E��� o   B C���� *0 thisannotationvalue thisAnnotationValue� m   C D�� ���  ��  ��  ~ O  J V��� I   N U������� $0 setvalue_forkey_ setValue_forKey_� ��� o   O P���� *0 thisannotationvalue thisAnnotationValue� ���� o   P Q���� (0 thisannotationname thisAnnotationName��  ��  � o   J K���� 0 theplist thePlist��  ��  ��  �� 0 i  k m    ���� l l   ������ I   ���~
� .corecnte****       ****� l   ��}�|� o    �{�{ "0 storeddatapairs storedDataPairs�}  �|  �~  ��  ��  ��  i ��� O  ` l��� I   d k�z��y�z 20 writetofile_atomically_ writeToFile_atomically_� ��� o   e f�x�x 0 plistfilepath plistFilePath� ��w� m   f g�v
�v boovtrue�w  �y  � o   ` a�u�u 0 theplist thePlist� ��t� L   m p�� l  m o��s�r� 1   m o�q
�q 
rslt�s  �r  �t  V ��� l     �p�o�n�p  �o  �n  � ��� i   ; >��� I      �m��l�m &0 derivenewfilename deriveNewFilename� ��� o      �k�k *0 sourceitemposixpath sourceItemPOSIXPath� ��� o      �j�j $0 newnameextension newNameExtension� ��� o      �i�i (0 incrementseparator incrementSeparator� ��h� o      �g�g .0 targetfolderposixpath targetFolderPOSIXPath�h  �l  � k    -�� ��� l     �f���f  � i c A sub-routine used for deriving the name and path of a new file using the name of an existing file   � ��� �   A   s u b - r o u t i n e   u s e d   f o r   d e r i v i n g   t h e   n a m e   a n d   p a t h   o f   a   n e w   f i l e   u s i n g   t h e   n a m e   o f   a n   e x i s t i n g   f i l e� ��� l     �e���e  � � } Pass in file ref in POSIX format, the new name extension, an increment separator, and any target directory (in POSIX format)   � ��� �   P a s s   i n   f i l e   r e f   i n   P O S I X   f o r m a t ,   t h e   n e w   n a m e   e x t e n s i o n ,   a n   i n c r e m e n t   s e p a r a t o r ,   a n d   a n y   t a r g e t   d i r e c t o r y   ( i n   P O S I X   f o r m a t )� ��� l     �d���d  � v p Name and POSIX path for new file are returned. The name is incremented if a file exists in the target location.   � ��� �   N a m e   a n d   P O S I X   p a t h   f o r   n e w   f i l e   a r e   r e t u r n e d .   T h e   n a m e   i s   i n c r e m e n t e d   i f   a   f i l e   e x i s t s   i n   t h e   t a r g e t   l o c a t i o n .� ��� l     �c���c  � U O Pass a null string for the target directory to use the item's parent directory   � ��� �   P a s s   a   n u l l   s t r i n g   f o r   t h e   t a r g e t   d i r e c t o r y   t o   u s e   t h e   i t e m ' s   p a r e n t   d i r e c t o r y� ��� l     �b���b  � ] W Pass a null string for the new name extension to use the item's current name extension   � ��� �   P a s s   a   n u l l   s t r i n g   f o r   t h e   n e w   n a m e   e x t e n s i o n   t o   u s e   t h e   i t e m ' s   c u r r e n t   n a m e   e x t e n s i o n� ��� l     �a�`�_�a  �`  �_  � ��� Z     ���^�]� =    ��� o     �\�\ .0 targetfolderposixpath targetFolderPOSIXPath� m    �� ���  � k    �� ��� l   �[���[  � 7 1 get the path to parent folder of the source item   � ��� b   g e t   t h e   p a t h   t o   p a r e n t   f o l d e r   o f   t h e   s o u r c e   i t e m� ��Z� r    ��� l   ��Y�X� I   �W��V
�W .sysoexecTEXT���     TEXT� b    ��� m    �� ���  d i r n a m e  � l   
��U�T� l   
��S�R� n    
��� 1    
�Q
�Q 
strq� o    �P�P *0 sourceitemposixpath sourceItemPOSIXPath�S  �R  �U  �T  �V  �Y  �X  � o      �O�O .0 targetfolderposixpath targetFolderPOSIXPath�Z  �^  �]  � ��� Z   &���N�M� H    �� D    ��� o    �L�L .0 targetfolderposixpath targetFolderPOSIXPath� m    �� ���  /� r    "��� b     ��� o    �K�K .0 targetfolderposixpath targetFolderPOSIXPath� m    �� ���  /� o      �J�J .0 targetfolderposixpath targetFolderPOSIXPath�N  �M  � ��� l  ' '�I���I  � &   get the name of the source file   � ��� @   g e t   t h e   n a m e   o f   t h e   s o u r c e   f i l e� ��� r   ' 2��� l  ' 0��H�G� I  ' 0�F��E
�F .sysoexecTEXT���     TEXT� b   ' ,��� m   ' (   �  b a s e n a m e  � l  ( +�D�C n   ( + 1   ) +�B
�B 
strq l  ( )�A�@ o   ( )�?�? *0 sourceitemposixpath sourceItemPOSIXPath�A  �@  �D  �C  �E  �H  �G  � l     �>�= o      �<�<  0 sourceitemname sourceItemName�>  �=  �  l  3 3�;	
�;  	 9 3 get the name extension (if any) of the source item   
 � f   g e t   t h e   n a m e   e x t e n s i o n   ( i f   a n y )   o f   t h e   s o u r c e   i t e m  r   3 : l  3 8�:�9 I  3 8�8�7
�8 .sysonfo4asfe        file o   3 4�6�6 *0 sourceitemposixpath sourceItemPOSIXPath�7  �:  �9   l     �5�4 o      �3�3  0 fileinforecord fileInfoRecord�5  �4    r   ; @ l  ; >�2�1 l  ; >�0�/ n   ; > 1   < >�.
�. 
nmxt o   ; <�-�-  0 fileinforecord fileInfoRecord�0  �/  �2  �1   l     �,�+ o      �*�* 20 sourceitemnameextension sourceItemNameExtension�,  �+    Z   A `�)  =  A D!"! l  A B#�(�'# o   A B�&�& 20 sourceitemnameextension sourceItemNameExtension�(  �'  " m   B C�%
�% 
msng k   G Z$$ %&% r   G J'(' m   G H)) �**  ( l     +�$�#+ o      �"�" 20 sourceitemnameextension sourceItemNameExtension�$  �#  & ,�!, Z   K Z-.� /- =  K N010 o   K L�� $0 newnameextension newNameExtension1 m   L M22 �33  . r   Q T454 m   Q R66 �77  5 o      �� (0 extensionseparator extensionSeparator�   / r   W Z898 m   W X:: �;;  .9 o      �� (0 extensionseparator extensionSeparator�!  �)    r   ] `<=< m   ] ^>> �??  .= o      �� (0 extensionseparator extensionSeparator @A@ l  a a�BC�  B + % get the base name of the source item   C �DD J   g e t   t h e   b a s e   n a m e   o f   t h e   s o u r c e   i t e mA EFE Z   a �GH�IG =  a dJKJ l  a bL��L o   a b�� 20 sourceitemnameextension sourceItemNameExtension�  �  K m   b cMM �NN  H r   g jOPO o   g h��  0 sourceitemname sourceItemNameP l     Q��Q o      �� (0 sourceitembasename sourceItemBaseName�  �  �  I r   m �RSR n   m �TUT 7  n ��VW
� 
ctxtV m   t v�� W d   w �XX l  x Y��Y [   x Z[Z l  x }\��\ n   x }]^] 1   y }�
� 
leng^ o   x y�� 20 sourceitemnameextension sourceItemNameExtension�  �  [ m   } ~�
�
 �  �  U o   m n�	�	  0 sourceitemname sourceItemNameS l     _��_ o      �� (0 sourceitembasename sourceItemBaseName�  �  F `a` l  � ��bc�  b $  generate the target file name   c �dd <   g e n e r a t e   t h e   t a r g e t   f i l e   n a m ea efe Z   � �gh�ig =  � �jkj l  � �l��l o   � ��� $0 newnameextension newNameExtension�  �  k m   � �mm �nn  h k   � �oo pqp r   � �rsr o   � �� �   0 sourceitemname sourceItemNames o      ���� 0 
targetname 
targetNameq t��t r   � �uvu o   � ����� 20 sourceitemnameextension sourceItemNameExtensionv o      ���� "0 targetextension targetExtension��  �  i k   � �ww xyx r   � �z{z o   � ����� $0 newnameextension newNameExtension{ o      ���� "0 targetextension targetExtensiony |��| r   � �}~} c   � �� l  � ������� b   � ���� b   � ���� l  � ������� o   � ����� (0 sourceitembasename sourceItemBaseName��  ��  � o   � ����� (0 extensionseparator extensionSeparator� o   � ����� "0 targetextension targetExtension��  ��  � m   � ���
�� 
utxt~ o      ���� 0 
targetname 
targetName��  f ��� l  � ���������  ��  ��  � ��� l  � �������  � [ U check to see if a file named the same as the source file exists in the target folder   � ��� �   c h e c k   t o   s e e   i f   a   f i l e   n a m e d   t h e   s a m e   a s   t h e   s o u r c e   f i l e   e x i s t s   i n   t h e   t a r g e t   f o l d e r� ��� r   � ���� b   � ���� o   � ����� .0 targetfolderposixpath targetFolderPOSIXPath� o   � ����� 0 
targetname 
targetName� o      ���� *0 targetitemposixpath targetItemPOSIXPath� ��� r   � ���� c   � ���� l  � ������� I  � ������
�� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� m   � ��� ��� 
 [   - a  � l  � ������� n   � ���� 1   � ���
�� 
strq� o   � ����� *0 targetitemposixpath targetItemPOSIXPath��  ��  � m   � ��� ��� B   ]   & &   e c h o   ' t r u e '   | |   e c h o   ' f a l s e '��  ��  ��  � m   � ���
�� 
bool� l     ������ o      ���� *0 fileexistencestatus fileExistenceStatus��  ��  � ���� Z   �-������ =  � ���� o   � ����� *0 fileexistencestatus fileExistenceStatus� m   � ���
�� boovtrue� k   ��� ��� r   � ���� m   � ����� � l     ������ o      ���� 0 nameincrement nameIncrement��  ��  � ���� T   ��� k   ��� ��� l  � �������  � E ? create a new target path with the target item name incremented   � ��� ~   c r e a t e   a   n e w   t a r g e t   p a t h   w i t h   t h e   t a r g e t   i t e m   n a m e   i n c r e m e n t e d� ��� r   � ���� c   � ���� l  � ������� b   � ���� b   � ���� b   � ���� b   � ���� l  � ������� o   � ����� (0 sourceitembasename sourceItemBaseName��  ��  � o   � ����� (0 incrementseparator incrementSeparator� l  � ������� c   � ���� o   � ����� 0 nameincrement nameIncrement� m   � ���
�� 
utxt��  ��  � o   � ����� (0 extensionseparator extensionSeparator� o   � ����� "0 targetextension targetExtension��  ��  � m   � ���
�� 
utxt� l     ������ o      ���� 0 newname newName��  ��  � ��� r   � ���� b   � ���� o   � ����� .0 targetfolderposixpath targetFolderPOSIXPath� o   � ����� 0 newname newName� o      ���� *0 targetitemposixpath targetItemPOSIXPath� ��� r   � ��� c   � ���� l  � ������� I  � ������
�� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� m   � ��� ��� 
 [   - a  � l  � ������� n   � ���� 1   � ���
�� 
strq� o   � ����� *0 targetitemposixpath targetItemPOSIXPath��  ��  � m   � ��� ��� B   ]   & &   e c h o   ' t r u e '   | |   e c h o   ' f a l s e '��  ��  ��  � m   � ���
�� 
bool� l     ������ o      ���� *0 fileexistencestatus fileExistenceStatus��  ��  � ���� Z  ������ = ��� o  ���� *0 fileexistencestatus fileExistenceStatus� m  ��
�� boovtrue� r  ��� [  
��� l ������ o  ���� 0 nameincrement nameIncrement��  ��  � m  	���� � l     ������ o      ���� 0 nameincrement nameIncrement��  ��  ��  � k  �� ��� r  ��� l ������ b  ��� o  ���� .0 targetfolderposixpath targetFolderPOSIXPath� o  ���� 0 newname newName��  ��  � l     ������ o      ���� "0 targetposixpath targetPOSIXpath��  ��  � ���� L     J    o  ���� 0 newname newName �� o  ���� "0 targetposixpath targetPOSIXpath��  ��  ��  ��  ��  � k  "-  r  "'	 l "%
����
 b  "% o  "#���� .0 targetfolderposixpath targetFolderPOSIXPath o  #$���� 0 
targetname 
targetName��  ��  	 l     ���� o      ���� "0 targetposixpath targetPOSIXpath��  ��   �� L  (- J  (,  o  ()���� 0 
targetname 
targetName �� o  )*���� "0 targetposixpath targetPOSIXpath��  ��  ��  �  l     ��������  ��  ��    l     ����     LOCALIZATION ROUTINE    � *   L O C A L I Z A T I O N   R O U T I N E �� i   ? B I      ������ &0 nslocalizedstring NSLocalizedString �� 1      ��
�� 
kMsg��  ��   L        c     !"! n    #$# n   %&% I    ��'���� H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_' ()( 1    ��
�� 
kMsg) *+* m    ��
�� 
msng+ ,��, m    ��
�� 
msng��  ��  & I    �������� 
0 bundle  ��  ��  $  f     " m    ��
�� 
utxt��  ��       �-.�  - �~�~ :0 create_annotated_movie_file Create_Annotated_Movie_File. �} */0�} :0 create_annotated_movie_file Create_Annotated_Movie_File/ 11 �|�{2
�| misccura
�{ 
pcls2 �33  A M B u n d l e A c t i o n0 �z4�y�x5�w6789:;<=>?@A�z  4 �v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g
�v 
pare�u &0 tablecontroller01 tableController01�t &0 tabledatapairings tableDataPairings�s 0 	logstatus 	logStatus�r @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�q 
0 opened  �p $0 updateparameters updateParameters�o ,0 returnvalueinparings returnValueInParings�n  0 populatetables populateTables�m $0 adddatatotable01 addDataToTable01�l ,0 setcheckboxestotrue_ setCheckboxesToTrue_�k .0 setcheckboxestofalse_ setCheckboxesToFalse_�j "0 clearallvalues_ clearAllValues_�i $0 makedefaultplist makeDefaultPlist�h &0 derivenewfilename deriveNewFilename�g &0 nslocalizedstring NSLocalizedString�y  
�x 
msng5 �f�e�f  �e  
�w boovfals6 �d a�c�bBC�a�d @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�c �`D�` D  �_�^�]�_ 	0 input  �^ 0 anaction anAction�] 0 errorref errorRef�b  B �\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�\ 	0 input  �[ 0 anaction anAction�Z 0 errorref errorRef�Y 0 
alerttitle 
alertTitle�X 0 these_items  �W ,0 parametersdictionary parametersDictionary�V 0 alertmessage alertMessage�U &0 deletesourcefiles deleteSourceFiles�T .0 usesamefolderassource useSameFolderAsSource�S .0 destinationfolderpath destinationFolderPath�R .0 folderexistencestatus folderExistenceStatus�Q "0 storeddatapairs storedDataPairs�P 0 plistfilename plistFileName�O 0 plistfilepath plistFilePath�N 0 output_list  �M 0 nameextension nameExtension�L 0 i  �K ,0 sourcemediaposixpath sourceMediaPOSIXPath�J 0 
targetname 
targetName�I *0 finalmediaposixpath finalMediaPOSIXPath�H 0 commandstring commandString�G 0 error_message  �F 0 error_number  C 9 u�E�D ��C�B ��A � � � � � ��@(�?-�>�=@T^`�<�;�:�9��8���7�6���5�4��3�2�16Wp��0E�/��.�-�,�
�E 
list�D 0 
parameters  �C 0 valueforkey_ valueForKey_
�B 
bool
�A 
TEXT
�@ .sysoexecTEXT���     TEXT
�? 
strq�>  �=  
�< afdmtemp
�; .earsffdralis        afdr
�: 
psxp�9 $0 makedefaultplist makeDefaultPlist�8 &0 nslocalizedstring NSLocalizedString
�7 .corecnte****       ****
�6 
cobj�5 �4 &0 derivenewfilename deriveNewFilename
�3 
spac
�2 .ascrcmnt****      � ****
�1 .sysodelanull��� ��� nmbr�0 0 error_message  E �+�*�)
�+ 
errn�* 0 error_number  �)  �/��
�. .sysobeepnull��� ��� long
�- 
mesS
�, .sysodisAaleR        TEXT�a�c�E�O��&E�O)j+ E�O��k+ �&e  ��k+ �&E�O��k+ �&E�Y hO��k+ �&E�O��k+ �&E�O��k+ �&E�O�� 
��%E�Y hO�f  G 3�%j E�Oa �a ,%a %j �&E�O�f  	)jhY hW X  a j E�Y hO�a k+ �&E�Oa j a %E�Oa j a ,�%E�O)��l+ f  )a k+ E�O)j)a k+ Y hOjvE�Oa  E�O-k�j !kh �a "] /E^ O�e  /)] �a #a $a %+ &E[a "k/EQ^ Z[a "l/EQ^ ZY *)] �a '�a %+ &E[a "k/EQ^ Z[a "l/EQ^ ZOa (_ )%�a ,%_ )%] a ,%_ )%] a ,%�&E^ Ob  e  a *] %j +Y hO] j Okj ,Oa -�a ,%�&E^ O] j O�e  a .] a ,%�&E^ O] j Y hOb  e  a /] %j +Y hO] �&�6F[OY��Ob  e  a 0�%j +Y hO�W =X 1 2] a 3 (�a 4  
] E�Y hO*j 5O�a 6] l 7Y hOa 87 �(��'�&FG�%�( 
0 opened  �'  �&  F  G �$�$  0 populatetables populateTables�% )j+  8 �#��"�!HI� �# $0 updateparameters updateParameters�"  �!  H ������������� 0 
table_data  � &0 tabledataasarrays tableDataAsArrays� 20 emptyselectionerrorflag emptySelectionErrorFlag� 0 i  � 0 this_record  � *0 thisannotationvalue thisAnnotationValue� (0 thisselectionvalue thisSelectionValue� (0 thisannotationname thisAnnotationName� 40 thisannotationidentifier thisAnnotationIdentifier� 0 row_data  � 0 alert_title  � 0 alert_message  I ������������
�	���Y���������
� .ascrcmnt****      � ****� 0 
parameters  � $0 setvalue_forkey_ setValue_forKey_� 0 content  
� .corecnte****       ****
� 
cobj� 0 annotationValues  
� 
TEXT�  �
  �	 0 selectionIndicator  
� 
bool� 0 annotationNames  � ,0 returnvalueinparings returnValueInParings
� 
spac� � &0 nslocalizedstring NSLocalizedString� b  e  
�j Y hO)j+ f�l+ Ob  �,E�OjvE�OeE�O �k�j kh ��/E�O ��,�&E�W 
X 
 �E�O��,�&E�O�e  fE�Y hO��,E�O)b  �l+ E�O���mvE�Ob  e  a �_ �_ �a v%j Y hO��6F[OY��O�e  D)j+ ea l+ O)a k+ E�O)a k+ E�O)j+ �a l+ O)j+ �a l+ Y hO)j+ �a l+ 9 ���� JK��� ,0 returnvalueinparings returnValueInParings� ��L�� L  ������ $0 thisarrayofpairs thisArrayOfPairs�� 0 
keytomatch 
keyToMatch�   J ������������ $0 thisarrayofpairs thisArrayOfPairs�� 0 
keytomatch 
keyToMatch�� 0 i  �� 0 thiskey thisKey�� 0 	thisvalue 	thisValueK 
�������� ����)
�� .ascrcmnt****      � ****
�� .corecnte****       ****
�� 
cobj
�� 
spac
�� 
TEXT�� �b  e  �%j Y hO lk�j kh ��/E[�k/EQ�Z[�l/EQ�ZOb  e  �%�%�Ƥmv%j Y hO��&��&  b  e  �%j Y hO�Y h[OY��Ob  e  
�j Y hOf: ��7����MN����  0 populatetables populateTables��  ��  M �������� ,0 parametersdictionary parametersDictionary�� 0 
storeddata 
storedData�� 0 i  N 	��P����\���������� 0 
parameters  �� 0 valueforkey_ valueForKey_
�� 
list
�� .ascrcmnt****      � ****
�� .corecnte****       ****
�� 
cobj�� $0 adddatatotable01 addDataToTable01�� J)j+  E�O��k+ �&E�Ob  e  &�j O k�j kh ��/j [OY��Y hO)�k+ ; ��z����OP���� $0 adddatatotable01 addDataToTable01�� ��Q�� Q  ���� 0 	dataarray 	dataArray��  O ���������������� 0 	dataarray 	dataArray�� 0 paringslist paringsList�� 0 i  �� 0 
thisstatus 
thisStatus�� 40 thisannotationidentifier thisAnnotationIdentifier�� *0 thisannotationvalue thisAnnotationValue�� (0 thisannotationname thisAnnotationNameP ��������������������������� 0 content  ��  0 removeobjects_ removeObjects_
�� .ascrcmnt****      � ****
�� .corecnte****       ****
�� 
cobj�� &0 nslocalizedstring NSLocalizedString�� 0 selectionIndicator  �� 0 annotationNames  �� 0 annotationValues  �� �� 0 addobjects_ addObjects_�� �b   *b  �,k+ UOjvE�Ob  e  
�j Y hO �k�j kh ��/E[�k/EQ�Z[�l/EQ�Z[�m/EQ�ZOb  e  �%j Y hO)�k+ E�Ob  e  �%j Y hO��lv�6FOb   *����kvk+ U[OY��Ob  e  &�j O k�j kh ��/j [OY��Y hO�Ec  < ������RS���� ,0 setcheckboxestotrue_ setCheckboxesToTrue_�� ��T�� T  ���� 
0 sender  ��  R ������ 
0 sender  �� 0 
eachobject 
eachObjectS ������������ 0 content  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 selectionIndicator  �� ! b  �,[��l kh e��,F[OY��= ��/����UV���� .0 setcheckboxestofalse_ setCheckboxesToFalse_�� ��W�� W  ���� 
0 sender  ��  U ������ 
0 sender  �� 0 
eachobject 
eachObjectV ������������ 0 content  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 selectionIndicator  �� ! b  �,[��l kh f��,F[OY��> ��@����XY���� "0 clearallvalues_ clearAllValues_�� ��Z�� Z  ���� 
0 sender  ��  X ������ 
0 sender  �� 0 
eachobject 
eachObjectY ��������G���� 0 content  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 annotationValues  �� ! b  �,[��l kh ��,F[OY��? ��X����[\���� $0 makedefaultplist makeDefaultPlist�� ��]�� ]  ������ 0 plistfilepath plistFilePath�� "0 storeddatapairs storedDataPairs��  [ ���������������� 0 plistfilepath plistFilePath�� "0 storeddatapairs storedDataPairs�� 0 theplist thePlist�� 0 i  �� *0 thisselectionstatus thisSelectionStatus�� (0 thisannotationname thisAnnotationName�� *0 thisannotationvalue thisAnnotationValue\ ���������������������
�� misccura�� *0 nsmutabledictionary NSMutableDictionary�� 	0 alloc  �� 0 init  
�� .corecnte****       ****
�� 
cobj
�� 
bool�� $0 setvalue_forkey_ setValue_forKey_�� 20 writetofile_atomically_ writeToFile_atomically_
�� 
rslt�� q��,j+ j+ E�O Pk�j kh ��/E[�k/EQ�Z[�l/EQ�Z[�m/EQ�ZO��&e 	 ���& � 	*��l+ UY h[OY��O� 	*�el+ 	UO�E@ �������^_���� &0 derivenewfilename deriveNewFilename�� ��`�� `  ���������� *0 sourceitemposixpath sourceItemPOSIXPath�� $0 newnameextension newNameExtension�� (0 incrementseparator incrementSeparator�� .0 targetfolderposixpath targetFolderPOSIXPath��  ^ ����������~�}�|�{�z�y�x�w�v�u�t�� *0 sourceitemposixpath sourceItemPOSIXPath�� $0 newnameextension newNameExtension�� (0 incrementseparator incrementSeparator�� .0 targetfolderposixpath targetFolderPOSIXPath�  0 sourceitemname sourceItemName�~  0 fileinforecord fileInfoRecord�} 20 sourceitemnameextension sourceItemNameExtension�| (0 extensionseparator extensionSeparator�{ (0 sourceitembasename sourceItemBaseName�z 0 
targetname 
targetName�y "0 targetextension targetExtension�x *0 targetitemposixpath targetItemPOSIXPath�w *0 fileexistencestatus fileExistenceStatus�v 0 nameincrement nameIncrement�u 0 newname newName�t "0 targetposixpath targetPOSIXpath_ ���s�r�� �q�p�o)26:>M�n�mm�l���k��
�s 
strq
�r .sysoexecTEXT���     TEXT
�q .sysonfo4asfe        file
�p 
nmxt
�o 
msng
�n 
ctxt
�m 
leng
�l 
utxt
�k 
bool��.��  ��,%j E�Y hO�� 
��%E�Y hO��,%j E�O�j E�O��,E�O��  �E�O��  �E�Y �E�Y �E�O��  �E�Y �[a \[Zk\Z�a ,l'2E�O�a   �E�O�E�Y �E�O��%�%a &E�O��%E�Oa ��,%a %j a &E�O�e  \kE�O RhZ��%�a &%�%�%a &E�O��%E�Oa ��,%a %j a &E�O�e  
�kE�Y ��%E�O��lv[OY��Y ��%E�O��lvA �j�i�hab�g�j &0 nslocalizedstring NSLocalizedString�i �fc�f c  �e
�e 
kMsg�h  a �d
�d 
kMsgb �c�b�a�`�c 
0 bundle  
�b 
msng�a H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
�` 
utxt�g )j+  ���m+ �& ascr  ��ޭ