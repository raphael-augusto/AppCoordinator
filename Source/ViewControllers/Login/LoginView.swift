//
//  LoginView.swift
//  AppCoordinator
//
//  Created by Raphael Augusto on 21/09/22.
//

import UIKit


class LoginView: UIView, ConfigurableView {

    var onRegisterTap: (() -> Void)?
    var onForgotTap: (() -> Void)?
    
    private lazy var titleLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text           = "Screen - LOGIN"
        lb.font           = UIFont.systemFont(ofSize: 41, weight: .bold)
        lb.textColor      = .black
        lb.textAlignment  = .center
        
        return lb
    }()
    
    lazy var loginButton: UIButton = {
        let btn = UIButton()
        btn.configuration                       = .filled()
        btn.configuration?.cornerStyle          = .medium
        btn.configuration?.title                = "Registrar"
        btn.configuration?.baseBackgroundColor  = UIColor(red: 0.276, green: 0.388, blue: 0.946, alpha: 1)
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        btn.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        
        return btn
    }()
    
    lazy var forgotButton: UIButton = {
        let btn = UIButton()
        btn.configuration                       = .filled()
        btn.configuration?.cornerStyle          = .medium
        btn.configuration?.title                = "Esqueci minha senha"
        btn.configuration?.baseBackgroundColor  = UIColor(red: 0.276, green: 0.388, blue: 0.946, alpha: 1)
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        btn.addTarget(self, action: #selector(tappedForgotButton), for: .touchUpInside)
        
        return btn
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setup() {
        initLayout()
    }
    
}

extension LoginView {
    func initSubviews() {
        addSubview(titleLabel)
        addSubview(loginButton)
        addSubview(forgotButton)
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            loginButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            
           forgotButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 30),
           forgotButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
           forgotButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
           forgotButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}


extension LoginView {
    @objc func tappedRegisterButton() {
        self.onRegisterTap?()
    }
    
    @objc func tappedForgotButton() {
        self.onForgotTap?()
    }
}
