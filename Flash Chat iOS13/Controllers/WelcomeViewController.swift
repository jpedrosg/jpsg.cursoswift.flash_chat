//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let titleText = titleLabel.text as String? {
            titleLabel.text = ""
            for i in 0...titleText.count-1 {
                Timer.scheduledTimer(withTimeInterval: 0.2 * Double(i), repeats: false) { (timer) in
                    self.titleLabel.text?.append(titleText[titleText.index(titleText.startIndex, offsetBy: i)])
                }
                
            }
        }
        
    }
    

}
