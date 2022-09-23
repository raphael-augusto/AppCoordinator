//
//  ForgotViewController.swift
//  AppCoordinator
//
//  Created by Raphael Augusto on 22/09/22.
//

import UIKit


class ForgotViewController: UIViewController {
    
    lazy var forgotView: ForgotView = {
        let view = ForgotView()
        
        return view
    }()
    
    
    override func loadView() {
        self.view = forgotView
    }
    
}
