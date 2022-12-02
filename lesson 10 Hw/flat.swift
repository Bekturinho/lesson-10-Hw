//
//  flat.swift
//  lesson 10 Hw
//
//  Created by Beka Ismanalievbektur on 30/11/22.
//

import Foundation
class Flat: RealEstate{
    private var sanThings: [SanProduct]
    var liversValue: Int
    init(sanThings: [SanProduct], liversValue: Int, Square: String, Price: String, Adress: String) {
        self.sanThings = sanThings
        self.liversValue = liversValue
        super.init(Square: Square, Price: Price, Adress: Adress)
    }
    func allInfoFlat(){
        for i in sanThings{
            print(i.productName)
        }
    }
    override func allInfo() {
        print("Кол-во жильцов - \(liversValue)")
        print("Все премдеты для удобства:")
        allInfoFlat()
        super.allInfo()
        
    }
   
  
    }

