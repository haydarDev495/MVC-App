//
//  ReviewsTableViewCell.swift
//  MVC - App
//
//  Created by Haydar Bekmuradov on 25.08.22.
//

import UIKit

class ReviewsTableViewCell: UITableViewCell {

    @IBOutlet weak var raitingLabel: UILabel!
    @IBOutlet weak var textLbl: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
