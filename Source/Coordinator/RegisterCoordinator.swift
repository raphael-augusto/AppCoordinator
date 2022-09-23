//
//  RegisterCoordinator.swift
//  AppCoordinator
//
//  Created by Raphael Augusto on 21/09/22.
//

import UIKit

class RegisterCoordinator: Coordiantor {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        let viewController = RegisterViewController()
        viewController.onLoginTap = {
            self.showLogin()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    
    private func showLogin() {
        self.navigationController.popViewController(animated: true)
//        self.navigationController.dismiss(animated: true, completion: nil)
    }
}
