   M S B A M L   `   `   `  ����E  ALessonMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:LessonMVVM.Views.PagesLessonMVVM.Views.Pages  5      .    (LessonMVVM.Views.Pages.DashboardPageView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:LessonMVVM.Views.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialdesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        N� Title$  DashboardPageView��5
      .��5      � 
�������.+�5   
   �� $	��500��6   $��Center=�6!   $��Center=�6>   .+�5      �� -   5        $��	combobox1��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Select Car��5      $��10 20q�5      $��18(�5      ��5      �� *Cars+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5      �� 5       �� Orientation$ 
Horizontal=�6   $��
5 20 10 20q�62   .+�5      �� $
��Make��6   $��18(�6'   $��70��65   $
��Left=�6@   $��0 0 10 0q�6[   �� 5      $��18(�5      $ 
Enter Make��5       $��Right=�5!      $	��400��5"      ��5      �� *
car.Make+$ TwoWay=�$ PropertyChanged=�5"      5$      �� 5'      $ 
Horizontal=�6   $��
5 20 10 20q�62   .+�5(      �� $��Model��6   $��18(�6(   $��70��66   $
��Left=�6A   $��0 0 10 0q�6\   �� 5)      $��18(�5+      $ Enter Model��5,      $��Right=�5-      $	��400��5.      ��5*      �� *	car.Model+$ TwoWay=�$ PropertyChanged=�5.      50      �� 53      $ 
Horizontal=�6   $��
5 20 10 20q�62   .+�54      �� $
��Date��6   $��18(�6'   $��70��65   $
��Left=�6@   $��0 0 10 0q�6[   (  "System.Windows.Controls.DatePicker  55      $	��400��57      $��Right=�58      $ 	Pick Date��59      .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��5:       (  $MaterialDesignFloatingHintDatePicker#��[  5;         SelectedDate 56      �� *
car.Date+$ TwoWay=�$ PropertyChanged=�5;      5<      �� 5@      $��Center=�6   $ 
Horizontal=�66   $��
5 20 10 20q�6O   .+�5A      �� $	��100��5C      $��5q�6!   $	��Add��6-   ��5B      �� *AddCarCommand+5C   -   �� 5G      $	��100��6   $��5q�6%   $
��Edit��60   ��5H      �� *EditCarCommand+��5I      ��  �� ElementName$ 	combobox1�� �� Path$ SelectedIndex�$ PropertyChanged=�$ TwoWay=��� 5J      $	��100��6   $��5q�6%   $��Remove��60   �� 5K      $	��100��5M      $��5q�6!   $��Get All��6,   ��5L      �� *GetAllCarCommand+5M   ,   5N      5O      5P      5Q      