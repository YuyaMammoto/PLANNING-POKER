//
//  valueImageViewController.swift
//  PLANNING POKER
//
//  Created by 萬本裕也 on 2019/04/23.
//  Copyright © 2019 Yuya Mammoto. All rights reserved.
//

import UIKit

class valueImageViewController: UIViewController {
    @IBOutlet weak var valueImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cupImage = UIImage(named: "cup")
        valueImage.image = cupImage

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
