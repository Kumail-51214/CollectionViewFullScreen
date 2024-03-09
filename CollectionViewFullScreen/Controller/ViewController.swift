//
//  ViewController.swift
//  CollectionViewFullScreen
//
//  Created by Muhammad Kumail on 11/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    let collectionView:UICollectionView = {
       let view = UICollectionViewFlowLayout()
        view.scrollDirection = .horizontal
        let cv : UICollectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: view)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsHorizontalScrollIndicator = false
        cv.isPagingEnabled = true
        cv.clipsToBounds = true
        return cv
    }()
    
    let arrayData:[Data] = [Data(vectorImages: "Group 3", maskImages: "nil", rectangleImage: "nil", headingLabel: "Document Reader", detailText: "Lorem ipsum dolor sit amet consectetur. Sit tortor malesuada egestas velit magna. Egestas congue nisi tincidunt urna."),
                Data(vectorImages: "Group 10", maskImages: "Mask group-2", rectangleImage: "Rectangle 144", headingLabel:"Read and View", detailText: "Lorem ipsum dolor sit amet consectetur. Sit tortor malesuada egestas velit magna. Egestas congue nisi tincidunt urna."),
                Data(vectorImages: "Group 11", maskImages: "Mask group-3", rectangleImage: "Rectangle 144", headingLabel: "Read and View", detailText: "Lorem ipsum dolor sit amet consectetur. Sit tortor malesuada egestas velit magna. Egestas congue nisi tincidunt urna."),
                Data(vectorImages: "Group 12", maskImages: "Mask group-4", rectangleImage: "Rectangle 144", headingLabel: "Read and View", detailText: "Lorem ipsum dolor sit amet consectetur. Sit tortor malesuada egestas velit magna. Egestas congue nisi tincidunt urna.")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setDelegatesAndDatasource()
        registerCell()
        
    }
    
    func setupView() {
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
    }
    
    func setDelegatesAndDatasource() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func registerCell() {
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    }
    

}

extension ViewController: UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,TapOnView {
 
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)as! CollectionViewCell
        cell.customView.vectorImage.image = UIImage(named: "\(arrayData[indexPath.row].vectorImages)")
        cell.customView.maskImage.image = UIImage(named: "\(arrayData[indexPath.row].maskImages)")
        cell.customView.rectangleView.image = UIImage(named:"\(arrayData[indexPath.row].rectangleImage)")
        cell.customView.heading.text = arrayData[indexPath.row].headingLabel
        cell.customView.detailText.text = arrayData[indexPath.row].detailText
        
//        cell.customView.view = arrayData[indexPath.row].view as! View
//        cell.customView.labelInView.text = arrayData[indexPath.row].labelInView

        cell.delegate = self
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 385 , height: 800)
    }

    func didSelectView() {
        let controller = SecondViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
