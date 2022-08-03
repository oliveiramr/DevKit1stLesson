//
//  MainViewController.swift
//  DevKitLesson1
//
//  Created by Murilo Ribeiro de Oliveira on 03/08/22.
//

import UIKit

class MainViewController: UIViewController {

    
    //MARK: PROPERTIES
    
    private let mainView = MainView()
    private let viewModel = MainViewModel()
    
    
    //MARK: FUNCTIONS
    override func loadView() {
        
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.tableView.delegate = self
        mainView.tableView.dataSource = self
        viewModel.delegate = self
        viewModel.getNameList()
      
    }
    
    private func getAlert(title: String, message: String){
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
            
        }


}


extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = .lightGray
        cell.textLabel?.text = viewModel.personList[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        getAlert(title: viewModel.personList[indexPath.row].name, message: "Adress: \(viewModel.personList[indexPath.row].address)")
    }
    
}


extension MainViewController: MainViewModelDelegate {
    func didLoadingData() {
        mainView.tableView.reloadData()
        mainView.activityView.stopAnimating()
    }
}