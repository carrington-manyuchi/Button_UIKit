//
//  ViewController.swift
//  Button_UIKit
//
//  Created by DA MAC M1 157 on 2023/07/05.
//

import UIKit

class ViewController: UIViewController {
    
    private var myButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Programmed Button", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleShadowColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.blue
        button.layer.shadowOffset = CGSize(width: 3, height: 3)
        button.layer.shadowColor = UIColor.brown.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.cornerRadius = 30
        button.titleLabel?.font = UIFont(name: "Avenir", size: 25)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        configureConstraints()
        myButton.addTarget(self, action: #selector(myButtonClicked), for: .touchUpInside)
        
    }
    
    // function called when button clicked
    @objc private func myButtonClicked() {
        view.backgroundColor = .brown
    }

    private func configureViews() {
        view.addSubview(myButton)
    }
    
    private func configureConstraints() {
        let myButtonConstraints = [
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            myButton.heightAnchor.constraint(equalToConstant: 65),
            myButton.widthAnchor.constraint(equalToConstant: 260)
        ]
        
        
        NSLayoutConstraint.activate(myButtonConstraints)
    }

}

