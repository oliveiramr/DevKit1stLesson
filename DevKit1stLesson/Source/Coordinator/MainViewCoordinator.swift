//
//  MainViewCoordinator.swift
//  DevKit1stLesson
//
//  Created by Murilo Ribeiro de Oliveira on 12/08/22.
//

import Foundation
import UIKit

class MainViewCoordinator : Coordinator {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = MainViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    
}
