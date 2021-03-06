FasdUAS 1.101.10   ��   ��    k             l      ��  ��   mg

Script by Philip Hutchison, April 2013
http://pipwerks.com
MIT license http://pipwerks.mit-license.org/

Edited by Mike Santiago, Jun 2018

This script assumes:

1. You have a folder named "Wallpapers" in your Pictures folder
2. You have a subfolder named "Time of Day" in Wallpapers
3. You have six subfolders inside "Time of Day", with names that match the variables below. 
   * If you decide to use different folder names, you must change the variables to match the new folder names
4. You have images inside each folder
5. You have installed the dark-mode utility through Homebrew (brew install dark-mode)

For example:
/Users/YOUR_USER_NAME/Pictures/Wallpapers/Time of Day/Afternoon Early/image.jpg

GeekTool can execute this script for you at specified intervals. Use this line in the command field:
osascript ~/Pictures/Wallpapers/Time\ of\ Day/wallpaper.scpt

     � 	 	� 
 
 S c r i p t   b y   P h i l i p   H u t c h i s o n ,   A p r i l   2 0 1 3 
 h t t p : / / p i p w e r k s . c o m 
 M I T   l i c e n s e   h t t p : / / p i p w e r k s . m i t - l i c e n s e . o r g / 
 
 E d i t e d   b y   M i k e   S a n t i a g o ,   J u n   2 0 1 8 
 
 T h i s   s c r i p t   a s s u m e s : 
 
 1 .   Y o u   h a v e   a   f o l d e r   n a m e d   " W a l l p a p e r s "   i n   y o u r   P i c t u r e s   f o l d e r 
 2 .   Y o u   h a v e   a   s u b f o l d e r   n a m e d   " T i m e   o f   D a y "   i n   W a l l p a p e r s 
 3 .   Y o u   h a v e   s i x   s u b f o l d e r s   i n s i d e   " T i m e   o f   D a y " ,   w i t h   n a m e s   t h a t   m a t c h   t h e   v a r i a b l e s   b e l o w .   
       *   I f   y o u   d e c i d e   t o   u s e   d i f f e r e n t   f o l d e r   n a m e s ,   y o u   m u s t   c h a n g e   t h e   v a r i a b l e s   t o   m a t c h   t h e   n e w   f o l d e r   n a m e s 
 4 .   Y o u   h a v e   i m a g e s   i n s i d e   e a c h   f o l d e r 
 5 .   Y o u   h a v e   i n s t a l l e d   t h e   d a r k - m o d e   u t i l i t y   t h r o u g h   H o m e b r e w   ( b r e w   i n s t a l l   d a r k - m o d e ) 
 
 F o r   e x a m p l e : 
 / U s e r s / Y O U R _ U S E R _ N A M E / P i c t u r e s / W a l l p a p e r s / T i m e   o f   D a y / A f t e r n o o n   E a r l y / i m a g e . j p g 
 
 G e e k T o o l   c a n   e x e c u t e   t h i s   s c r i p t   f o r   y o u   a t   s p e c i f i e d   i n t e r v a l s .   U s e   t h i s   l i n e   i n   t h e   c o m m a n d   f i e l d : 
 o s a s c r i p t   ~ / P i c t u r e s / W a l l p a p e r s / T i m e \   o f \   D a y / w a l l p a p e r . s c p t 
 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��      BEGIN USER CONFIGURATION     �   2   B E G I N   U S E R   C O N F I G U R A T I O N      l     ��������  ��  ��        l     ��  ��      supply folder names     �   (   s u p p l y   f o l d e r   n a m e s      l     ����  r         m        �      M o r n i n g   E a r l y  o      ���� 0 morningearly morningEarly��  ��     ! " ! l    #���� # r     $ % $ m     & & � ' '  M o r n i n g   L a t e % o      ���� 0 morninglate morningLate��  ��   "  ( ) ( l    *���� * r     + , + m    	 - - � . .  A f t e r n o o n   E a r l y , o      ����  0 afternoonearly afternoonEarly��  ��   )  / 0 / l    1���� 1 r     2 3 2 m     4 4 � 5 5  A f t e r n o o n   L a t e 3 o      ���� 0 afternoonlate afternoonLate��  ��   0  6 7 6 l    8���� 8 r     9 : 9 m     ; ; � < <  E v e n i n g   E a r l y : o      ���� 0 eveningearly eveningEarly��  ��   7  = > = l    ?���� ? r     @ A @ m     B B � C C  E v e n i n g   L a t e A o      ���� 0 eveninglate eveningLate��  ��   >  D E D l     ��������  ��  ��   E  F G F l     �� H I��   H $  for multiple monitor support.    I � J J <   f o r   m u l t i p l e   m o n i t o r   s u p p o r t . G  K L K l     �� M N��   M i c set to true to display the same image on all desktops, false to show unique images on each desktop    N � O O �   s e t   t o   t r u e   t o   d i s p l a y   t h e   s a m e   i m a g e   o n   a l l   d e s k t o p s ,   f a l s e   t o   s h o w   u n i q u e   i m a g e s   o n   e a c h   d e s k t o p L  P Q P l    R���� R r     S T S m    ��
�� boovtrue T o      ���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays��  ��   Q  U V U l     ��������  ��  ��   V  W X W l     �� Y Z��   Y   END USER CONFIGURATION    Z � [ [ .   E N D   U S E R   C O N F I G U R A T I O N X  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     ��������  ��  ��   _  ` a ` l     ��������  ��  ��   a  b c b l     �� d e��   d   get current hour    e � f f "   g e t   c u r r e n t   h o u r c  g h g l   % i���� i r    % j k j n    # l m l 1   ! #��
�� 
hour m l   ! n���� n I   !������
�� .misccurdldt    ��� null��  ��  ��  ��   k o      ���� 0 h  ��  ��   h  o p o l     ��������  ��  ��   p  q r q l     �� s t��   s   set default periodOfDay    t � u u 0   s e t   d e f a u l t   p e r i o d O f D a y r  v w v l  & + x���� x r   & + y z y o   & '���� 0 morningearly morningEarly z o      ���� 0 periodofday periodOfDay��  ��   w  { | { l     ��������  ��  ��   |  } ~ } l     ��  ���     disable dark mode    � � � � " d i s a b l e   d a r k   m o d e ~  � � � l  , ? ����� � Z   , ? � ����� � l  , 1 ����� � ?   , 1 � � � o   , -���� 0 h   � m   - 0���� ��  ��   � I  4 ;�� ���
�� .sysoexecTEXT���     TEXT � m   4 7 � � � � � 8 / u s r / l o c a l / b i n / d a r k - m o d e   o f f��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 change value of periodOfDay based on current time    � � � � d   c h a n g e   v a l u e   o f   p e r i o d O f D a y   b a s e d   o n   c u r r e n t   t i m e �  � � � l  @ � ����� � Z   @ � � � ��� � l  @ Q ����� � F   @ Q � � � ?   @ E � � � o   @ A���� 0 h   � m   A D����  � A   H M � � � o   H I���� 0 h   � m   I L���� ��  ��   � r   T Y � � � o   T U���� 0 morninglate morningLate � o      ���� 0 periodofday periodOfDay �  � � � l  \ m ����� � F   \ m � � � @   \ a � � � o   \ ]���� 0 h   � m   ] `����  � A   d i � � � o   d e���� 0 h   � m   e h���� ��  ��   �  � � � r   p u � � � o   p q����  0 afternoonearly afternoonEarly � o      ���� 0 periodofday periodOfDay �  � � � l  x � ����� � F   x � � � � @   x } � � � o   x y���� 0 h   � m   y |����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � o   � ����� 0 afternoonlate afternoonLate � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � k   � � � �  � � � r   � � � � � o   � ����� 0 eveningearly eveningEarly � o      ���� 0 periodofday periodOfDay �  � � � l  � ��� � ���   �  enable dark mode    � � � �   e n a b l e   d a r k   m o d e �  ��� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � 6 / u s r / l o c a l / b i n / d a r k - m o d e   o n��  ��   �  � � � l  � � ���~ � G   � � � � � @   � � � � � o   � ��}�} 0 h   � m   � ��|�|  � A   � � � � � o   � ��{�{ 0 h   � m   � ��z�z �  �~   �  ��y � r   � � � � � o   � ��x�x 0 eveninglate eveningLate � o      �w�w 0 periodofday periodOfDay�y  ��  ��  ��   �  � � � l     �v�u�t�v  �u  �t   �  � � � l     �s�r�q�s  �r  �q   �  � � � l     �p�o�n�p  �o  �n   �  � � � l     �m � ��m   � ; 5 helper function ("handler") for getting random image    � � � � j   h e l p e r   f u n c t i o n   ( " h a n d l e r " )   f o r   g e t t i n g   r a n d o m   i m a g e �  � � � i      � � � I      �l ��k�l 0 getimage getImage �  ��j � o      �i�i 0 
foldername 
folderName�j  �k   � k      � �  � � � l     �h�g�f�h  �g  �f   �  � � � O      � � � L     � � c     � � � n     � � � 3    �e
�e 
file � n     �  � 4    �d
�d 
cfol l   �c�b b     m    	 � @ P i c t u r e s : W a l l p a p e r s : T i m e   o f   D a y : o   	 
�a�a 0 
foldername 
folderName�c  �b    1    �`
�` 
home � m    �_
�_ 
ctxt � m     �                                                                                  MACS  alis    z  Hackintosh SSD             �H~�H+   |�
Finder.app                                                      ��Ծ��        ����  	                CoreServices    �H��      ԿD     |� ̬ ̪  8Hackintosh SSD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    H a c k i n t o s h   S S D  &System/Library/CoreServices/Finder.app  / ��   � �^ l   �]�\�[�]  �\  �[  �^   � 	
	 l     �Z�Y�X�Z  �Y  �X  
  l     �W�V�U�W  �V  �U    l  �p�T�S O   �p k   �o  l  � ��R�Q�P�R  �Q  �P    l  � ��O�O   3 - wrapped in a try block for error suppression    � Z   w r a p p e d   i n   a   t r y   b l o c k   f o r   e r r o r   s u p p r e s s i o n  Q   �m�N k   �d   l  � ��M�L�K�M  �L  �K    !"! l  � ��J#$�J  # 6 0 determine which picture to use for main display   $ �%% `   d e t e r m i n e   w h i c h   p i c t u r e   t o   u s e   f o r   m a i n   d i s p l a y" &'& r   � �()( n  � �*+* I   � ��I,�H�I 0 getimage getImage, -�G- o   � ��F�F 0 periodofday periodOfDay�G  �H  +  f   � �) o      �E�E (0 maindisplaypicture mainDisplayPicture' ./. l  � ��D�C�B�D  �C  �B  / 010 l  � ��A23�A  2 = 7 set the picture for additional monitors, if applicable   3 �44 n   s e t   t h e   p i c t u r e   f o r   a d d i t i o n a l   m o n i t o r s ,   i f   a p p l i c a b l e1 565 O   �X787 k   �W99 :;: l  � ��@�?�>�@  �?  �>  ; <=< l  � ��=>?�=  > &   get a reference to all desktops   ? �@@ @   g e t   a   r e f e r e n c e   t o   a l l   d e s k t o p s= ABA r   � �CDC N   � �EE 2   � ��<
�< 
dskpD o      �;�; 0 thedesktops theDesktopsB FGF l  � ��:�9�8�:  �9  �8  G HIH l  � ��7JK�7  J !  handle additional desktops   K �LL 6   h a n d l e   a d d i t i o n a l   d e s k t o p sI MNM Z   �UOP�6�5O l  �Q�4�3Q ?   �RSR l  �T�2�1T I  ��0U�/
�0 .corecnte****       ****U o   � �.�. 0 thedesktops theDesktops�/  �2  �1  S m  �-�- �4  �3  P k  	QVV WXW l 		�,�+�*�,  �+  �*  X YZY l 		�)[\�)  [ D > loop through all desktops (beginning with the second desktop)   \ �]] |   l o o p   t h r o u g h   a l l   d e s k t o p s   ( b e g i n n i n g   w i t h   t h e   s e c o n d   d e s k t o p )Z ^_^ Y  	O`�(ab�'` k  Jcc ded l �&�%�$�&  �%  �$  e fgf l �#hi�#  h #  determine which image to use   i �jj :   d e t e r m i n e   w h i c h   i m a g e   t o   u s eg klk Z  7mn�"om l p�!� p = qrq o  �� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplaysr m  �
� boovfals�!  �   n r  +sts n 'uvu I   '�w�� 0 getimage getImagew x�x o   #�� 0 periodofday periodOfDay�  �  v  f   t o      �� 20 secondarydisplaypicture secondaryDisplayPicture�"  o r  .7yzy n .3{|{ o  /3�� (0 maindisplaypicture mainDisplayPicture|  f  ./z o      �� 20 secondarydisplaypicture secondaryDisplayPicturel }~} l 88����  �  �  ~ � l 88����  �   apply image to desktop   � ��� .   a p p l y   i m a g e   t o   d e s k t o p� ��� r  8H��� o  8;�� 20 secondarydisplaypicture secondaryDisplayPicture� n      ��� 1  CG�
� 
picP� n  ;C��� 4  >C��
� 
cobj� o  AB�� 0 x  � l ;>���� o  ;>�� 0 thedesktops theDesktops�  �  � ��� l II�
�	��
  �	  �  �  �( 0 x  a m  �� b l ���� I ���
� .corecnte****       ****� o  �� 0 thedesktops theDesktops�  �  �  �'  _ ��� l PP� �����   ��  ��  �  �6  �5  N ���� l VV��������  ��  ��  ��  8 m   � ����                                                                                  sevs  alis    �  Hackintosh SSD             �H~�H+   |�System Events.app                                               ���'�        ����  	                CoreServices    �H��      �'?�     |� ̬ ̪  ?Hackintosh SSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    H a c k i n t o s h   S S D  -System/Library/CoreServices/System Events.app   / ��  6 ��� l YY��������  ��  ��  � ��� l YY������  � ( " set the primary monitor's picture   � ��� D   s e t   t h e   p r i m a r y   m o n i t o r ' s   p i c t u r e� ��� l YY������  � R L due to a Finder quirk, this has to be done AFTER setting the other displays   � ��� �   d u e   t o   a   F i n d e r   q u i r k ,   t h i s   h a s   t o   b e   d o n e   A F T E R   s e t t i n g   t h e   o t h e r   d i s p l a y s� ��� r  Yb��� o  Y\���� (0 maindisplaypicture mainDisplayPicture� 1  \a��
�� 
dpic� ���� l cc��������  ��  ��  ��   R      ������
�� .ascrerr ****      � ****��  ��  �N   ���� l nn��������  ��  ��  ��   m   � ����                                                                                  MACS  alis    z  Hackintosh SSD             �H~�H+   |�
Finder.app                                                      ��Ծ��        ����  	                CoreServices    �H��      ԿD     |� ̬ ̪  8Hackintosh SSD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    H a c k i n t o s h   S S D  &System/Library/CoreServices/Finder.app  / ��  �T  �S   ���� l     ��������  ��  ��  ��       �������  � ������ 0 getimage getImage
�� .aevtoappnull  �   � ****� �� ����������� 0 getimage getImage�� ����� �  ���� 0 
foldername 
folderName��  � ���� 0 
foldername 
folderName� ��������
�� 
home
�� 
cfol
�� 
file
�� 
ctxt�� � *�,��%/�.�&UOP� �����������
�� .aevtoappnull  �   � ****� k    p��  ��  !��  (��  /��  6��  =��  P��  g��  v��  ���  ��� ����  ��  ��  � ���� 0 x  � ' �� &�� -�� 4�� ;�� B�������������� ������������� ��������������������������� 0 morningearly morningEarly�� 0 morninglate morningLate��  0 afternoonearly afternoonEarly�� 0 afternoonlate afternoonLate�� 0 eveningearly eveningEarly�� 0 eveninglate eveningLate�� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays
�� .misccurdldt    ��� null
�� 
hour�� 0 h  �� 0 periodofday periodOfDay�� 
�� .sysoexecTEXT���     TEXT�� 
�� 
bool�� �� �� �� 0 getimage getImage�� (0 maindisplaypicture mainDisplayPicture
�� 
dskp�� 0 thedesktops theDesktops
�� .corecnte****       ****�� 20 secondarydisplaypicture secondaryDisplayPicture
�� 
cobj
�� 
picP
�� 
dpic��  ��  ��q�E�O�E�O�E�O�E�O�E�O�E�OeE�O*j �,E�O�E` O�a  a j Y hO�a 	 �a a & 
�E` Y {�a 	 �a a & 
�E` Y _�a 	 �a a & 
�E` Y C�a 	 �a a & �E` Oa j Y �a 
 �a a & 
�E` Y hOa  � �)_ k+ E` Oa  g*a -E` O_ j  k M El_ j  kh  �f  )_ k+ E` !Y )a ,E` !O_ !_ a "�/a #,FOP[OY��OPY hOPUO_ *a $,FOPW X % &hOPU ascr  ��ޭ