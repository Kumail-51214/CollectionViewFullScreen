//
//  View.swift
//  CollectionViewFullScreen
//
//  Created by Muhammad Kumail on 11/27/23.
//

import UIKit

class View: UIView {

    required init(background:UIColor , cornerRadius:CGFloat) {
        super.init(frame: .zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = background
        self.layer.cornerRadius = cornerRadius
        self.isUserInteractionEnabled = true
        
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
    
    @objc func handleTap() {
        let cotroller = SecondViewController()
        self.inputViewController?.navigationController?.pushViewController(cotroller, animated: true)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
