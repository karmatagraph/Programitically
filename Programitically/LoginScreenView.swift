//
//  LoginScreenView.swift
//  Programitically
//
//  Created by karma on 6/28/22.
//

import Foundation

extension LoginViewController {
    func setupLoginContentView() {
        view.addSubview(loginContentView)
        loginContentView.addSubview(emailTextfield)
        loginContentView.addSubview(passwordTextfield)
        loginContentView.addSubview(loginButton)
        loginContentView.translatesAutoresizingMaskIntoConstraints = false
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        loginContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        setupEmailTextfield()
        setupPasswordTextfield()
        setupLoginButton()
        
    }
    
    func setupEmailTextfield() {
        emailTextfield.translatesAutoresizingMaskIntoConstraints = false
        emailTextfield.isUserInteractionEnabled = true
        emailTextfield.backgroundColor = .white
        emailTextfield.frame.size.width = 200
        emailTextfield.frame.size.height = 20
        emailTextfield.topAnchor.constraint(
            equalTo: loginContentView.topAnchor,
            constant: 40).isActive = true
        emailTextfield.centerXAnchor.constraint(equalTo: loginContentView.centerXAnchor).isActive = true
        emailTextfield.widthAnchor.constraint(equalToConstant: 300).isActive = true
        emailTextfield.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func setupPasswordTextfield() {
        passwordTextfield.translatesAutoresizingMaskIntoConstraints = false
        passwordTextfield.isUserInteractionEnabled = true
        passwordTextfield.backgroundColor = .white
        passwordTextfield.frame.size.width = 200
        passwordTextfield.frame.size.height = 20
        passwordTextfield.topAnchor.constraint(
            equalTo: emailTextfield.bottomAnchor,
            constant: 40).isActive = true
        passwordTextfield.centerXAnchor.constraint(equalTo: loginContentView.centerXAnchor).isActive = true
        passwordTextfield.widthAnchor.constraint(equalToConstant: 300).isActive = true
        passwordTextfield.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func setupLoginButton() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.isUserInteractionEnabled = true
        loginButton.backgroundColor = .white
        loginButton.frame.size.width = 100
        loginButton.frame.size.height = 30
        loginButton.topAnchor.constraint(equalTo: passwordTextfield.bottomAnchor, constant: 40).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: loginContentView.centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
}
