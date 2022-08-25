//
//  FeedBackVC.swift
//  MVC - App
//
//  Created by Haydar Bekmuradov on 25.08.22.
//

import UIKit

class FeedBackVC: UIViewController {
    var index: Int!

    @IBOutlet var feedBackTV: UITextView!
    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var errorLabel: UILabel!
    @IBOutlet var saveFeedBacKButtonAction: UIButton!

    var fighter: Fight {
        FightersData.shared.meals[index]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        feedBackTV.delegate = self
    }

    @IBAction func saveFeedBack() {
        let feedBack = FeedBack(text: feedBackTV.text,
                                mark: Double(segmentControl.selectedSegmentIndex + 1))

        FightersData.shared.meals[index].feedBacks.append(feedBack)
    }
}

extension FeedBackVC: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if textView == feedBackTV {
            let isCountEnough = textView.text.count > 20
            saveFeedBacKButtonAction.isEnabled = isCountEnough
            errorLabel.isHidden = isCountEnough
        }
        return true
    }
}
