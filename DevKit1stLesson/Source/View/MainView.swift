//
//  MainView.swift
//  DevKit1stLesson
//
//  Created by Murilo Ribeiro de Oliveira on 12/08/22.
//

import UIKit

import UIKit

class MainView: UIView, UITableViewDelegate {
    
    init(){
        super.init(frame: .zero)
        setupTableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: PROPERTIES
    
    
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
    
}
