//
//  ForgotView.swift
//  AppCoordinator
//
//  Created by Raphael Augusto on 22/09/22.
//

import UIKit


class ForgotView: UIView, ConfigurableView {
    
    private lazy var titleLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text           = "Screen - Esqueci minha senha"
        lb.font           = UIFont.systemFont(ofSize: 24, weight: .bold)
        lb.textColor      = .black
        lb.textAlignment  = .center
        
        return lb
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

extension ForgotView {
    func initSubviews() {
        addSubview(titleLabel)
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}

