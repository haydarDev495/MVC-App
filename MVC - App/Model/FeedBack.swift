//
//  FeedBack.swift
//  MVC - App
//
//  Created by Haydar Bekmuradov on 25.08.22.
//

import Foundation
import UIKit


import UIKit

struct FeedBack {
    
    private let date = Date()
    
    let text: String
    let mark: Double
    
    
    var dateString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        return dateFormatter.string(from: date)
    }
}
