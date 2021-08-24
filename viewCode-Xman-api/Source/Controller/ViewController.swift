//
//  ViewController.swift
//  viewCode-Xman-api
//
//  Created by Gabriel on 24/08/21.
//

import UIKit

class ListViewController: UIViewController {
    

    let xmanCellReuseIdentifier = "ListReuseIdentifier"
    var safeArea: UILayoutGuide!
    // var questionData: [QuestionModel] = []
    
    lazy var topTitle: UILabel = {
        let label = UILabel()
        label.text = "❌ Man"
        label.font = UIFont.monospacedDigitSystemFont(ofSize: 45, weight: UIFont.Weight.heavy)
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .purple
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    lazy var xmanTableView: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        
      //  createAnyData()
          setupViews()
          setupTableView()
          setupConstraints()
        
    }

    func createAnyData() {
   //     let question1 = QuestionModel(question: "Olá como vai você")
    //    questionData = [question1, question2, question3, question4]

    }
    
    func setupViews() {
        safeArea = view.layoutMarginsGuide
        view.addSubview(topTitle)
        view.addSubview(xmanTableView)
        
       
    }
    
    func setupTableView() {
        xmanTableView.delegate = self
        xmanTableView.dataSource = self
        xmanTableView.register(XmanTableViewCell.self, forCellReuseIdentifier: xmanCellReuseIdentifier)
    }
    
    func setupConstraints() {
        setupConstraintsTopTitle()
        setupConstraintsXmanTableView()
    }
    
    func setupConstraintsTopTitle() {
        NSLayoutConstraint.activate([
            topTitle.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 40),
            topTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
           topTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:  -30),
        ])
    }
    
    func setupConstraintsXmanTableView() {
        NSLayoutConstraint.activate([
            xmanTableView.topAnchor.constraint(equalTo: topTitle.bottomAnchor, constant: 30),
            xmanTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            xmanTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:  -30),
            xmanTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -UIScreen.main.bounds.height / 4),
        ])
    }
}


extension ListViewController: UITableViewDelegate {
    
}


extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: xmanCellReuseIdentifier, for: indexPath) as! XmanTableViewCell
       // let questionObject = questionData[indexPath.row]
       // cell.configure(with: questionObject)
        cell.backgroundColor = .lightGray
        return cell
    }
    
    
}
