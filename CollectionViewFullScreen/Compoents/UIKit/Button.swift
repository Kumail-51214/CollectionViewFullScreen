//
//  button.swift
//  CollectionViewFullScreen
//
//  Created by Muhammad Kumail on 1/1/24.
//

import UIKit

class Button: UIButton {

    required init(name:String, background:UIColor, font:UIFont) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(name, for: .normal)
        self.titleLabel?.font = font
        self.backgroundColor = background
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
