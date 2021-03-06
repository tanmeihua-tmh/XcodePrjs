FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Encode_Media.applescript     � 	 	 2   E n c o d e _ M e d i a . a p p l e s c r i p t   
  
 l     ��  ��      Encode Media     �      E n c o d e   M e d i a      l     ��������  ��  ��        l     ��  ��    V P Created by Sal Soghoian on 09/06/2010. sal@apple.com, sal@mac.com, 434-242-0535     �   �   C r e a t e d   b y   S a l   S o g h o i a n   o n   0 9 / 0 6 / 2 0 1 0 .   s a l @ a p p l e . c o m ,   s a l @ m a c . c o m ,   4 3 4 - 2 4 2 - 0 5 3 5      l     ��  ��    5 / Copyright (c) Apple, Inc. All rights reserved.     �   ^   C o p y r i g h t   ( c )   A p p l e ,   I n c .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l      ��   ��   �� ENGINEERING NOTES
This Automator action is designed to provide users a simpler way to encode video files to the standard formats and resolutions used in Apple's devices.

The action provides a visual interface to the avconvert command line utility introduced in Mac OS X 7 (Lion).

This action is written using the AppleScript-Objective C Xcode template.

The presets used as command line arguments are determined by the user's selection of the format and encoding strategy popup menus in the action view. 
The indexes of the popup menus are combined to create a two-digit value that can be used to located the appropriate preset and name extension found in their corresponding property lists.

Certain description string in the user interface change depending on the selection of the two popup menus. These string are in the Localizable.strings file and can be edited without having to alter the NIB file.
      � ! !   E N G I N E E R I N G   N O T E S 
 T h i s   A u t o m a t o r   a c t i o n   i s   d e s i g n e d   t o   p r o v i d e   u s e r s   a   s i m p l e r   w a y   t o   e n c o d e   v i d e o   f i l e s   t o   t h e   s t a n d a r d   f o r m a t s   a n d   r e s o l u t i o n s   u s e d   i n   A p p l e ' s   d e v i c e s . 
 
 T h e   a c t i o n   p r o v i d e s   a   v i s u a l   i n t e r f a c e   t o   t h e   a v c o n v e r t   c o m m a n d   l i n e   u t i l i t y   i n t r o d u c e d   i n   M a c   O S   X   7   ( L i o n ) . 
 
 T h i s   a c t i o n   i s   w r i t t e n   u s i n g   t h e   A p p l e S c r i p t - O b j e c t i v e   C   X c o d e   t e m p l a t e . 
 
 T h e   p r e s e t s   u s e d   a s   c o m m a n d   l i n e   a r g u m e n t s   a r e   d e t e r m i n e d   b y   t h e   u s e r ' s   s e l e c t i o n   o f   t h e   f o r m a t   a n d   e n c o d i n g   s t r a t e g y   p o p u p   m e n u s   i n   t h e   a c t i o n   v i e w .   
 T h e   i n d e x e s   o f   t h e   p o p u p   m e n u s   a r e   c o m b i n e d   t o   c r e a t e   a   t w o - d i g i t   v a l u e   t h a t   c a n   b e   u s e d   t o   l o c a t e d   t h e   a p p r o p r i a t e   p r e s e t   a n d   n a m e   e x t e n s i o n   f o u n d   i n   t h e i r   c o r r e s p o n d i n g   p r o p e r t y   l i s t s . 
 
 C e r t a i n   d e s c r i p t i o n   s t r i n g   i n   t h e   u s e r   i n t e r f a c e   c h a n g e   d e p e n d i n g   o n   t h e   s e l e c t i o n   o f   t h e   t w o   p o p u p   m e n u s .   T h e s e   s t r i n g   a r e   i n   t h e   L o c a l i z a b l e . s t r i n g s   f i l e   a n d   c a n   b e   e d i t e d   w i t h o u t   h a v i n g   t o   a l t e r   t h e   N I B   f i l e . 
   " # " l     ��������  ��  ��   #  $�� $ h     �� %�� 0 encode_media Encode_Media % k       & &  ' ( ' j     �� )
