//
//  RedViewController.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

final class RedViewController: UIViewController {
    
    var model: RedModel?
    
    private let stackView = UIStackView()
    private let yellowButton = UIButton()
    private let greenButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAttributes()
        layoutViews()
    }
    
    deinit {
        print("RedViewController deinit")
    }
}

extension RedViewController {
    private func setAttributes() {
        
        self.view.backgroundColor = .systemPink
        
        self.navigationController?.navigationBar.topItem?.title = "Red"
        
        stackView.axis = .vertical
        
        yellowButton.backgroundColor = .yellow
        yellowButton.addTarget(self, action: #selector(yellowButtonAction), for: .touchUpInside)
        yellowButton.setTitle("moveToYellow", for: .normal)
        yellowButton.setTitleColor(.black, for: .normal)
        
        greenButton.backgroundColor = .green
        greenButton.addTarget(self, action: #selector(greenButtonAction), for: .touchUpInside)
        greenButton.setTitle("moveToGreen", for: .normal)
        greenButton.setTitleColor(.black, for: .normal)
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
        
        stackView.addArrangedSubviews([yellowButton, greenButton])
    }
}

extension RedViewController {
    
    @objc func yellowButtonAction() {
        model?.moveToYellow()
    }
    
    @objc func greenButtonAction() {
        model?.moveToGreen()
    }
}
