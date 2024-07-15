//
//  ViewController.swift
//  Desafio-Tela-de-Login
//
//  Created by Giulia Marinho on 11/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmthePassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configElements()
    }
    
    func configElements() {
        
        emailTextField.placeholder = "Digite seu email:"
        emailTextField.keyboardType = .emailAddress
        emailTextField.autocorrectionType = .no
        emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        passwordTextField.placeholder = "Digite sua senha:"
        passwordTextField.autocorrectionType = .no
        passwordTextField.isSecureTextEntry = true
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor

        confirmthePassword.placeholder = "Confirme sua senha:"
        confirmthePassword.autocorrectionType = .no
        confirmthePassword.isSecureTextEntry = true
        confirmthePassword.layer.borderColor = UIColor.lightGray.cgColor
    }
}

