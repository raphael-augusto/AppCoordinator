//
//  LoginViewController.swift
//  AppCoordinator
//
//  Created by Raphael Augusto on 21/09/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    var onRegiterTap: (()-> Void)?
    var onForgotTap: (()-> Void)?
    
    lazy var loginView: LoginView = {
        let view = LoginView()
        
        //action
        view.onRegisterTap = {
            self.onRegiterTap?()
        }
        
        view.onForgotTap = {
            self.onForgotTap?()
        }
        
        return view
    }()
    
    
    override func loadView() {
        self.view = loginView
    }
}
