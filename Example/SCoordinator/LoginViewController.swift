//
//  LoginViewController.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2021/01/16.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit

final class LoginViewController: UIViewController {
    
    var model: LoginModel?
    
    private let stackView = UIStackView()
    private let signInButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAttributes()
        layoutViews()
    }
    
    deinit {
        print("LoginViewController deinit")
    }
}

extension LoginViewController {
    
    private func setAttributes() {
        
        self.view.backgroundColor = .white
        
        stackView.axis = .vertical
        
        signInButton.backgroundColor = .systemBlue
        signInButton.addTarget(self, action: #selector(signInButtonAction), for: .touchUpInside)
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.setTitleColor(.black, for: .normal)
    }
    
    private func layoutViews() {
        
        self.view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [
                stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
            ]
        )
        
        stackView.addArrangedSubview(signInButton)
    }
}

extension LoginViewController {
    @objc func signInButtonAction() {
        model?.moveToMain()
    }
}
