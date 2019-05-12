//
//  titleViewController.swift
//  PLANNING POKER
//
//  Created by 萬本裕也 on 2019/04/11.
//  Copyright © 2019 Yuya Mammoto. All rights reserved.
//

import UIKit

class titleViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleText = NSMutableAttributedString(string: "PLANNING\nPOKER.")
        titleText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.white, range: NSMakeRange(0, 8))
        titleLabel.attributedText = titleText
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.performSegue(withIdentifier: "titleToSet", sender: nil)
        }
        
    }
}
