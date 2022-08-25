//
//  CellManager.swift
//  MVC - App
//
//  Created by Haydar Bekmuradov on 25.08.22.
//

import Foundation
import UIKit

class CellManager {
    func configure (_ cell: UITableViewCell, with fighter: Fight) {
        cell.detailTextLabel?.text = "Record: \(fighter.wins) \n\(fighter.raitingBar)"
        cell.textLabel?.text = fighter.name
        cell.imageView?.image = fighter.image
        
    }
}
