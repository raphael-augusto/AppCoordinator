//
//  ForgotCoordinator.swift
//  AppCoordinator
//
//  Created by Raphael Augusto on 22/09/22.
//

import UIKit

class ForgotCoordinator: Coordiantor {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        let viewController = ForgotViewController()
                
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
}
