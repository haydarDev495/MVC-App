//
//  DataService.swift
//  MVC - App
//
//  Created by Haydar Bekmuradov on 25.08.22.
//

import Foundation

class FightersData {
    
    static let shared = FightersData()
    var meals : [Fight]
    
    private init() {
        meals = [Fight(name: "Khabib", wins: 29.0, image: #imageLiteral(resourceName: "Khabib.png")),
                 Fight(name: "Islam", wins: 22.1, image: #imageLiteral(resourceName: "Islam.jpeg")),
                 Fight(name: "Dustin", wins: 32.8, image: #imageLiteral(resourceName: "Dustin.png"))]
    }
}
