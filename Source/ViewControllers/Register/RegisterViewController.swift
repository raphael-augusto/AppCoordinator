//
//  RegisterViewController.swift
//  AppCoordinator
//
//  Created by Raphael Augusto on 21/09/22.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var onLoginTap: (()-> Void)?
    
    lazy var registerView: RegisterView = {
        let view = RegisterView()
        
        view.onLoginTap = {
            self.onLoginTap?()
        }
        
        return view
    }()
    
    
    override func loadView() {
        self.view = registerView
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
