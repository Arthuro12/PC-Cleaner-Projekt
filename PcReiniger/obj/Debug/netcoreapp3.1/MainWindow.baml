   M S B A M L   `   `   `  ����E  APcReiniger, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:PcReiniger
PcReiniger  5   	       PcReiniger.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:PcReiniger     5   	   -   5          �Name$  Fenster��5   	    � Title$ Reiniger-Software��5	   	   $	��700��6#   $
��1000��60    � 
ResizeMode$ NoResize=�6=    � WindowStartupLocation$ CenterScreen=�6S    � Icon$ /cleanericon.png��6x   .��5
      �  � ColumnDefinitions 5   
   �� 5      $	��98* �6   �� 5      $	��35* �6   �� 5      $
��867* �6   .+�5   
   �� $
��Left=�6   $	��174��6/   $	��Top=�6=   $
��1000��6U   $��3��6b   ���	#FF68AEF36v   �� 5   
   -   5         ��Name$ title��5      $!��Analyse des PC erforderlich��6   $
��Left=�6E   $��	49,10,0,0q�6`   $	��Top=�6s   $��3��6�   $��68��6�   $	��620��6�   ���	#FF68AEF3
�������$��Arial)�6�   $��40(�6�   �� 5   
   $��Fläche zu reinigen:��6   $
��Left=�6.   $��	49,78,0,0q�6I   $	��Top=�6\   $��42��6t   $	��310��6�   ���	#FF68AEF3
�������$��Arial)�6�   $��22(�6�   $
��Bold"�6�   $��3��6�   �� 5   
   $��Letzte Analyse:��6   $
��Left=�6*   $��
49,115,0,0q�6E   $	��Top=�6Y   $��40��6q   $	��291��6}   ���	#FF68AEF3
�������$��Arial)�6�   $��22(�6�   $
��Bold"�6�   $��3��6�   �� 5   
   -   5        $
 date��5      $��Niemals��6   $��Right=�60   $��0,115,447,0q�6L   $	��Top=�6a   $��40��6y   $	��288��6�   ���	#FF68AEF3
�������$��Arial)�6�   $��22(�6�   $��Normal"�6�   $��2��6�   �� 5   
   -   5        $ space��5      $��??? Mb��6   $
��Left=�60   $��
140,78,0,0q�6K   $	��Top=�6_   $��42��6w   $	��310��6�   ���	#FF68AEF3
�������$��Arial)�6�   $��22(�6�   $��Normal"�6�   $��2��6�   �� 5   
   -   5        $��ANALYSIEREN��5      $��2��6'   $
��Left=�67   $��
541,54,0,0q�6R   $	��Top=�6f   $��71��6~   $	��211��6�   ���	#FF66A9EA$��6,6,6,6q�6�   ���	#FFF9F8F8$
��Bold"�6�   $��22(�6�   ���	#FFF7F5F56  �� 5   
   $
��Left=�6   $��8��6/   
���   �$	��Top=�6I   $
��1000��6a   $��3��6n   ���	#FFD4D8DC$��	0,179,0,0q�6�   $��0��6�   �� 5    
   -   5         ��Name$ btnClean��5       $��


REINIGEN��6#   $
��Left=�6T   $��
10,196,0,0q�6o   $	��Top=�6�   $	��186��6�   $	��490��6�   ���	#FF66A9EA$��6,6,6,6q�6�   ���	#FFF9F8F8$
��Bold"�6�   $��22(�6  ���	#FF1B1A1A$��3��64  6H  �� 5!   
   -   5        $��


SUCHVERLAUF��5!      $
��Left=�6E   $��372,196,0,0q�6`   $	��Top=�6u   $	��186��6�   $	��472��6�   ���	#FF66A9EA$��6,6,6,6q�6�   ���	#FFF9F8F8$
��Bold"�6�   $��22(�6  ���	#FF2B2727$��2��6&  66  �� 5"   
   -   5        $��


AKTUALISIERUNG��5"      $
��Left=�6H   $��
10,400,0,0q�6c   $	��Top=�6w   $	��186��6�   $	��490��6�   ���	#FF66A9EA$��6,6,6,6q�6�   ���	#FFF9F8F8$
��Bold"�6�   $��22(�6  ���	#FF131212$��3��6(  6<  �� 5#   
   -	   5        $��


WEBSEITE��5#      $
��Left=�6B   $��372,400,0,0q�6]   $	��Top=�6r   $	��186��6�   $	��472��6�   ���	#FF66A9EA$��6,6,6,6q�6�   ���	#FFF9F8F8$
��Bold"�6�   $��22(�6�   ���	#FF1B1818$��2��6#  63  �� 5$   
   $��85��6   $��85��6   $��2��6'   $��81,230,686,354q�67   $��/cleaner.png��6O   �� 5%   
   $��85��6   $��85��6   $��2��6'   $��558,230,209,354q�67   $��/searchhistory.png��6P   �� 5&   
   $��85��6   $��85��6   $��2��6'   $��82,415,685,169q�67   $��/update.png��6O   �� 5'   
   $��85��6   $��85��6   $��2��6'   $��559,415,208,169q�67   $��/web.png��6P   �� 5*   
   $
��Left=�6   $��85��6/   
���   �$	��Top=�6J   $
��1000��6b   $��3��6o   ���	#FFD4D8DC$��	0,599,0,0q�6�   $��0��6�   �� 5+   
   $��Copyright2022 - Arthur��6   $
��Left=�61   $��	0,600,0,0q�6L   $	��Top=�6_   $��42��6w   $
��1000��6�   ���	#FFD4D8DC���	#FF151313$��Arial)�6�   $��22(�6�   $��Normal"�6�   $��3��6�   $��Center=�6  �� 5,   
   -
   5        $ newsmessage��5,      $
��Left=�6'   $��	0,632,0,0q�6B   $	��Top=�6U   $��42��6m   $
��1000��6y   ���	#FFBF7E87���	#FF151313$��Arial)�6�   $��22(�6�   $��Normal"�6�   $��3��6�   $��Center=�6�   $y�Hidden=�6!  5/      50      