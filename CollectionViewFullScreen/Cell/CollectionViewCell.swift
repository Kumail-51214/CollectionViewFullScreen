//
//  CollectionViewCell.swift
//  CollectionViewFullScreen
//
//  Created by Muhammad Kumail on 11/28/23.
//

import UIKit

protocol TapOnView {
    func didSelectView()

}

class CollectionViewCell: UICollectionViewCell {
    
    var delegate:TapOnView?
    
    let customView = ScreenView()
    
    let view = View(background: .systemPurple, cornerRadius: 12)
    let labelInView = Label(text: "Get Started", font: UIFont.systemFont(ofSize: 14, weight: .bold), textColor: .white)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        tapOnView()
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func tapOnView() {
        
        let tapView = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tapView)
    }
    
    func setupView() {
        
            addSubview(customView)
            addSubview(view)
            view.addSubview(labelInView)

        NSLayoutConstraint.activate([
            customView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -140),
            customView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            view.topAnchor.constraint(equalTo: bottomAnchor, constant: -140),
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            view.heightAnchor.constraint(equalToConstant: 52),
            view.widthAnchor.constraint(equalToConstant: 345),

            labelInView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelInView.centerYAnchor.constraint(equalTo: view.centerYAnchor)

        ])
    }
    
    @objc func handleTap() {
        delegate?.didSelectView()
        
    }
    
}
