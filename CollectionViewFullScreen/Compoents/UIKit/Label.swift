//
//  Label.swift
//  CollectionViewFullScreen
//
//  Created by Muhammad Kumail on 11/27/23.
//

import UIKit

class Label: UILabel {

    required init(text:String, font:UIFont, textColor:UIColor) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.font = font
        self.textColor = textColor
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
