   M S B A M L   `   `   `  ����E  ALessonMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:LessonMVVM.Views.WindowsLessonMVVM.Views.Windows  5   	   *    $LessonMVVM.Views.Windows.EditCarView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:LessonMVVM.Views.Windows     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialdesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5        $��
EditWindow��5	   6     � Title$  EditCarView��6	   $	��450��6   $	��700��6*   .��5
      � .+�5   
   �� $	��500��6   $��Center=�6!   $��Center=�6>   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��
5 20 10 20q�62   .+�5      �� $
��Make��6   $��18(�6'   $��70��65   $
��Left=�6@   $��0 0 10 0q�6[   �� 5      $��18(�5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Enter Make��5      $��Right=�5      $	��400��5      ��5      �� *
Car.Make+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5      5      �� 5      $ 
Horizontal=�6   $��
5 20 10 20q�62   .+�5      �� $��Model��6   $��18(�6(   $��70��66   $
��Left=�6A   $��0 0 10 0q�6\   �� 5      $��18(�5      $ Enter Model��5      $��Right=�5      $	��400��5      ��5      �� *	Car.Model+$ TwoWay=�$ PropertyChanged=�5      5       �� 5#      $ 
Horizontal=�6   $��
5 20 10 20q�62   .+�5$      �� $
��Date��6   $��18(�6'   $��70��65   $
��Left=�6@   $��0 0 10 0q�6[   (  "System.Windows.Controls.DatePicker  5%      $	��400��5'      $��Right=�5(      $ 	Pick Date��5)      .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��5*       (  $MaterialDesignFloatingHintDatePicker#��[  5+         SelectedDate 5&      �� *
Car.Date+$ TwoWay=�$ PropertyChanged=�5+      5,      �� 5.      $��Center=�6   $ 
Horizontal=�66   $��
5 20 10 20q�6O   .+�5/      �� $	��100��6   $��5q�6%   $
��Save��60   ��6?   �� *SaveCommand+��6_   ��  �� ElementName$ 
EditWindow���� 50      $	��100��6   $��5q�6%   $��Cancel��60   ��6A   �� *CloseCommand+��6b   �� $ 
EditWindow��51      52      53      54      