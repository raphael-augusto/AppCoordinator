//
//  LoginCoordinator.swift
//  AppCoordinator
//
//  Created by Raphael Augusto on 21/09/22.
//

import UIKit

class LoginCoordinator: Coordiantor {
   
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    
    func start() {
        let viewController = LoginViewController()
        
        viewController.onRegiterTap = {
            self.showRegister()
        }
        
        viewController.onForgotTap = {
            self.showForgot()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    
    private func showRegister() {
        let coorddinator = RegisterCoordinator(navigationController: self.navigationController)
        coorddinator.start()
    }
     
    
    private func showForgot() {
//        self.navigationController.present(ForgotViewController(), animated: true)
        let coorddinator = ForgotCoordinator(navigationController: self.navigationController)
        coorddinator.start()
    }
}
