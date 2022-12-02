//В классе Гараж добавить параметры - какая машина находится внутри и есть ли подвал внутри гаража
//Доступ к свойствам ограничить модификаторами доступа



import Foundation

class Garage: RealEstate{
    var car: [Car]
    
    init(car: [Car], Square: String, Price: String, Adress: String) {
        self.car = car
        
        super.init(Square: Square, Price: Price, Adress: Adress)
    }
    
    func allCarsInGarage(){
        for i in car{
            print(i.carsName)
            print(i.carsModel)
        }
    }
    override func allInfo() {
     super.allInfo()
        print("Вот все машины:")
        allCarsInGarage()
    }
    func containGarage(answer: String){
        if answer == "нет"{
            print("Гараж отсутсвует")
        } else if answer == "да"{
            print("Гараж имеется")
        }
                
        
            
        
    }
}
