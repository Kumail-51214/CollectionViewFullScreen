//
//  PdfReaderViewController.swift
//  CollectionViewFullScreen
//
//  Created by Muhammad Kumail on 2/1/24.
//

import UIKit

class PdfReaderViewController: UIViewController {

    let headingLabel = Label(text: "Welcome to PdfReader", font: .systemFont(ofSize: 18, weight: .black), textColor: .black)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .systemGray5
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(headingLabel)
        
        NSLayoutConstraint.activate([
        
            headingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            headingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)
        
        ])
    }

}
