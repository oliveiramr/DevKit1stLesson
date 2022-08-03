//
//  MainViewModel.swift
//  DevKitLesson1
//
//  Created by Murilo Ribeiro de Oliveira on 03/08/22.
//

import Foundation

protocol MainViewModelDelegate: AnyObject {
    
    func didLoadedData()
    
}

class MainViewModel {
    
    weak var delegate: MainViewModelDelegate?
    private let service = Service()
    var personList: [Person] = []
    
    func getNameList(){
        
        var numberOfRequests = 0
        
        for _ in 0..<10 {
            service.getData { (result: Result<Person, NetworkError>) in
                switch result {
                case .success(let success):
                        
                    self.personList.append(success)
                    numberOfRequests += 1
                    
                    if numberOfRequests == 10{
                        self.delegate?.didLoadedData()
                    }
                case .failure(let failure):
                    print(failure)
                }
            }
        }
    }
    
}
