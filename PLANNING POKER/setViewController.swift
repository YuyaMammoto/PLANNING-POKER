//
//  setViewController.swift
//  PLANNING POKER
//
//  Created by 萬本裕也 on 2019/04/10.
//  Copyright © 2019 Yuya Mammoto. All rights reserved.
//

import UIKit

class setViewController: UIViewController {
    
    @IBOutlet weak var firingValue: UIButton!

    var selectedValue:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.95)
        let btnTextColor = UIColor(red: 242/255, green: 44/255, blue: 113/255, alpha: 1.0)
        let btnBGcolor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.5)
        let btnBorderColor = UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1.0).cgColor
        
        firingValue.backgroundColor = btnBGcolor
        firingValue.layer.borderWidth = 1
        firingValue.layer.borderColor = btnBorderColor
        firingValue.layer.cornerRadius = 86.0
        firingValue.setTitleColor(btnTextColor, for: UIControl.State.normal)
        
        let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(setViewController.viewTap(sender: )))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc func viewTap(sender: UITapGestureRecognizer){
        self.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firingValue" {
            let valueViewController = segue.destination as! valueViewController
            valueViewController.selectedFiringValue = sender as! Int?
        }
    }
    
    @IBAction func firingValue(_ sender: UIButton) {
        if selectedValue == 9002 {
            self.performSegue(withIdentifier: "firingImageValue", sender: selectedValue)
        } else {
            self.performSegue(withIdentifier: "firingValue", sender: selectedValue)
        }
    }
}
