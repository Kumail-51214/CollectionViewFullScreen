//
//  SecondViewController.swift
//  CollectionViewFullScreen
//
//  Created by Muhammad Kumail on 1/1/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    let helloLabel = Label(text: "Hello,", font: UIFont.systemFont(ofSize: 24, weight: .light), textColor: .black)
    
    let profileView = ImageView(image: "Ellipse")
    let profileImage = ImageView(image: "person.fill")
    
    let headingLabel = Label(text: "All Document Reader", font: UIFont.systemFont(ofSize: 22, weight: .bold), textColor: .black)
    
    let advertismentView = View(background: .white, cornerRadius: 22)
    let adImage = ImageView(image: "Rectangle 180")
    
    let viewForMsWord = IconView(image: "Component 1", nameText: "Ms Word", cornerRadius: 22, background: .white)
    
    let viewForMsExcel = IconView(image: "Component 2", nameText: "Ms Excel", cornerRadius: 22, background: .white)
    
    let viewForPowerPoint = IconView(image: "Component 3", nameText: "Power Point", cornerRadius: 22, background: .white)
    
    let viewForPdfReader = IconView(image: "Component 4", nameText: "Pdf Reader", cornerRadius: 22, background: .white)
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        view.backgroundColor = .systemGray5
        
        tapOnPdfReader()
        tapOnPowerPoint()
        tapOnMsWord()
        tapOnMsExcel()
        
    }
    
    func setupViews() {
        view.addSubview(helloLabel)
        view.addSubview(headingLabel)
        view.addSubview(profileView)
        profileView.addSubview(profileImage)
        view.addSubview(advertismentView)
        advertismentView.addSubview(adImage)
        view.addSubview(viewForMsWord)
        view.addSubview(viewForMsExcel)
        view.addSubview(viewForPowerPoint)
        view.addSubview(viewForPdfReader)
        
        NSLayoutConstraint.activate([
            
            helloLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 78),
            helloLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            
            profileView.topAnchor.constraint(equalTo: helloLabel.topAnchor),
            profileView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64),
            profileView.widthAnchor.constraint(equalToConstant: 40),
            profileView.heightAnchor.constraint(equalToConstant: 40),
            
            profileImage.centerXAnchor.constraint(equalTo: profileView.centerXAnchor),
            profileImage.centerYAnchor.constraint(equalTo: profileView.centerYAnchor),
            profileImage.widthAnchor.constraint(equalToConstant: 24),
            profileImage.heightAnchor.constraint(equalToConstant: 24),
            
            headingLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 15),
            headingLabel.leadingAnchor.constraint(equalTo: helloLabel.leadingAnchor),
            
            advertismentView.topAnchor.constraint(equalTo: headingLabel.bottomAnchor, constant: 30),
            advertismentView.leadingAnchor.constraint(equalTo: helloLabel.leadingAnchor),
            advertismentView.widthAnchor.constraint(equalToConstant: 345),
            advertismentView.heightAnchor.constraint(equalToConstant: 222),
            
            adImage.topAnchor.constraint(equalTo: advertismentView.topAnchor),
            adImage.leadingAnchor.constraint(equalTo: advertismentView.leadingAnchor),
            adImage.widthAnchor.constraint(equalToConstant: 345),
            adImage.heightAnchor.constraint(equalToConstant: 134),
            
            viewForMsWord.topAnchor.constraint(equalTo: view.topAnchor, constant: 415),
            viewForMsWord.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            viewForMsWord.widthAnchor.constraint(equalToConstant: 165),
            viewForMsWord.heightAnchor.constraint(equalToConstant: 162),
            
            viewForMsExcel.topAnchor.constraint(equalTo: viewForMsWord.topAnchor),
            viewForMsExcel.leadingAnchor.constraint(equalTo: viewForMsWord.trailingAnchor, constant: 15),
            viewForMsExcel.widthAnchor.constraint(equalToConstant: 165),
            viewForMsExcel.heightAnchor.constraint(equalToConstant: 162),
            
            viewForPowerPoint.topAnchor.constraint(equalTo: viewForMsWord.bottomAnchor, constant:15),
            viewForPowerPoint.leadingAnchor.constraint(equalTo: viewForMsWord.leadingAnchor),
            viewForPowerPoint.widthAnchor.constraint(equalToConstant: 165),
            viewForPowerPoint.heightAnchor.constraint(equalToConstant: 162),
        
            viewForPdfReader.topAnchor.constraint(equalTo: viewForPowerPoint.topAnchor),
            viewForPdfReader.leadingAnchor.constraint(equalTo: viewForMsExcel.leadingAnchor),
            viewForPdfReader.widthAnchor.constraint(equalToConstant: 165),
            viewForPdfReader.heightAnchor.constraint(equalToConstant: 162),
            
        ])
    }
    
    func tapOnPdfReader() {
//        let tappingView = UITapGestureRecognizer(target: self, action: #selector(handleTapPdf))
//        viewForPdfReader.addGestureRecognizer(tappingView)
        viewForPdfReader.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapPdf)))
    }
    
    func tapOnPowerPoint() {
        let tappingView = UITapGestureRecognizer(target: self, action: #selector(handleTapPowerPoint))
        viewForPowerPoint.addGestureRecognizer(tappingView)
    }
    
    func tapOnMsExcel() {
        let tappingView = UITapGestureRecognizer(target: self, action: #selector(handleTapMsExcel))
        viewForMsExcel.addGestureRecognizer(tappingView)
    }
    
    func tapOnMsWord() {
        let tappingView = UITapGestureRecognizer(target: self, action: #selector(handleTapMsWord))
        viewForMsWord.addGestureRecognizer(tappingView)
    }
    
    @objc func handleTapPdf() {
        
        let controller =  PdfReaderViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func handleTapPowerPoint() {
        let controller =  PowerPointViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func handleTapMsExcel() {
        let controller =  MsExcelViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func handleTapMsWord() {
        let controller =  MsWordViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
}

