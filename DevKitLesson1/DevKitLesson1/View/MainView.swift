//
//  MainView.swift
//  DevKitLesson1
//
//  Created by Murilo Ribeiro de Oliveira on 03/08/22.
//

import UIKit

class MainView: UIView {
    
    init(){
        super.init(frame: .zero)
        
        setupTableView()
        setupActivityView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: PROPERTIES
    
    let activityView = UIActivityIndicatorView()
    
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .lightGray
        return tableView
    }()
    
    
    //MARK: FUNCTIONS
    

    
    private func setupTableView(){
        
        addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
    
    private func setupActivityView(){
        addSubview(activityView)
        activityView.style = .large
        activityView.startAnimating()
        activityView.translatesAutoresizingMaskIntoConstraints = false
        activityView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        activityView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
}
