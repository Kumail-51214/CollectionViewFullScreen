//
//  ScreenView.swift
//  CollectionViewFullScreen
//
//  Created by Muhammad Kumail on 11/28/23.
//

import UIKit

class ScreenView: UIView {
    
    let rectangleView = ImageView(image: "Group 3")
    
    let maskImage = ImageView(image: "Group 10")
            
    let vectorImage = ImageView(image: "Group 11")
    
    let heading = Label(text: "Some Text", font: UIFont.systemFont(ofSize: 30, weight: .black), textColor: .black)
        
    
        let detailText:UILabel = {
            let lbl = UILabel()
            lbl.translatesAutoresizingMaskIntoConstraints = false
            lbl.font = .systemFont(ofSize: 14, weight: .light)
            lbl.numberOfLines = 0
            return lbl
        }()
    
//    var view = View(background: .systemPurple, cornerRadius: 12)
//    let labelInView = Label(text: "Get Started", font: UIFont.systemFont(ofSize: 14, weight: .black), textColor: .white)

    init()
        {
            super.init(frame: .zero)
            self.translatesAutoresizingMaskIntoConstraints = false
            
            setupViews()
            
        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
     func setupViews() {
            
            addSubview(rectangleView)
            rectangleView.addSubview(maskImage)
            rectangleView.addSubview(vectorImage)
            addSubview(heading)
            addSubview(detailText)
//            addSubview(view)
//            view.addSubview(labelInView)
//
            NSLayoutConstraint.activate([
                
                rectangleView.centerYAnchor.constraint(equalTo: centerYAnchor),
                rectangleView.centerXAnchor.constraint(equalTo: centerXAnchor),
                rectangleView.widthAnchor.constraint(equalToConstant: 345),
                rectangleView.heightAnchor.constraint(equalToConstant: 441),
                
                maskImage.topAnchor.constraint(equalTo: rectangleView.topAnchor),
                maskImage.widthAnchor.constraint(equalToConstant: 345),
                
                vectorImage.bottomAnchor.constraint(equalTo: rectangleView.bottomAnchor, constant: -10),
                vectorImage.centerXAnchor.constraint(equalTo: rectangleView.centerXAnchor),
                vectorImage.widthAnchor.constraint(equalToConstant: 313),
                vectorImage.heightAnchor.constraint(equalToConstant: 251),
                
                heading.topAnchor.constraint(equalTo: rectangleView.bottomAnchor, constant: 20),
                heading.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                detailText.topAnchor.constraint(equalTo: heading.bottomAnchor, constant: 20),
                detailText.centerXAnchor.constraint(equalTo: centerXAnchor),
                detailText.widthAnchor.constraint(equalToConstant: 313),
//                
//                view.topAnchor.constraint(equalTo: detailText.bottomAnchor, constant: 74),
//                view.leadingAnchor.constraint(equalTo: rectangleView.leadingAnchor ),
//                view.widthAnchor.constraint(equalToConstant: 345),
//                view.heightAnchor.constraint(equalToConstant: 52),
//                
//                labelInView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//                labelInView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        }
}
