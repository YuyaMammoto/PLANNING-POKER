//
//  fileViewController.swift
//  PLANNING POKER
//
//  Created by 萬本裕也 on 2019/04/11.
//  Copyright © 2019 Yuya Mammoto. All rights reserved.
//

import UIKit

class valueViewController: UIViewController {
    
    var selectedFiringValue:Int?
    
    @IBOutlet weak var value: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
                
        switch selectedFiringValue! {
        case 9000:
            self.value.text = "?"
        case 9001:
            self.value.text = "∞"
        default:
            let valueStr = String(selectedFiringValue!)
            self.value.text = valueStr
        }
    }
}
