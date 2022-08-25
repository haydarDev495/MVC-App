//
//  FightDetailVC.swift
//  MVC - App
//
//  Created by Haydar Bekmuradov on 25.08.22.
//

import UIKit

class FightDetailVC: UIViewController {
    
    var index: Int!

    @IBOutlet var fightStackView: UIStackView!
    @IBOutlet var fightName: UILabel!
    @IBOutlet var fightRecord: UILabel!
    @IBOutlet var fightComment: UILabel!
    @IBOutlet var fightImage: UIImageView!
    @IBOutlet var showComment: UIButton!
    
    var fighter: Fight {
        FightersData.shared.meals[index]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        upduteUI(with: view.bounds.size)
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        upduteUI(with: size)
    }

    func upduteUI(with size: CGSize) {
        let isVertical = size.width < size.height
        fightStackView.axis = isVertical ? .vertical : .horizontal
        
        title = fighter.name
        fightImage.image = fighter.image
        fightName.text = fighter.name
        fightRecord.text = String(fighter.wins)
        fightComment.text = fighter.raitingBar
        
        let showReviewsButtonTitle = "Посмотреть \(fighter.feedBacks.count) отзывов"
        showComment.setTitle(showReviewsButtonTitle, for: .normal)
        showComment.isEnabled = fighter.feedBacks.count != 0
        
        
        
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let vc = segue.destination as? FeedBackVC {
            vc.index = index 
        }
        
        if let vc = segue.destination as? ReviewTVC {
            vc.index = index
        }
    }


}
