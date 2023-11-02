using LessonMVVM.Commands;
using LessonMVVM.Models;
using LessonMVVM.Services;
using System.Collections.ObjectModel;
using System.Printing;
using System.Windows;
using System.Windows.Input;

namespace LessonMVVM.ViewModels.WindowViewModels;

internal class EditCarViewModel : NotificationService
{
    private Car? givenCar;
    private Car? car;

    public ICommand? SaveCommand { get; set; }
    public ICommand? CloseCommand { get; set; }

    public Car? Car
    {
        get => car;
        set
        {
            car = value;
            OnPropertyChanged();
        }
    }

    public Car? GivenCar
    {
        get => givenCar;
        set
        {
            givenCar = value;
            OnPropertyChanged();
        }
    }

    public EditCarViewModel(Car? car)
    {
        this.GivenCar = car;
        Car = new Car(GivenCar?.Make, GivenCar?.Model, GivenCar?.Date);
        SaveCommand = new RelayCommand(Save);
        CloseCommand = new RelayCommand(Close);
    }

    private void Close(object? parametr)
    {
        var window = parametr as Window;
        window.Close();
    }

    private void Save(object? parametr)
    {
        GivenCar!.Make = Car!.Make;
        GivenCar.Model = Car.Model;
        GivenCar.Date = Car.Date;

        var window = parametr as Window;
        window.Close();
    }
}