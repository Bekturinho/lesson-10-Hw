//ДЗ #4. Полиморфизм
//
//#1. Создать класс Недвижимость
//Параметры: Площадь, цена, адрес
//Методы: Изменение цены, отображение информации
//Наследовать от него классы: Квартира, Склад, Гараж
//
//В классе Квартира добавить параметр: количество жильцов, массив с удобствами(например: сан.узел, интернет и тд)
//Переопределить метод из базового класса и отобразить все данные об объекте в одной строке
//В классе склад доп.параметры - какой компании пренадлежит и массив с имеющимися товарами на складе
//Добавить метод, отображающий товары на складе
//
//В классе Гараж добавить параметры - какая машина находится внутри и есть ли подвал внутри гаража
//Доступ к свойствам ограничить модификаторами доступа
//
//В main создать массив недвижимости и отобразить какого типа недвижимости сколько имеется и по каждому из типов выдать полную информацию
//Критерии приемки:
//Код каждого студента должен быть уникальным
//Весь проект должен находиться в github (Все решения задач должны находиться в одном проекте так-же в коде должны комментарии которые доказывают работоспособность вашего кода)

import Foundation


var cola = Products(productName: "Кола")
 var stock = Contatiner(allThings: [cola], company: "Кола", Square: "233 m2", Price: "3000$", Adress: "Manasa")


var lexus = Car(carsName: "Lexus", carsModel: "Lx 600")
var bmw = Car(carsName: "Bmw", carsModel: "M 5")
var ferrari = Car(carsName: "Ferrari", carsModel: " 600")
var garage = Garage(car: [lexus, bmw, ferrari], Square: "200m 2", Price: "30000$", Adress: "Manasa 1")

var sanOne = SanProduct(productName: "Comet")
var flat = Flat(sanThings: [sanOne], liversValue: 12, Square: "200 m2", Price: "200$", Adress: "Naebalovo")

var allRealty: [RealEstate] = [stock, garage, flat]

func chekAllrealties(reaalties: [RealEstate]){
   var flats = 0
   var garages = 0
    var stocks = 0
    
    for i in reaalties{
        if i is Flat{
            flats += 1
            i.allInfo()
        }
        if i is Garage{
            garages += 1
            i.allInfo()
        }
        if i is Contatiner{
            stocks += 1
            i.allInfo()
        }
        print("В массиве allRealty \(flats) квартир, \(stocks) складов, \(garages) гаражов ")
    }
    
}

chekAllrealties(reaalties: allRealty)
