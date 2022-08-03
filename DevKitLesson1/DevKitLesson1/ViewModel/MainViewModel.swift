//
//  MainViewModel.swift
//  DevKitLesson1
//
//  Created by Murilo Ribeiro de Oliveira on 03/08/22.
//

import Foundation

protocol MainViewModelDelegate: AnyObject {
    
    func didLoadingData()
    
}

class MainViewModel {
    
    weak var delegate: MainViewModelDelegate?
    private let service = Service()
    var personList: [Person] = []
    
    func getNameList(){
        
        for _ in 0..<10 {
            service.getData { (result: Result<Person, NetworkError>) in
                switch result {
                case .success(let success):
                    
                    self.personList.append(success)
                   self.delegate?.didLoadingData()
                    
                case .failure(let failure):
                    print(failure)
                }
            }
        }
 
    }
    
}
