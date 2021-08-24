//
//  DetailViewController.swift
//  viewCode-Xman-api
//
//  Created by Gabriel on 24/08/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    var safeArea: UILayoutGuide!
    var image = UIImage()
    
    
    lazy var imageViewDetail: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.backgroundColor = .systemPink
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage()
        return image
    }()
    
    lazy var firstLabelDetail: UILabel = {
        let label = UILabel()
        label.text = "first"
        label.font = UIFont.monospacedDigitSystemFont(ofSize: 25, weight: UIFont.Weight.heavy)
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .systemGray
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    lazy var secondLabelDetail: UILabel = {
        let label = UILabel()
        label.text = "second"
        label.font = UIFont.monospacedDigitSystemFont(ofSize: 25, weight: UIFont.Weight.heavy)
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .systemGray
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    lazy var thirdLabelDetail: UILabel = {
        let label = UILabel()
        label.text = "third"
        label.font = UIFont.monospacedDigitSystemFont(ofSize: 25, weight: UIFont.Weight.heavy)
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .systemGray
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    lazy var fourthLabelDetail: UILabel = {
        let label = UILabel()
        label.text = "fourth"
        label.font = UIFont.monospacedDigitSystemFont(ofSize: 25, weight: UIFont.Weight.heavy)
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .systemGray
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
        
        imageViewDetail.image = image
        firstLabelDetail.text = "\("oi")"
        secondLabelDetail.text = "\("oi")"
        thirdLabelDetail.text = "\("oi")"
        fourthLabelDetail.text = "\("oi")"
       
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func setupViews() {
        safeArea = view.layoutMarginsGuide
        view.backgroundColor = .systemBackground
        view.addSubview(imageViewDetail)
        view.addSubview(firstLabelDetail)
        view.addSubview(secondLabelDetail)
        view.addSubview(thirdLabelDetail)
        view.addSubview(fourthLabelDetail)
    
    }
    
    
    func setupConstraints() {
        constrainImageViewDetail()
        constrainFirstLabel()
        constrainSecondLabel()
        constrainThirdLabel()
        constrainFourthLabel()
       
    }
    
    private  func constrainImageViewDetail(){
        let constraint = [
            imageViewDetail.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 0),
            imageViewDetail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            imageViewDetail.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            imageViewDetail.heightAnchor.constraint(equalToConstant: 280),
        ]
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
    
    private  func constrainFirstLabel(){
        let constraint = [
            firstLabelDetail.topAnchor.constraint(equalTo: imageViewDetail.bottomAnchor, constant: 35),
            firstLabelDetail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            firstLabelDetail.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:  -40),
        ]
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
    
    private  func constrainSecondLabel(){
        let constraint = [
           secondLabelDetail.topAnchor.constraint(equalTo: firstLabelDetail.bottomAnchor, constant: 35),
           secondLabelDetail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
           secondLabelDetail.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:  -40),
        ]
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
    
    private  func constrainThirdLabel(){
        let constraint = [
            thirdLabelDetail.topAnchor.constraint(equalTo: secondLabelDetail.bottomAnchor, constant: 35),
            thirdLabelDetail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            thirdLabelDetail.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:  -40),
        ]
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
    
    private  func constrainFourthLabel(){
        let constraint = [
          fourthLabelDetail.topAnchor.constraint(equalTo: thirdLabelDetail.bottomAnchor, constant: 35),
          fourthLabelDetail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
          fourthLabelDetail.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:  -40),
        ]
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
  
    
}
