//
//  MainViewModel.swift
//  DevKit1stLesson
//
//  Created by Murilo Ribeiro de Oliveira on 12/08/22.
//


protocol MainViewModelDelegate : AnyObject {
    func getName()
    
}

class MainViewModel {
    
    private let service = Service()
    weak var delegate: MainViewModelDelegate?
    
    var namelist: [Person] = []
    
    func getNameList(){
        namelist = service.names
        delegate?.getName()
        
    }
    
}
