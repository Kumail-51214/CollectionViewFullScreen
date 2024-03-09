//
//  IconView.swift
//  CollectionViewFullScreen
//
//  Created by Muhammad Kumail on 1/1/24.
//

import UIKit

class IconView: UIView {
    
    let viewForComponent = View(background: .white, cornerRadius: 22)
    
    let imageView = ImageView(image: "Group 3")
    
    let nameLabel = Label(text: "Text is text", font: UIFont.systemFont(ofSize: 16, weight: .bold), textColor: .black)

    init(image:String,nameText:String, cornerRadius:CGFloat, background:UIColor ) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.imageView.image = UIImage(named: image)
        self.nameLabel.text = nameText
        self.layer.cornerRadius = cornerRadius
        self.backgroundColor = background
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(viewForComponent)
        viewForComponent.addSubview(imageView)
        viewForComponent.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
        
            viewForComponent.topAnchor.constraint(equalTo: topAnchor),
            viewForComponent.bottomAnchor.constraint(equalTo: bottomAnchor),
            viewForComponent.widthAnchor.constraint(equalToConstant: 165),
            viewForComponent.heightAnchor.constraint(equalToConstant: 162),
            
            imageView.topAnchor.constraint(equalTo: viewForComponent.topAnchor, constant: 16),
            imageView.leadingAnchor.constraint(equalTo: viewForComponent.leadingAnchor, constant: 16),
            imageView.widthAnchor.constraint(equalToConstant: 70),
            imageView.heightAnchor.constraint(equalToConstant: 70),
            
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor,constant: 12),
            nameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor)
        
        ])
    }
}
