//
//  MainView.swift
//  DevKitLesson1
//
//  Created by Murilo Ribeiro de Oliveira on 03/08/22.
//

import UIKit

class MainView: UIView, UITableViewDelegate {
    
    init(){
        super.init(frame: .zero)
        
        setupNavigationBar()
        setupTableView()
        setupActivityView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: PROPERTIES
    
    let activityView = UIActivityIndicatorView()
    
    let navigBar: UINavigationBar = {
        let navigBar = UINavigationBar()
        let navItem = UINavigationItem(title: "Contacts")
        navItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.clockwise"), style: .plain, target: nil, action: #selector(MainViewController.reloadRequestData))
        navItem.rightBarButtonItem?.tintColor = .black
        navigBar.setItems([navItem], animated: true)
        navigBar.prefersLargeTitles = true
        return navigBar
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .lightGray
        return tableView
    }()
    
    
    //MARK: FUNCTIONS
    
    
    
    private func setupNavigationBar(){
        addSubview(navigBar)
        navigBar.translatesAutoresizingMaskIntoConstraints = false
        navigBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        navigBar.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        navigBar.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        
    }
    
    
    private func setupTableView(){
        
        addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: navigBar.bottomAnchor).isActive = true
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
