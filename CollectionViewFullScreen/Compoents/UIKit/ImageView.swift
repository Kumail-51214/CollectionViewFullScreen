//
//  ImageView.swift
//  CollectionViewFullScreen
//
//  Created by Muhammad Kumail on 11/27/23.
//

import UIKit

class ImageView: UIImageView {

    required init(image:String) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.image = UIImage(named: image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
