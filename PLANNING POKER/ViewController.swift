//
//  ViewController.swift
//  PLANNING POKER
//
//  Created by 萬本裕也 on 2019/04/09.
//  Copyright © 2019 Yuya Mammoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var setValue0: UIButton!
    @IBOutlet weak var setValue1: UIButton!
    @IBOutlet weak var setValue2: UIButton!
    @IBOutlet weak var setValue3: UIButton!
    @IBOutlet weak var setValue4: UIButton!
    @IBOutlet weak var setValue5: UIButton!
    @IBOutlet weak var setValue6: UIButton!
    @IBOutlet weak var setValue7: UIButton!
    @IBOutlet weak var setValue8: UIButton!
    @IBOutlet weak var setValue9: UIButton!
    @IBOutlet weak var setValue10: UIButton!
    @IBOutlet weak var setValue11: UIButton!
    @IBOutlet weak var setValue12: UIButton!
    @IBOutlet weak var setValue13: UIButton!
    @IBOutlet weak var setValue14: UIButton!
    
    func btnDeco(_ btnNum: Int) {
        let btnArray = [setValue0, setValue1, setValue2, setValue3, setValue4, setValue5, setValue6, setValue7, setValue8, setValue9, setValue10, setValue11, setValue12, setValue13, setValue14]
        let btnTextColor = UIColor(red: 242/255, green: 44/255, blue: 113/255, alpha: 1.0)
        let btnBGcolor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        let btnBorderColor = UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1.0).cgColor
        
        btnArray[btnNum]!.backgroundColor = btnBGcolor
        btnArray[btnNum]!.layer.borderWidth = 1
        btnArray[btnNum]!.layer.borderColor = btnBorderColor
        btnArray[btnNum]!.layer.cornerRadius = 34.0
        btnArray[btnNum]!.setTitleColor(btnTextColor, for: UIControl.State.normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        for num in 0...14 {
            btnDeco(num)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "setValue" {
            let setViewController = segue.destination as! setViewController
            setViewController.selectedValue = sender as! Int?
        }
    }

    func setValue(_ valueIdNum: Int) {
        let valueArray = [0, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 9000, 9001, 9002]        
        let value = valueArray[valueIdNum]
        self.performSegue(withIdentifier: "setValue", sender: value)
    }
    
    @IBAction func setValue0(_ sender: UIButton) { setValue(0) }
    @IBAction func setValue1(_ sender: UIButton) { setValue(1) }
    @IBAction func setValue2(_ sender: UIButton) { setValue(2) }
    @IBAction func setValue3(_ sender: UIButton) { setValue(3) }
    @IBAction func setValue4(_ sender: UIButton) { setValue(4) }
    @IBAction func setValue5(_ sender: UIButton) { setValue(5) }
    @IBAction func setValue6(_ sender: UIButton) { setValue(6) }
    @IBAction func setValue7(_ sender: UIButton) { setValue(7) }
    @IBAction func setValue8(_ sender: UIButton) { setValue(8) }
    @IBAction func setValue9(_ sender: UIButton) { setValue(9) }
    @IBAction func setValue10(_ sender: UIButton) { setValue(10) }
    @IBAction func setValue11(_ sender: UIButton) { setValue(11) }
    @IBAction func setValue12(_ sender: UIButton) { setValue(12) }
    @IBAction func setValue13(_ sender: UIButton) { setValue(13) }
    @IBAction func setValue14(_ sender: UIButton) { setValue(14) }
}

//TEST for GitHub