�� 
pare ) 4     �� *
�� 
pcls * m     + + � , ,  A M B u n d l e A c t i o n (  - . - l     ��������  ��  ��   .  / 0 / l     �� 1 2��   1 H B PROPERTIES CONTAINING THE APPROPRIATE PRESETS AND NAME EXTENSIONS    2 � 3 3 �   P R O P E R T I E S   C O N T A I N I N G   T H E   A P P R O P R I A T E   P R E S E T S   A N D   N A M E   E X T E N S I O N S 0  4 5 4 l      6 7 8 6 j   	 �� 9�� &0 settingindicators settingIndicators 9 J   	  : :  ; < ; m   	 
 = = � > >  0 0 <  ? @ ? m   
  A A � B B  0 1 @  C D C m     E E � F F  1 0 D  G H G m     I I � J J  1 1 H  K L K m     M M � N N  2 0 L  O P O m     Q Q � R R  2 1 P  S T S m     U U � V V  3 0 T  W X W m     Y Y � Z Z  3 1 X  [ \ [ m     ] ] � ^ ^  4 0 \  _�� _ m     ` ` � a a  4 1��   7 � � corresponds to: {480p compatible, 480p quality, 720p compatible, 720p quality, 1080p compatible, 1080p quality, audio only compatible, audio only quality, pro res compatible, prp res quality}    8 � b b�   c o r r e s p o n d s   t o :   { 4 8 0 p   c o m p a t i b l e ,   4 8 0 p   q u a l i t y ,   7 2 0 p   c o m p a t i b l e ,   7 2 0 p   q u a l i t y ,   1 0 8 0 p   c o m p a t i b l e ,   1 0 8 0 p   q u a l i t y ,   a u d i o   o n l y   c o m p a t i b l e ,   a u d i o   o n l y   q u a l i t y ,   p r o   r e s   c o m p a t i b l e ,   p r p   r e s   q u a l i t y } 5  c d c l     �� e f��   e � � note the settings for 1080p compatible, and quality are the same, as are the settings for audio only compatible, audio only quality:    f � g g
   n o t e   t h e   s e t t i n g s   f o r   1 0 8 0 p   c o m p a t i b l e ,   a n d   q u a l i t y   a r e   t h e   s a m e ,   a s   a r e   t h e   s e t t i n g s   f o r   a u d i o   o n l y   c o m p a t i b l e ,   a u d i o   o n l y   q u a l i t y : d  h i h j    6�� j�� 0 exportpresets exportPresets j J    5 k k  l m l m     n n � o o $ P r e s e t A p p l e M 4 V i P o d m  p q p m     r r � s s ( P r e s e t A p p l e M 4 V 4 8 0 p S D q  t u t m     v v � w w * P r e s e t A p p l e M 4 V A p p l e T V u  x y x m    ! z z � { { ( P r e s e t A p p l e M 4 V 7 2 0 p H D y  | } | m   ! $ ~ ~ �    P r e s e t 1 9 2 0 x 1 0 8 0 }  � � � m   $ ' � � � � �  P r e s e t 1 9 2 0 x 1 0 8 0 �  � � � m   ' * � � � � �  P r e s e t A p p l e M 4 A �  � � � m   * - � � � � �  P r e s e t A p p l e M 4 A �  � � � m   - 0 � � � � � 0 P r e s e t A p p l e P r o R e s 4 2 2 L P C M �  ��� � m   0 3 � � � � � 0 P r e s e t A p p l e P r o R e s 4 2 2 L P C M��   i  � � � j   7 X�� ���  0 fileextensions fileExtensions � J   7 W � �  � � � m   7 : � � � � �  m 4 v �  � � � m   : = � � � � �  m 4 v �  � � � m   = @ � � � � �  m 4 v �  � � � m   @ C � � � � �  m 4 v �  � � � m   C F � � � � �  m o v �  � � � m   F I � � � � �  m o v �  � � � m   I L � � � � �  m 4 a �  � � � m   L O � � � � �  m 4 a �  � � � m   O R � � � � �  m o v �  ��� � m   R U � � � � �  m o v��   �  � � � l     ��������  ��  ��   �  � � � j   Y [�� ��� 0 	logstatus 	logStatus � m   Y Z��
�� boovtrue �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � � � UPON EXECUTION, THESE PROPERTIES HAVE VALUES THAT ARE REFERENCES TO THE UI ELEMENTS THAT THEY ARE LINKED TO USING COCOA BINDINGS.    � � � �   U P O N   E X E C U T I O N ,   T H E S E   P R O P E R T I E S   H A V E   V A L U E S   T H A T   A R E   R E F E R E N C E S   T O   T H E   U I   E L E M E N T S   T H A T   T H E Y   A R E   L I N K E D   T O   U S I N G   C O C O A   B I N D I N G S . �  � � � j   \ `�� ��� 0 labelformat labelFormat � m   \ _��
�� 
msng �  � � � j   a e�� ��� "0 labelresolution labelResolution � m   a d��
�� 
msng �  � � � j   f j�� ��� 0 labeldatarate labelDataRate � m   f i��
�� 
msng �  � � � j   k o�� ��� (0 labelcompatibility labelCompatibility � m   k n��
�� 
msng �  � � � l     ��������  ��  ��   �  � � � j   p t�� ��� 0 formatpopup formatPopup � m   p s��
�� 
msng �  � � � j   u y�� ��� 0 encodepopup encodePopup � m   u x��
�� 
msng �  � � � l     ��������  ��  ��   �  � � � i   z } � � � I      �� ����� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_ �  � � � o      ���� 	0 input   �  � � � o      ���� 0 anaction anAction �  ��� � o      ���� 0 errorref errorRef��  ��   � Q     � � � � k   � � �  � � � Z    � ����� � =   
 � � � o    ���� 0 	logstatus 	logStatus � m    	��
�� boovtrue � I   �� ���
�� .ascrcmnt****      � **** � m     � � � � � $ E N C O D E A C T I O N   B E G I N��  ��  ��   �  � � � Z    * � ��� � � >    � � � n     � � � m    ��
�� 
pcls � o    ���� 	0 input   � m    ��
�� 
list � l   $   r    $ c    " o     ���� 	0 input   m     !��
�� 
list o      ���� 0 these_items   4 . get list of input items from the passed input    � \   g e t   l i s t   o f   i n p u t   i t e m s   f r o m   t h e   p a s s e d   i n p u t��   � r   ' *	 o   ' (���� 	0 input  	 o      ���� 0 these_items   � 

 l  + +��������  ��  ��    Z  + D���� =  + 2 o   + 0���� 0 	logstatus 	logStatus m   0 1��
�� boovtrue I  5 @����
�� .ascrcmnt****      � **** b   5 < m   5 6 � 4 E N C O D E A C T I O N   i n p u t   c o u n t :   l  6 ;���� I  6 ;����
�� .corecnte****       **** o   6 7���� 0 these_items  ��  ��  ��  ��  ��  ��    l  E E��������  ��  ��    l  E E����   I C RETRIEVE THE VALUE OF THE PARAMETERS THAT ARE BOUND TO UI CONTROLS    � �   R E T R I E V E   T H E   V A L U E   O F   T H E   P A R A M E T E R S   T H A T   A R E   B O U N D   T O   U I   C O N T R O L S  !  r   E L"#" n  E J$%$ I   F J�������� 0 
parameters  ��  ��  %  f   E F# o      ���� 0 
parameters  ! &'& r   M W()( c   M U*+* n  M S,-, I   N S��.���� 0 valueforkey_ valueForKey_. /��/ m   N O00 �11 " d e l e t e S o u r c e F i l e s��  ��  - o   M N���� 0 
parameters  + m   S T��
�� 
bool) o      ���� &0 deletesourcefiles deleteSourceFiles' 232 r   X b454 c   X `676 n  X ^898 I   Y ^��:���� 0 valueforkey_ valueForKey_: ;��; m   Y Z<< �== * u s e S a m e F o l d e r A s S o u r c e��  ��  9 o   X Y���� 0 
parameters  7 m   ^ _��
�� 
bool5 o      ���� .0 usesamefolderassource useSameFolderAsSource3 >?> r   c m@A@ c   c kBCB n  c iDED I   d i��F���� 0 valueforkey_ valueForKey_F G��G m   d eHH �II   e n c o d e r I n d i c a t o r��  ��  E o   c d���� 0 
parameters  C m   i j��
�� 
longA o      ���� $0 encoderindicator encoderIndicator? JKJ r   n xLML c   n vNON n  n tPQP I   o t��R���� 0 valueforkey_ valueForKey_R S��S m   o pTT �UU 2 e n c o d i n g S t r a t e g y I n d i c a t o r��  ��  Q o   n o���� 0 
parameters  O m   t u��
�� 
longM o      ���� 60 encodingstrategyindicator encodingStrategyIndicatorK VWV r   y �XYX c   y �Z[Z n  y \]\ I   z ��^���� 0 valueforkey_ valueForKey_^ _��_ m   z {`` �aa " d e s t i n a t i o n F o l d e r��  ��  ] o   y z���� 0 
parameters  [ m    ��
� 
TEXTY o      �~�~ .0 destinationfolderpath destinationFolderPathW bcb Z  � �de�}�|d H   � �ff D   � �ghg o   � ��{�{ .0 destinationfolderpath destinationFolderPathh m   � �ii �jj  /e r   � �klk b   � �mnm o   � ��z�z .0 destinationfolderpath destinationFolderPathn m   � �oo �pp  /l o      �y�y .0 destinationfolderpath destinationFolderPath�}  �|  c qrq l  � ��x�w�v�x  �w  �v  r sts Z   � �uv�u�tu =  � �wxw o   � ��s�s 0 	logstatus 	logStatusx m   � ��r
�r boovtruev k   � �yy z{z I  � ��q|�p
�q .ascrcmnt****      � ****| b   � �}~} m   � � ��� @ E N C O D E A C T I O N   d e l e t e S o u r c e F i l e s :  ~ o   � ��o�o &0 deletesourcefiles deleteSourceFiles�p  { ��� I  � ��n��m
�n .ascrcmnt****      � ****� b   � ���� m   � ��� ��� H E N C O D E A C T I O N   u s e S a m e F o l d e r A s S o u r c e :  � o   � ��l�l .0 usesamefolderassource useSameFolderAsSource�m  � ��� I  � ��k��j
�k .ascrcmnt****      � ****� b   � ���� m   � ��� ��� > E N C O D E A C T I O N   e n c o d e r I n d i c a t o r :  � o   � ��i�i $0 encoderindicator encoderIndicator�j  � ��� I  � ��h��g
�h .ascrcmnt****      � ****� b   � ���� m   � ��� ��� P E N C O D E A C T I O N   e n c o d i n g S t r a t e g y I n d i c a t o r :  � o   � ��f�f 60 encodingstrategyindicator encodingStrategyIndicator�g  � ��e� I  � ��d��c
�d .ascrcmnt****      � ****� b   � ���� m   � ��� ��� H E N C O D E A C T I O N   d e s t i n a t i o n F o l d e r P a t h :  � o   � ��b�b .0 destinationfolderpath destinationFolderPath�c  �e  �u  �t  t ��� l  � ��a�`�_�a  �`  �_  � ��� Z   � ���^�]� =  � ���� o   � ��\�\ .0 usesamefolderassource useSameFolderAsSource� m   � ��[
�[ boovfals� k   ��� ��� l  � ��Z���Z  � S M CHECK TO SEE IF THE CHOSEN DESTINATION FOLDER EXISTS ON THE CURRENT SYSTEM.    � ��� �   C H E C K   T O   S E E   I F   T H E   C H O S E N   D E S T I N A T I O N   F O L D E R   E X I S T S   O N   T H E   C U R R E N T   S Y S T E M .  � ��� l  � ��Y���Y  � � � THIS COULD BE AN ISSUE IF A WORKFLOW CONTAINING THIS ACTION IS SAVED AND THEN RUN AT A LATER DATE OR AFTER CHANGES HAVE BEEN MADE TO THE SYSTEM.   � ���"   T H I S   C O U L D   B E   A N   I S S U E   I F   A   W O R K F L O W   C O N T A I N I N G   T H I S   A C T I O N   I S   S A V E D   A N D   T H E N   R U N   A T   A   L A T E R   D A T E   O R   A F T E R   C H A N G E S   H A V E   B E E N   M A D E   T O   T H E   S Y S T E M .� ��X� Q   ����� k   ��� ��� l  � ����� r   � ���� l  � ���W�V� I  � ��U��T
�U .sysoexecTEXT���     TEXT� b   � ���� m   � ��� ��� 
 e c h o  � o   � ��S�S .0 destinationfolderpath destinationFolderPath�T  �W  �V  � o      �R�R .0 destinationfolderpath destinationFolderPath� ; 5 stringByExpandingTildeInPath_(destinationFolderPath)   � ��� j   s t r i n g B y E x p a n d i n g T i l d e I n P a t h _ ( d e s t i n a t i o n F o l d e r P a t h )� ��� l  � ��Q���Q  �   CHECK FOR EXISTENCE   � ��� (   C H E C K   F O R   E X I S T E N C E� ��� l  � ��P���P  � � � set the folderExistenceStatus to (do shell script "[ -d " & (quoted form of destinationFolderPath) & " ] && echo 'true' || echo 'false'") as boolean   � ���*   s e t   t h e   f o l d e r E x i s t e n c e S t a t u s   t o   ( d o   s h e l l   s c r i p t   " [   - d   "   &   ( q u o t e d   f o r m   o f   d e s t i n a t i o n F o l d e r P a t h )   &   "   ]   & &   e c h o   ' t r u e '   | |   e c h o   ' f a l s e ' " )   a s   b o o l e a n� ��� O  � ���� r   � ���� l  � ���O�N� I  � ��M��L
�M .coredoexbool        obj � o   � ��K�K .0 destinationfolderpath destinationFolderPath�L  �O  �N  � l     ��J�I� o      �H�H .0 folderexistencestatus folderExistenceStatus�J  �I  � m   � ����                                                                                  sevs  alis    �  Zin12C33                   �"�H+     �System Events.app                                               0���Y        ����  	                CoreServices    �#Gv      ���       �   ~   }  9Zin12C33:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    Z i n 1 2 C 3 3  -System/Library/CoreServices/System Events.app   / ��  � ��G� Z  ����F�E� =  � ��� o   � ��D�D .0 folderexistencestatus folderExistenceStatus� m   � ��C
�C boovfals� R  �B�A�@
�B .ascrerr ****      � ****�A  �@  �F  �E  �G  � R      �?�>�=
�? .ascrerr ****      � ****�>  �=  � k  �� ��� l �<���<  � 9 3 IF THE FOLDER IS NOT EXISTING THEN USE THE DESKTOP   � ��� f   I F   T H E   F O L D E R   I S   N O T   E X I S T I N G   T H E N   U S E   T H E   D E S K T O P� ��;� r  ��� l ��:�9� I �8��7
�8 .sysoexecTEXT���     TEXT� m  �� ���  e c h o   ~ / D e s k t o p�7  �:  �9  � o      �6�6 .0 destinationfolderpath destinationFolderPath�;  �X  �^  �]  � ��� l !!�5�4�3�5  �4  �3  � ��� l !!�2���2  � l f DERIVE THE APPROPRIATE SETTINGS AND NAME EXTENSTION BASED ON THE SELECTION INDEXES OF THE POPUP MENUS   � ��� �   D E R I V E   T H E   A P P R O P R I A T E   S E T T I N G S   A N D   N A M E   E X T E N S T I O N   B A S E D   O N   T H E   S E L E C T I O N   I N D E X E S   O F   T H E   P O P U P   M E N U S� ��� r  !*��� b  !(��� l !$��1�0� c  !$��� o  !"�/�/ $0 encoderindicator encoderIndicator� m  "#�.
�. 
TEXT�1  �0  � l $'��-�,� c  $'��� o  $%�+�+ 60 encodingstrategyindicator encodingStrategyIndicator� m  %&�*
�* 
TEXT�-  �,  � l     ��)�(� o      �'�' $0 settingindicator settingIndicator�)  �(  � ��� Y  +z��&� �%� k  =u  r  =I n  =G 4  BG�$
�$ 
cobj o  EF�#�# 0 i   l =B	�"�!	 o  =B� �  &0 settingindicators settingIndicators�"  �!   o      �� 0 thisindicator thisIndicator 
�
 Z  Ju�� = JM o  JK�� 0 thisindicator thisIndicator l KL�� o  KL�� $0 settingindicator settingIndicator�  �   k  Pq  r  PS o  PQ�� 0 i   l     �� o      �� 0 settingindex settingIndex�  �    r  T` n  T^ 4  Y^�
� 
cobj o  \]�� 0 settingindex settingIndex l TY�� o  TY��  0 fileextensions fileExtensions�  �   l     �� o      �� 0 nameextension nameExtension�  �     r  ao!"! n  ak#$# 4  fk�%
� 
cobj% o  ij�
�
 0 settingindex settingIndex$ l af&�	�& o  af�� 0 exportpresets exportPresets�	  �  " l     '��' o      �� 0 exportpreset exportPreset�  �    (�(  S  pq�  �  �  �  �& 0 i  � m  ./��   l /8)�� ) I /8��*��
�� .corecnte****       ***** o  /4���� &0 settingindicators settingIndicators��  �  �   �%  � +,+ l {{��������  ��  ��  , -.- Z  {�/0����/ = {�121 o  {����� 0 	logstatus 	logStatus2 m  ����
�� boovtrue0 k  ��33 454 I ����6��
�� .ascrcmnt****      � ****6 b  ��787 m  ��99 �:: > E N C O D E A C T I O N   s e t t i n g I n d i c a t o r :  8 o  ������ $0 settingindicator settingIndicator��  5 ;<; I ����=��
�� .ascrcmnt****      � ****= b  ��>?> m  ��@@ �AA 8 E N C O D E A C T I O N   n a m e E x t e n s i o n :  ? o  ������ 0 nameextension nameExtension��  < B��B I ����C��
�� .ascrcmnt****      � ****C b  ��DED m  ��FF �GG 6 E N C O D E A C T I O N   e x p o r t P r e s e t :  E o  ������ 0 exportpreset exportPreset��  ��  ��  ��  . HIH l ����������  ��  ��  I JKJ l ����LM��  L   PROCESS THE PASSED FILES   M �NN 2   P R O C E S S   T H E   P A S S E D   F I L E SK OPO r  ��QRQ J  ������  R o      ���� 0 output_list  P STS Y  ��U��VW��U k  ��XX YZY r  ��[\[ n  ��]^] 4  ����_
�� 
cobj_ o  ������ 0 i  ^ o  ������ 0 these_items  \ l     `����` o      ���� ,0 sourcemediaposixpath sourceMediaPOSIXPath��  ��  Z aba l ����������  ��  ��  b cdc l ����ef��  e Y S DERIVE THE PATH TO THE ENCODED FILE IN THE SAME DIRECTORY AS THE SOURCE MEDIA FILE   f �gg �   D E R I V E   T H E   P A T H   T O   T H E   E N C O D E D   F I L E   I N   T H E   S A M E   D I R E C T O R Y   A S   T H E   S O U R C E   M E D I A   F I L Ed hih Z  �$jk��lj = ��mnm o  ������ .0 usesamefolderassource useSameFolderAsSourcen m  ����
�� boovtruek s  ��opo n ��qrq I  ����s���� &0 derivenewfilename deriveNewFilenames tut o  ������ ,0 sourcemediaposixpath sourceMediaPOSIXPathu vwv o  ������ 0 nameextension nameExtensionw xyx m  ��zz �{{  -y |��| m  ��}} �~~  ��  ��  r  f  ��p J       ��� o      ���� 0 
targetname 
targetName� ���� o      ���� *0 finalmediaposixpath finalMediaPOSIXPath��  ��  l s  �$��� n ���� I  �������� &0 derivenewfilename deriveNewFilename� ��� o  � ���� ,0 sourcemediaposixpath sourceMediaPOSIXPath� ��� o   ���� 0 nameextension nameExtension� ��� m  �� ���  -� ���� o  ���� .0 destinationfolderpath destinationFolderPath��  ��  �  f  ��� J      �� ��� o      ���� 0 
targetname 
targetName� ���� o      ���� *0 finalmediaposixpath finalMediaPOSIXPath��  i ��� l %%��������  ��  ��  � ��� l %%������  �   ENCODE THE MEDIA FILE   � ��� ,   E N C O D E   T H E   M E D I A   F I L E� ��� r  %0��� I %,�����
�� .sysoexecTEXT���     TEXT� m  %(�� ���  w h i c h   a v c o n v e r t��  � l     ������ o      ���� &0 commandbundlepath commandBundlePath��  ��  � ��� r  1Z��� c  1V��� l 1T������ b  1T��� b  1L��� b  1H��� b  1@��� b  1<��� b  18��� o  14���� &0 commandbundlepath commandBundlePath� m  47�� ��� $   - - q u i e t   - - p r e s e t  � o  8;���� 0 exportpreset exportPreset� m  <?�� ���    - - s o u r c e  � n  @G��� 1  CG��
�� 
strq� o  @C���� ,0 sourcemediaposixpath sourceMediaPOSIXPath� m  HK�� ���      - - o u t p u t  � n  LS��� 1  OS��
�� 
strq� o  LO���� *0 finalmediaposixpath finalMediaPOSIXPath��  ��  � m  TU��
�� 
TEXT� l     ������ o      ���� 0 commandstring commandString��  ��  � ��� Z [t������� = [b��� o  [`���� 0 	logstatus 	logStatus� m  `a��
�� boovtrue� I ep�����
�� .ascrcmnt****      � ****� b  el��� m  eh�� ��� 8 E N C O D E A C T I O N   c o m m a n d S t r i n g :  � o  hk���� 0 commandstring commandString��  ��  ��  � ��� t  u���� I }������
�� .sysoexecTEXT���     TEXT� o  }����� 0 commandstring commandString��  � l u|������ ]  u|��� m  ux���� � m  x{���� <��  ��  � ��� l ����������  ��  ��  � ��� Z  ��������� = ����� o  ������ &0 deletesourcefiles deleteSourceFiles� m  ����
�� boovtrue� k  ���� ��� l ��������  �   DELETE THE SOURCE FILE   � ��� .   D E L E T E   T H E   S O U R C E   F I L E� ��� r  ����� c  ����� l �������� b  ����� m  ���� ���  r m   - f  � l �������� l �������� n  ����� 1  ����
�� 
strq� o  ������ ,0 sourcemediaposixpath sourceMediaPOSIXPath��  ��  ��  ��  ��  ��  � m  ����
�� 
TEXT� l     ������ o      ���� 0 commandstring commandString��  ��  � ���� I �������
�� .sysoexecTEXT���     TEXT� o  ������ 0 commandstring commandString��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � ? 9 ADD THE PATH TO THE NEW ENCODED FILE TO THE OUTPUT ARRAY   � ��� r   A D D   T H E   P A T H   T O   T H E   N E W   E N C O D E D   F I L E   T O   T H E   O U T P U T   A R R A Y� ��� Z ��������� = ��   o  ������ 0 	logstatus 	logStatus m  ����
�� boovtrue� I ������
�� .ascrcmnt****      � **** b  �� m  �� � H E N C O D E A C T I O N   e n c o d e d M e d i a P O S I X p a t h :   o  ������ *0 finalmediaposixpath finalMediaPOSIXPath��  ��  ��  � � r  ��	 c  ��

 o  ���~�~ *0 finalmediaposixpath finalMediaPOSIXPath m  ���}
�} 
TEXT	 l     �|�{ n        ;  �� l ���z�y o  ���x�x 0 output_list  �z  �y  �|  �{  �  �� 0 i  V m  ���w�w W l ���v�u I ���t�s
�t .corecnte****       **** o  ���r�r 0 these_items  �s  �v  �u  ��  T  l ���q�p�o�q  �p  �o    Z ���n�m = �� o  ���l�l 0 	logstatus 	logStatus m  ���k
�k boovtrue I ���j�i
�j .ascrcmnt****      � **** b  �� m  �� � * E N C O D E A C T I O N   O U T P U T :   o  ���h�h 0 output_list  �i  �n  �m   �g L  ��   o  ���f�f 0 output_list  �g   � R      �e!"
�e .ascrerr ****      � ****! o      �d�d 0 error_message  " �c#�b
�c 
errn# o      �a�a 0 error_number  �b   � Z  �$%�`�_$ > �&'& l ��(�^�]( o  ���\�\ 0 error_number  �^  �]  ' m  � �[�[��% I �Z)*
�Z .sysodlogaskr        TEXT) o  �Y�Y 0 error_message  * �X+,
�X 
btns+ J  
-- .�W. m  
// �00  C a n c e l�W  , �V1�U
�V 
dflt1 m  �T�T �U  �`  �_   � 232 l     �S�R�Q�S  �R  �Q  3 454 l      �P67�P  6 ? 9 HANDLER CALLED BEFORE ACTION VIEW APPEARS IN A WORKFLOW    7 �88 r   H A N D L E R   C A L L E D   B E F O R E   A C T I O N   V I E W   A P P E A R S   I N   A   W O R K F L O W  5 9:9 i   ~ �;<; I      �O�N�M�O 
0 opened  �N  �M  < I     �L�K�J�L "0 setlabelcontent setLabelContent�K  �J  : =>= l     �I�H�G�I  �H  �G  > ?@? l     �FAB�F  A L F A SUB-ROUTINE (ACTION) BOUND TO CONTROLS (OUTLETS) IN THE ACTION VIEW   B �CC �   A   S U B - R O U T I N E   ( A C T I O N )   B O U N D   T O   C O N T R O L S   ( O U T L E T S )   I N   T H E   A C T I O N   V I E W@ DED i   � �FGF I      �EH�D�E (0 changedescription_ changeDescription_H I�CI o      �B�B 
0 sender  �C  �D  G I     �A�@�?�A "0 setlabelcontent setLabelContent�@  �?  E JKJ l     �>�=�<�>  �=  �<  K LML i   � �NON I      �;�:�9�; "0 setlabelcontent setLabelContent�:  �9  O k     �PP QRQ l     �8ST�8  S 6 0 ROUTINE FOR SETTING THE VALUES IN THE ACTION UI   T �UU `   R O U T I N E   F O R   S E T T I N G   T H E   V A L U E S   I N   T H E   A C T I O N   U IR VWV l     �7XY�7  X   get the current settings   Y �ZZ 2   g e t   t h e   c u r r e n t   s e t t i n g sW [\[ l     �6]^�6  ] O I set the currentFormat to (formatPopup's titleOfSelectedItem()) as string   ^ �__ �   s e t   t h e   c u r r e n t F o r m a t   t o   ( f o r m a t P o p u p ' s   t i t l e O f S e l e c t e d I t e m ( ) )   a s   s t r i n g\ `a` r     bcb c     ded l    	f�5�4f n    	ghg I    	�3�2�1�3 *0 indexofselecteditem indexOfSelectedItem�2  �1  h o     �0�0 0 formatpopup formatPopup�5  �4  e m   	 
�/
�/ 
TEXTc l     i�.�-i o      �,�, 0 currentformat currentFormat�.  �-  a jkj l   �+lm�+  l U O set the currentEncodeMethod to (encodePopup's titleOfSelectedItem()) as string   m �nn �   s e t   t h e   c u r r e n t E n c o d e M e t h o d   t o   ( e n c o d e P o p u p ' s   t i t l e O f S e l e c t e d I t e m ( ) )   a s   s t r i n gk opo r    qrq c    sts l   u�*�)u n   vwv I    �(�'�&�( *0 indexofselecteditem indexOfSelectedItem�'  �&  w o    �%�% 0 encodepopup encodePopup�*  �)  t m    �$
�$ 
TEXTr l     x�#�"x o      �!�! *0 currentencodemethod currentEncodeMethod�#  �"  p yzy l   � {|�   { D > derive the localization key by combining the two menu indexes   | �}} |   d e r i v e   t h e   l o c a l i z a t i o n   k e y   b y   c o m b i n i n g   t h e   t w o   m e n u   i n d e x e sz ~~ l   !���� r    !��� b    ��� o    �� 0 currentformat currentFormat� o    �� *0 currentencodemethod currentEncodeMethod� l     ���� o      �� "0 localizationkey localizationKey�  �  � ' !> "00 01 10 11 20 21 30 31 40 41"   � ��� B >   " 0 0   0 1   1 0   1 1   2 0   2 1   3 0   3 1   4 0   4 1 " ��� l  " "����  �  �  � ��� Z   " P����� E  " ,��� J   " *�� ��� m   " #�� ���  2 0� ��� m   # $�� ���  2 1� ��� m   $ %�� ���  3 0� ��� m   % &�� ���  3 1� ��� m   & '�� ���  4 0� ��� m   ' (�� ���  4 1�  � o   * +�� "0 localizationkey localizationKey� O  / >��� I   7 =���� 0 setenabled_ setEnabled_� ��� m   8 9�
� boovfals�  �  � o   / 4�� 0 encodepopup encodePopup�  � O  A P��� I   I O���� 0 setenabled_ setEnabled_� ��� m   J K�
� boovtrue�  �  � o   A F�� 0 encodepopup encodePopup� ��� l  Q Q�
�	��
  �	  �  � ��� l  Q Q����  �   COMPATIBILITY   � ���    C O M P A T I B I L I T Y� ��� l  Q Q����  � ! derive the localization key   � ��� 6 d e r i v e   t h e   l o c a l i z a t i o n   k e y� ��� r   Q X��� c   Q V��� l  Q T���� b   Q T��� o   Q R�� "0 localizationkey localizationKey� m   R S�� ���  c o m p a t i b i l i t y�  �  � m   T U�
� 
TEXT� o      �� 0 thiskey thisKey� ��� l  Y Y� ���   � + % lookup the corresponding description   � ��� J   l o o k u p   t h e   c o r r e s p o n d i n g   d e s c r i p t i o n� ��� r   Y a��� l  Y _������ n  Y _��� I   Z _������� &0 nslocalizedstring NSLocalizedString� ���� o   Z [���� 0 thiskey thisKey��  ��  �  f   Y Z��  ��  � o      ���� *0 thislocalizedstring thisLocalizedString� ��� l  b b������  � $  display the localized message   � ��� <   d i s p l a y   t h e   l o c a l i z e d   m e s s a g e� ��� O  b q��� I   j p������� "0 setstringvalue_ setStringValue_� ���� o   k l���� *0 thislocalizedstring thisLocalizedString��  ��  � o   b g���� (0 labelcompatibility labelCompatibility� ��� l  r r������  �   FORMAT   � ���    F O R M A T� ��� l  r r������  � ! derive the localization key   � ��� 6 d e r i v e   t h e   l o c a l i z a t i o n   k e y� ��� r   r y��� c   r w��� l  r u������ b   r u��� o   r s���� "0 localizationkey localizationKey� m   s t�� ���  f o r m a t��  ��  � m   u v��
�� 
TEXT� o      ���� 0 thiskey thisKey� ��� l  z z������  � + % lookup the corresponding description   � ��� J   l o o k u p   t h e   c o r r e s p o n d i n g   d e s c r i p t i o n� ��� r   z ���� l  z � ����  n  z � I   { ������� &0 nslocalizedstring NSLocalizedString �� o   { |���� 0 thiskey thisKey��  ��    f   z {��  ��  � o      ���� *0 thislocalizedstring thisLocalizedString�  l  � �����   $  display the localized message    �		 <   d i s p l a y   t h e   l o c a l i z e d   m e s s a g e 

 O  � � I   � ������� "0 setstringvalue_ setStringValue_ �� o   � ����� *0 thislocalizedstring thisLocalizedString��  ��   o   � ����� 0 labelformat labelFormat  l  � �����     RESOLUTION    �    R E S O L U T I O N  l  � �����   ! derive the localization key    � 6 d e r i v e   t h e   l o c a l i z a t i o n   k e y  r   � � c   � � l  � � ����  b   � �!"! o   � ����� "0 localizationkey localizationKey" m   � �## �$$  r e s o l u t i o n��  ��   m   � ���
�� 
TEXT o      ���� 0 thiskey thisKey %&% l  � ���'(��  ' + % lookup the corresponding description   ( �)) J   l o o k u p   t h e   c o r r e s p o n d i n g   d e s c r i p t i o n& *+* r   � �,-, l  � �.����. n  � �/0/ I   � ���1���� &0 nslocalizedstring NSLocalizedString1 2��2 o   � ����� 0 thiskey thisKey��  ��  0  f   � ���  ��  - o      ���� *0 thislocalizedstring thisLocalizedString+ 343 l  � ���56��  5 $  display the localized message   6 �77 <   d i s p l a y   t h e   l o c a l i z e d   m e s s a g e4 898 O  � �:;: I   � ���<���� "0 setstringvalue_ setStringValue_< =��= o   � ����� *0 thislocalizedstring thisLocalizedString��  ��  ; o   � ����� "0 labelresolution labelResolution9 >?> l  � ���@A��  @  
 DATA RATE   A �BB    D A T A   R A T E? CDC l  � ���EF��  E ! derive the localization key   F �GG 6 d e r i v e   t h e   l o c a l i z a t i o n   k e yD HIH r   � �JKJ c   � �LML l  � �N����N b   � �OPO o   � ����� "0 localizationkey localizationKeyP m   � �QQ �RR  d a t a r a t e��  ��  M m   � ���
�� 
TEXTK o      ���� 0 thiskey thisKeyI STS l  � ���UV��  U + % lookup the corresponding description   V �WW J   l o o k u p   t h e   c o r r e s p o n d i n g   d e s c r i p t i o nT XYX r   � �Z[Z l  � �\����\ n  � �]^] I   � ���_���� &0 nslocalizedstring NSLocalizedString_ `��` o   � ����� 0 thiskey thisKey��  ��  ^  f   � ���  ��  [ o      ���� *0 thislocalizedstring thisLocalizedStringY aba l  � ���cd��  c $  display the localized message   d �ee <   d i s p l a y   t h e   l o c a l i z e d   m e s s a g eb fgf O  � �hih I   � ���j���� "0 setstringvalue_ setStringValue_j k��k o   � ����� *0 thislocalizedstring thisLocalizedString��  ��  i o   � ����� 0 labeldatarate labelDataRateg lml l  � ���������  ��  ��  m n��n l  � ���������  ��  ��  ��  M opo l     ��������  ��  ��  p qrq l     ��st��  s   LOCALIZATION ROUTINE   t �uu *   L O C A L I Z A T I O N   R O U T I N Er vwv i   � �xyx I      ��z���� &0 nslocalizedstring NSLocalizedStringz {��{ 1      ��
�� 
kMsg��  ��  y L     || c     }~} n    � n   ��� I    ������� H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_� ��� 1    ��
�� 
kMsg� ��� m    ��
�� 
msng� ���� m    ��
�� 
msng��  ��  � I    �������� 
0 bundle  ��  ��  �  f     ~ m    ��
�� 
utxtw ��� l     ��������  ��  ��  � ���� i   � ���� I      ������� &0 derivenewfilename deriveNewFilename� ��� o      ���� *0 sourceitemposixpath sourceItemPOSIXPath� ��� o      ���� $0 newnameextension newNameExtension� ��� o      ���� (0 incrementseparator incrementSeparator� ���� o      ���� .0 targetfolderposixpath targetFolderPOSIXPath��  ��  � k    -�� ��� l     ������  � i c A sub-routine used for deriving the name and path of a new file using the name of an existing file   � ��� �   A   s u b - r o u t i n e   u s e d   f o r   d e r i v i n g   t h e   n a m e   a n d   p a t h   o f   a   n e w   f i l e   u s i n g   t h e   n a m e   o f   a n   e x i s t i n g   f i l e� ��� l     ������  � � } Pass in file ref in POSIX format, the new name extension, an increment separator, and any target directory (in POSIX format)   � ��� �   P a s s   i n   f i l e   r e f   i n   P O S I X   f o r m a t ,   t h e   n e w   n a m e   e x t e n s i o n ,   a n   i n c r e m e n t   s e p a r a t o r ,   a n d   a n y   t a r g e t   d i r e c t o r y   ( i n   P O S I X   f o r m a t )� ��� l     ������  � v p Name and POSIX path for new file are returned. The name is incremented if a file exists in the target location.   � ��� �   N a m e   a n d   P O S I X   p a t h   f o r   n e w   f i l e   a r e   r e t u r n e d .   T h e   n a m e   i s   i n c r e m e n t e d   i f   a   f i l e   e x i s t s   i n   t h e   t a r g e t   l o c a t i o n .� ��� l     ������  � U O Pass a null string for the target directory to use the item's parent directory   � ��� �   P a s s   a   n u l l   s t r i n g   f o r   t h e   t a r g e t   d i r e c t o r y   t o   u s e   t h e   i t e m ' s   p a r e n t   d i r e c t o r y� ��� l     ������  � ] W Pass a null string for the new name extension to use the item's current name extension   � ��� �   P a s s   a   n u l l   s t r i n g   f o r   t h e   n e w   n a m e   e x t e n s i o n   t o   u s e   t h e   i t e m ' s   c u r r e n t   n a m e   e x t e n s i o n� ��� l     ��������  ��  ��  � ��� Z     ������� =    ��� o     ���� .0 targetfolderposixpath targetFolderPOSIXPath� m    �� ���  � k    �� ��� l   ������  � 7 1 get the path to parent folder of the source item   � ��� b   g e t   t h e   p a t h   t o   p a r e n t   f o l d e r   o f   t h e   s o u r c e   i t e m� ���� r    ��� l   ������ I   ����
�� .sysoexecTEXT���     TEXT� b    ��� m    �� ���  d i r n a m e  � l   
��~�}� l   
��|�{� n    
��� 1    
�z
�z 
strq� o    �y�y *0 sourceitemposixpath sourceItemPOSIXPath�|  �{  �~  �}  �  ��  ��  � o      �x�x .0 targetfolderposixpath targetFolderPOSIXPath��  ��  ��  � ��� Z   &���w�v� H    �� D    ��� o    �u�u .0 targetfolderposixpath targetFolderPOSIXPath� m    �� ���  /� r    "��� b     ��� o    �t�t .0 targetfolderposixpath targetFolderPOSIXPath� m    �� ���  /� o      �s�s .0 targetfolderposixpath targetFolderPOSIXPath�w  �v  � ��� l  ' '�r���r  � &   get the name of the source file   � ��� @   g e t   t h e   n a m e   o f   t h e   s o u r c e   f i l e� ��� r   ' 2��� l  ' 0��q�p� I  ' 0�o��n
�o .sysoexecTEXT���     TEXT� b   ' ,��� m   ' (�� ���  b a s e n a m e  � l  ( +��m�l� n   ( +��� 1   ) +�k
�k 
strq� l  ( )��j�i� o   ( )�h�h *0 sourceitemposixpath sourceItemPOSIXPath�j  �i  �m  �l  �n  �q  �p  � l     ��g�f� o      �e�e  0 sourceitemname sourceItemName�g  �f  � ��� l  3 3�d���d  � 9 3 get the name extension (if any) of the source item   � ��� f   g e t   t h e   n a m e   e x t e n s i o n   ( i f   a n y )   o f   t h e   s o u r c e   i t e m� ��� r   3 :��� l  3 8��c�b� I  3 8�a��`
�a .sysonfo4asfe        file� o   3 4�_�_ *0 sourceitemposixpath sourceItemPOSIXPath�`  �c  �b  � l     ��^�]� o      �\�\  0 fileinforecord fileInfoRecord�^  �]  � ��� r   ; @��� l  ; > �[�Z  l  ; >�Y�X n   ; > 1   < >�W
�W 
nmxt o   ; <�V�V  0 fileinforecord fileInfoRecord�Y  �X  �[  �Z  � l     �U�T o      �S�S 20 sourceitemnameextension sourceItemNameExtension�U  �T  �  Z   A `�R	 =  A D

 l  A B�Q�P o   A B�O�O 20 sourceitemnameextension sourceItemNameExtension�Q  �P   m   B C�N
�N 
msng k   G Z  r   G J m   G H �   l     �M�L o      �K�K 20 sourceitemnameextension sourceItemNameExtension�M  �L   �J Z   K Z�I =  K N o   K L�H�H $0 newnameextension newNameExtension m   L M �   r   Q T m   Q R �     o      �G�G (0 extensionseparator extensionSeparator�I   r   W Z!"! m   W X## �$$  ." o      �F�F (0 extensionseparator extensionSeparator�J  �R  	 r   ] `%&% m   ] ^'' �((  .& o      �E�E (0 extensionseparator extensionSeparator )*) l  a a�D+,�D  + + % get the base name of the source item   , �-- J   g e t   t h e   b a s e   n a m e   o f   t h e   s o u r c e   i t e m* ./. Z   a �01�C20 =  a d343 l  a b5�B�A5 o   a b�@�@ 20 sourceitemnameextension sourceItemNameExtension�B  �A  4 m   b c66 �77  1 r   g j898 o   g h�?�?  0 sourceitemname sourceItemName9 l     :�>�=: o      �<�< (0 sourceitembasename sourceItemBaseName�>  �=  �C  2 r   m �;<; n   m �=>= 7  n ��;?@
�; 
ctxt? m   t v�:�: @ d   w �AA l  x B�9�8B [   x CDC l  x }E�7�6E n   x }FGF 1   y }�5
�5 
lengG o   x y�4�4 20 sourceitemnameextension sourceItemNameExtension�7  �6  D m   } ~�3�3 �9  �8  > o   m n�2�2  0 sourceitemname sourceItemName< l     H�1�0H o      �/�/ (0 sourceitembasename sourceItemBaseName�1  �0  / IJI l  � ��.KL�.  K $  generate the target file name   L �MM <   g e n e r a t e   t h e   t a r g e t   f i l e   n a m eJ NON Z   � �PQ�-RP =  � �STS l  � �U�,�+U o   � ��*�* $0 newnameextension newNameExtension�,  �+  T m   � �VV �WW  Q k   � �XX YZY r   � �[\[ o   � ��)�)  0 sourceitemname sourceItemName\ o      �(�( 0 
targetname 
targetNameZ ]�'] r   � �^_^ o   � ��&�& 20 sourceitemnameextension sourceItemNameExtension_ o      �%�% "0 targetextension targetExtension�'  �-  R k   � �`` aba r   � �cdc o   � ��$�$ $0 newnameextension newNameExtensiond o      �#�# "0 targetextension targetExtensionb e�"e r   � �fgf c   � �hih l  � �j�!� j b   � �klk b   � �mnm l  � �o��o o   � ��� (0 sourceitembasename sourceItemBaseName�  �  n o   � ��� (0 extensionseparator extensionSeparatorl o   � ��� "0 targetextension targetExtension�!  �   i m   � ��
� 
utxtg o      �� 0 
targetname 
targetName�"  O pqp l  � �����  �  �  q rsr l  � ��tu�  t [ U check to see if a file named the same as the source file exists in the target folder   u �vv �   c h e c k   t o   s e e   i f   a   f i l e   n a m e d   t h e   s a m e   a s   t h e   s o u r c e   f i l e   e x i s t s   i n   t h e   t a r g e t   f o l d e rs wxw r   � �yzy b   � �{|{ o   � ��� .0 targetfolderposixpath targetFolderPOSIXPath| o   � ��� 0 
targetname 
targetNamez o      �� *0 targetitemposixpath targetItemPOSIXPathx }~} r   � �� c   � ���� l  � ����� I  � ����
� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� m   � ��� ��� 
 [   - a  � l  � ����� n   � ���� 1   � ��
� 
strq� o   � ��
�
 *0 targetitemposixpath targetItemPOSIXPath�  �  � m   � ��� ��� B   ]   & &   e c h o   ' t r u e '   | |   e c h o   ' f a l s e '�  �  �  � m   � ��	
�	 
bool� l     ���� o      �� *0 fileexistencestatus fileExistenceStatus�  �  ~ ��� Z   �-����� =  � ���� o   � ��� *0 fileexistencestatus fileExistenceStatus� m   � ��
� boovtrue� k   ��� ��� r   � ���� m   � ��� � l     �� ��� o      ���� 0 nameincrement nameIncrement�   ��  � ���� T   ��� k   ��� ��� l  � �������  � E ? create a new target path with the target item name incremented   � ��� ~   c r e a t e   a   n e w   t a r g e t   p a t h   w i t h   t h e   t a r g e t   i t e m   n a m e   i n c r e m e n t e d� ��� r   � ���� c   � ���� l  � ������� b   � ���� b   � ���� b   � ���� b   � ���� l  � ������� o   � ����� (0 sourceitembasename sourceItemBaseName��  ��  � o   � ����� (0 incrementseparator incrementSeparator� l  � ������� c   � ���� o   � ����� 0 nameincrement nameIncrement� m   � ���
�� 
utxt��  ��  � o   � ����� (0 extensionseparator extensionSeparator� o   � ����� "0 targetextension targetExtension��  ��  � m   � ���
�� 
utxt� l     ������ o      ���� 0 newname newName��  ��  � ��� r   � ���� b   � ���� o   � ����� .0 targetfolderposixpath targetFolderPOSIXPath� o   � ����� 0 newname newName� o      ���� *0 targetitemposixpath targetItemPOSIXPath� ��� r   � ��� c   � ���� l  � ������� I  � ������
�� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� m   � ��� ��� 
 [   - a  � l  � ������� n   � ���� 1   � ���
�� 
strq� o   � ����� *0 targetitemposixpath targetItemPOSIXPath��  ��  � m   � ��� ��� B   ]   & &   e c h o   ' t r u e '   | |   e c h o   ' f a l s e '��  ��  ��  � m   � ���
�� 
bool� l     ������ o      ���� *0 fileexistencestatus fileExistenceStatus��  ��  � ���� Z  ������ = ��� o  ���� *0 fileexistencestatus fileExistenceStatus� m  ��
�� boovtrue� r  ��� [  
��� l ������ o  ���� 0 nameincrement nameIncrement��  ��  � m  	���� � l     ������ o      ���� 0 nameincrement nameIncrement��  ��  ��  � k  �� ��� r  ��� l ������ b  ��� o  ���� .0 targetfolderposixpath targetFolderPOSIXPath� o  ���� 0 newname newName��  ��  � l     ������ o      ���� "0 targetposixpath targetPOSIXpath��  ��  � ���� L  �� J  �� ��� o  ���� 0 newname newName� ���� o  ���� "0 targetposixpath targetPOSIXpath��  ��  ��  ��  �  � k  "-�� ��� r  "'��� l "%������ b  "%��� o  "#���� .0 targetfolderposixpath targetFolderPOSIXPath� o  #$���� 0 
targetname 
targetName��  ��  � l     ������ o      ���� "0 targetposixpath targetPOSIXpath��  ��  � ���� L  (-�� J  (,�� ��� o  ()���� 0 
targetname 
targetName� ���� o  )*���� "0 targetposixpath targetPOSIXpath��  ��  �  ��  ��       ������  � ���� 0 encode_media Encode_Media� �� %� �� 0 encode_media Encode_Media�  ����
�� misccura
�� 
pcls �  A M B u n d l e A c t i o n  ������������������	
��   ����������������������������������
�� 
pare�� &0 settingindicators settingIndicators�� 0 exportpresets exportPresets��  0 fileextensions fileExtensions�� 0 	logstatus 	logStatus�� 0 labelformat labelFormat�� "0 labelresolution labelResolution�� 0 labeldatarate labelDataRate�� (0 labelcompatibility labelCompatibility�� 0 formatpopup formatPopup�� 0 encodepopup encodePopup�� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�� 
0 opened  �� (0 changedescription_ changeDescription_�� "0 setlabelcontent setLabelContent�� &0 nslocalizedstring NSLocalizedString�� &0 derivenewfilename deriveNewFilename��   ���� 
 
  = A E I M Q U Y ] ` ���� 
 
  n r v z ~ � � � � � ���� 
 
  � � � � � � � � � �
�� boovtrue
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng �� ��������� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�� ����   �������� 	0 input  �� 0 anaction anAction�� 0 errorref errorRef��   ��������������������������������������~�}�|�{�z�y�� 	0 input  �� 0 anaction anAction�� 0 errorref errorRef�� 0 these_items  �� 0 
parameters  �� &0 deletesourcefiles deleteSourceFiles�� .0 usesamefolderassource useSameFolderAsSource�� $0 encoderindicator encoderIndicator�� 60 encodingstrategyindicator encodingStrategyIndicator�� .0 destinationfolderpath destinationFolderPath�� .0 folderexistencestatus folderExistenceStatus�� $0 settingindicator settingIndicator�� 0 i  �� 0 thisindicator thisIndicator�� 0 settingindex settingIndex�� 0 nameextension nameExtension�� 0 exportpreset exportPreset�� 0 output_list  � ,0 sourcemediaposixpath sourceMediaPOSIXPath�~ 0 
targetname 
targetName�} *0 finalmediaposixpath finalMediaPOSIXPath�| &0 commandbundlepath commandBundlePath�{ 0 commandstring commandString�z 0 error_message  �y 0 error_number   9 ��x�w�v�u�t0�s�r<H�qT`�pio������o��n�m�l��k9@Fz}�j�i�����h���g�f��e�d�c/�b�a
�x .ascrcmnt****      � ****
�w 
pcls
�v 
list
�u .corecnte****       ****�t 0 
parameters  �s 0 valueforkey_ valueForKey_
�r 
bool
�q 
long
�p 
TEXT
�o .sysoexecTEXT���     TEXT
�n .coredoexbool        obj �m  �l  
�k 
cobj�j �i &0 derivenewfilename deriveNewFilename
�h 
strq�g �f <�e 0 error_message   �`�_�^
�` 
errn�_ 0 error_number  �^  �d��
�c 
btns
�b 
dflt
�a .sysodlogaskr        TEXT���b  e  
�j Y hO��,� 
��&E�Y �E�Ob  e  �j %j Y hO)j+ E�O��k+ �&E�O��k+ �&E�O��k+ �&E�O��k+ �&E�O��k+ �&E�O�a  �a %E�Y hOb  e  6a �%j Oa �%j Oa �%j Oa �%j Oa �%j Y hO�f  B .a �%j E�Oa  	�j E�UO�f  	)jhY hW X  a j E�Y hO��&��&%E�O Nkb  j kh b  a �/E�O��  &�E�Ob  a �/E�Ob  a �/E^ OY h[OY��Ob  e  $a �%j Oa  �%j Oa !] %j Y hOjvE^ O"k�j kh �a �/E^ O�e  /)] �a "a #a $+ %E[a k/EQ^ Z[a l/EQ^ ZY *)] �a &�a $+ %E[a k/EQ^ Z[a l/EQ^ ZOa 'j E^ O] a (%] %a )%] a *,%a +%] a *,%�&E^ Ob  e  a ,] %j Y hOa -a . n] j oO�e  a /] a *,%�&E^ O] j Y hOb  e  a 0] %j Y hO] �&] 6F[OY��Ob  e  a 1] %j Y hO] W *X 2 3] a 4 ] a 5a 6kva 7ka $ 8Y h	 �]<�\�[�Z�] 
0 opened  �\  �[     �Y�Y "0 setlabelcontent setLabelContent�Z *j+  
 �XG�W�V�U�X (0 changedescription_ changeDescription_�W �T�T   �S�S 
0 sender  �V   �R�R 
0 sender   �Q�Q "0 setlabelcontent setLabelContent�U *j+   �PO�O�N�M�P "0 setlabelcontent setLabelContent�O  �N   �L�K�J�I�H�L 0 currentformat currentFormat�K *0 currentencodemethod currentEncodeMethod�J "0 localizationkey localizationKey�I 0 thiskey thisKey�H *0 thislocalizedstring thisLocalizedString �G�F�������E�D��C�B�#Q�G *0 indexofselecteditem indexOfSelectedItem
�F 
TEXT�E �D 0 setenabled_ setEnabled_�C &0 nslocalizedstring NSLocalizedString�B "0 setstringvalue_ setStringValue_�M �b  	j+  �&E�Ob  
j+  �&E�O��%E�O�������v� b  
 *fk+ 	UY b  
 *ek+ 	UO��%�&E�O)�k+ E�Ob   *�k+ UO��%�&E�O)�k+ E�Ob   *�k+ UO��%�&E�O)�k+ E�Ob   *�k+ UO��%�&E�O)�k+ E�Ob   *�k+ UOP �Ay�@�?�>�A &0 nslocalizedstring NSLocalizedString�@ �=�=   �<
�< 
kMsg�?   �;
�; 
kMsg �:�9�8�7�: 
0 bundle  
�9 
msng�8 H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
�7 
utxt�> )j+  ���m+ �& �6��5�4 �3�6 &0 derivenewfilename deriveNewFilename�5 �2!�2 !  �1�0�/�.�1 *0 sourceitemposixpath sourceItemPOSIXPath�0 $0 newnameextension newNameExtension�/ (0 incrementseparator incrementSeparator�. .0 targetfolderposixpath targetFolderPOSIXPath�4   �-�,�+�*�)�(�'�&�%�$�#�"�!� ���- *0 sourceitemposixpath sourceItemPOSIXPath�, $0 newnameextension newNameExtension�+ (0 incrementseparator incrementSeparator�* .0 targetfolderposixpath targetFolderPOSIXPath�)  0 sourceitemname sourceItemName�(  0 fileinforecord fileInfoRecord�' 20 sourceitemnameextension sourceItemNameExtension�& (0 extensionseparator extensionSeparator�% (0 sourceitembasename sourceItemBaseName�$ 0 
targetname 
targetName�# "0 targetextension targetExtension�" *0 targetitemposixpath targetItemPOSIXPath�! *0 fileexistencestatus fileExistenceStatus�  0 nameincrement nameIncrement� 0 newname newName� "0 targetposixpath targetPOSIXpath  ����������#'6��V������
� 
strq
� .sysoexecTEXT���     TEXT
� .sysonfo4asfe        file
� 
nmxt
� 
msng
� 
ctxt
� 
leng
� 
utxt
� 
bool�3.��  ��,%j E�Y hO�� 
��%E�Y hO��,%j E�O�j E�O��,E�O��  �E�O��  �E�Y �E�Y �E�O��  �E�Y �[a \[Zk\Z�a ,l'2E�O�a   �E�O�E�Y �E�O��%�%a &E�O��%E�Oa ��,%a %j a &E�O�e  \kE�O RhZ��%�a &%�%�%a &E�O��%E�Oa ��,%a %j a &E�O�e  
�kE�Y ��%E�O��lv[OY��Y ��%E�O��lvascr  ��ޭ