      � H  .�        \�#�         )         :   
Behavioral  � A          J9  }  ީ A W� _� w �A �� �! �� �a � "� :Q Q� q �� �� ��  �     N!  ��  � ) [� cy z� �) �i �	 �� �I � &� >9 U� t� �q �� ��       	  6i M� m �� �� �y � 	Y  �       �  �     A          .�  :�  Bi         2�  >�  FQ          N!     v �          2�     @     A     S ��     Y  '  2�     @   
  '     S %     #)  *�  A     @     '     :   N  2�  �     !   .  .�      q  A  �     v  ��          >�     :   clk_in  >�  �     p   0  :�      6�          �     :   clk_out  FQ  �     p   1  Bi     6�          �     :   ClockDivider  N!  �        -  J9  �  �          U�  ]�  u1         Y�  a�  y          ��     :   clk  Y�  R	     p   7  U�      6�          R	     :   reset  a�  R	     p   8  ]�      6�          R	     @     iy     ' Q3     e�  ma      qI     @      iy     v  �\     iy      y     :   count  y  R	     p   9  u1     qI          R	     :   Counter  ��  �        5  }  R	  �          �Y  �)  ��  �i  ��         �A  �  ��  �Q  ��          �     @     ��     ' Q3     ��  ��      �q     @      ��     v  �\     ��      �A     :   data_in  �A  ��     p   ?  �Y      �q          ��     :   read_enable  �  ��     p   @  �)      6�          ��     :   write_enable  ��  ��     p   A  ��      6�          ��     @     ��     ' Q3     ��  ��      ��     @      ��     v  �\     ��      �Q     :   address  �Q  ��     p   B  �i      ��          ��     @     �!     ' Q3     �9  �	      ��     @      �!     v  �\     �!      ��     :   data_out  ��  ��     p   C  ��     ��          ��     :   Memory  �  �        =  ީ  ��  �          � q         �� Y         )     @     �I     ' Q3     �a  �1      �     @      �I     v  �\     �I      ��     :   bit5Rep  ��  �y     p   I  �      �          �y     @    �     ' Q3    � 	�     �     @     �     v  �\    �     Y     :   bitRepOfMorse Y  �y     p   J q    �          �y     :   MorseDecoder )  �        G A  �y  �         8� @Q H! O�        <i D9 L	 S�         [�     @    (�     ' Q3    $� ,�     0�     @     (�     v  �\    (�     <i     s   00000000000000  �\ <i     :   data_in <i !     p   P 8�     0� 4�     !     :   clk D9 !     p   Q @Q      6�         !     :   data_out L	 !     p   R H!     6�         !     :   ready S� !     p   S O�     6�  D     !     :   BuzzerInterface [�  �        N W� !  �     :   clk_div cy  �     p   W _�     6�  �      �     @    kI     ' Q3    ga o1     s     @     kI     v  �\    kI     z�     :   write_address z�  �     p   Y w    s ��      �     
    kI  � ��      s    ~� z�     @    ��     ' Q3    �� �q     �Y     @     ��     v  �\    ��     �)     :   read_address �)  �     p   Z �A    �Y ��      �     
    ��  � ��      �Y    � �)     @    ��     ' Q3    �� ��     ��     @     ��     v  �\    ��     �i     :   mem_address �i  �     p   [ ��    �� �9      �     
    ��  � �9      ��    �Q �i     :   
buzzer_rdy �	  �     p   ] �!     6�  �      �     :   reading ��  �     p   _ ��     6�  �      �     @    ة     ' Q3    �� ܑ     �y     @     ة     v  �\    ة     �I     :   mem_out �I  �     p   a �a    �y �      �     
    ة  � �      �y    �1 �I     @    ��     ' Q3    � ��     ��     @     ��     v  �\    ��     �     :   morse �  �     p   c �    �� Y      �     
    ��  � Y      ��    q �     \     :�  FR      \     Bi _�         g "�  J9    � A )      �     7     .�  A         :   DIV1 &�  �     E   g "�   �     \     U�  6� 6i     \     ]�  >� 6i     \     u1 w 6i        i :Q  }    *� .� 2�      �     :   write_address_counter >9  �     E   i :Q 6i  �     \     U� �! M�     \     ]�  >� M�     \     u1 �A M�        k Q�  }    B! F	 I�      �     :   read_address_counter U�  �     E   k Q� M�  �     \     �Y  *� m     \     �) �� m     \     ��  6� m     \     �i �� m     \     �� �a m        m q  ީ    Y� ]y aa eI i1      �     :   mem t�  �     E   m q m  �     \     � �a ��     \    q � ��        o �� A    x� |�      �     :   decoder �q  �     E   o �� ��  �     \    8� � ��     \    @Q _� ��     \    H!  N" ��     \    O� �! ��        q �� W�    �Y �A �) �      �     :   buzzer ��  �     E   q �� ��  �                         ֑ �y     S ��     >�  D ҩ     �  D         �i     o   w     �� ��         ҩ     S ��     6�  D ��     �  \         �!     o   y     �9 ��         ��     v  ��         ��     U     ��     FT  FT  �� �	  �     T   = ��  �     r         �Q    �! ֑     r         ��    �i ֑     <   v        ҩ �� ��     a   t     ��     >�  6�  �                         �� �     S ��    ��  D ��     � �A         �     o   �     �1 ��         ��     � w         ��     o   �     � ��         ��     r          �;    �� ��     r         �I    � ��     <           �� �� �a     a   }     �a    w �A  �     � �A         	Y        �     q  e�              �     %     �  �  qJ     � )     �   2G:/My Drive/ELEC/project/LabProject/LabProject.vhd A  �                
labproject   
behavioral   work      
labproject   
behavioral   work      
labproject       work      standard       std      std_logic_1164       IEEE