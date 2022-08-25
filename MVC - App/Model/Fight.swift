//
//  Fight.swift
//  MVC - App
//
//  Created by Haydar Bekmuradov on 25.08.22.
//

import Foundation
import UIKit

struct Fight {
    
    let name: String
    let wins: Double
    let image: UIImage?
    
    var feedBacks : [FeedBack] = []
    
    var raitingBar: String {
        if let raiting = raiting {
            return String(repeating: "👍", count: Int(raiting.rounded(.up)))
        }else {
            return "There are not reviews yet"
        }
    }
    
    private var raiting: Double? {
        if feedBacks.isEmpty {
            return nil
        } else {
            var sum: Double = 0
            for rewiev in feedBacks {
                sum += rewiev.mark
            }
            return sum / Double(feedBacks.count)
        }
    }
}
