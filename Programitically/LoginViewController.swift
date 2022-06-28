//
//  LoginViewController.swift
//  Programitically
//
//  Created by karma on 6/28/22.
//

import UIKit

class LoginViewController: UIViewController {

    
    let loginContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .cyan
        return view 
    }()
    
    let emailTextfield: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "email"
        return textfield
    }()
    
    let passwordTextfield: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "password"
        return textfield
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.addTarget(
            LoginViewController.self,
            action: #selector(buttonTapped),
            for: UIControl.Event.touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
        setupLoginContentView()
    }

    
    @objc func buttonTapped(sender: UIButton) {
        print("buttonTapped")
    }
    
}

