﻿using LessonMVVM.Commands;
using LessonMVVM.Models;
using LessonMVVM.Services;
using LessonMVVM.ViewModels.WindowViewModels;
using LessonMVVM.Views.Windows;
using System;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace LessonMVVM.ViewModels.PageViewModels;

public class DashboardPageViewModel : NotificationService
{
    private Car? car1;
    public Car? car { get => car1; set { car1 = value; OnPropertyChanged(); } }

    public ObservableCollection<Car> Cars { get; set; }


    public ICommand? AddCarCommand { get; set; }
    public ICommand? GetAllCarCommand { get; set; }
    public ICommand? EditCarCommand { get;set;}


    public DashboardPageViewModel()
    {
        Cars = new()
        {
            new("Kia", "Optima", new DateTime(2012,10,20)),
            new("Kia", "K3", new DateTime(2018,10,20)),
            new("Hyundai", "Elantra", new DateTime(2018,10,20)),
            new("Hyundai", "Accent", new DateTime(2018,10,20)),
        };

        car = new();

        AddCarCommand = new RelayCommand(AddCar, CanAddCar);
        GetAllCarCommand = new RelayCommand(GetAllCar, CanGetAllCar);
        EditCarCommand = new RelayCommand(EditCar,CanEditCar);
    }

    public void GetAllCar(object? parameter)
    {
        var allCarView = new AllCarView();
        allCarView.DataContext = new AllCarViewModel(Cars);
        allCarView.ShowDialog();
    }

    public bool CanGetAllCar(object? parameter)
    {
        return Cars.Count >= 1;
    }



    public void AddCar(object? parameter)
    {
        Cars.Add(car!);
        car = new();
    }

    public bool CanAddCar(object? parameter)
    {
        return !string.IsNullOrEmpty(car?.Make)
                 && !string.IsNullOrEmpty(car?.Model)
                 && car.Date != null;
    }

    public bool CanEditCar(object? parameter)
    {
        var index = parameter as int?;
        if (index == null || index == -1) return false;
        else return true;
    }

    public void EditCar(object? parameter)
    {
        var index = parameter as int?;
        var edit_car = new EditCarView();
        edit_car.DataContext = new EditCarViewModel(Cars[Convert.ToInt32(index)]);
        edit_car.ShowDialog();
    }
}