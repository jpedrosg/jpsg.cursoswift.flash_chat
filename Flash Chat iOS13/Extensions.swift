//
//  Extensions.swift
//  Flash Chat iOS13
//
//  Created by João Pedro Giarrante on 24/09/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

extension UIStackView {
    
    
    
    
    func flipOrder() {
        let oldStackView : UIStackView = self
        
        for item in oldStackView.arrangedSubviews.reversed() {
            self.addArrangedSubview(item)
        }
    }
}
