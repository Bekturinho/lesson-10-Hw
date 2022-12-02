
import Foundation


class Contatiner: RealEstate{
     private var company: String
    var allThings: [Products]
    
    
    init(allThings: [Products], company: String, Square: String, Price: String, Adress: String) {
        self.allThings = allThings
        self.company = company
        
        super.init(Square: Square, Price: Price, Adress: Adress)
    }
    
    func showInfoStock(){
        for i in allThings{
            print(i.productName)
        }
    }
    override func allInfo() {
        print("Компания - \(company)")
        print("Имеющиеся товары:")
        showInfoStock()
    super.allInfo()
    }
    
    }
