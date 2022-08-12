//
//  MainViewController.swift
//  DevKit1stLesson
//
//  Created by Murilo Ribeiro de Oliveira on 12/08/22.
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
           let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
           let action = UIAlertAction(title: "Ok", style: .default)
           alert.addAction(action)
           present(alert, animated: true)
           
       }
       
   }


   extension MainViewController: UITableViewDelegate, UITableViewDataSource {
       
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           viewModel.namelist.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = UITableViewCell()
           cell.backgroundColor = .lightGray
           cell.textLabel?.text = viewModel.namelist[indexPath.row].name
           return cell
       }
       
       
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
           guard let selectedCell:UITableViewCell = tableView.cellForRow(at: indexPath) else {return}
           selectedCell.contentView.backgroundColor = UIColor.darkGray
           
           UIView.animate(withDuration: 0.5, delay: 0) {
               selectedCell.contentView.backgroundColor = UIColor.lightGray
               
           }
           getAlert(title: "Name" , message: viewModel.namelist[indexPath.row].name)
           
       }
       
   }

extension MainViewController: MainViewModelDelegate {
    func getName() {
        mainView.tableView.reloadData()
    }
    
    
}

