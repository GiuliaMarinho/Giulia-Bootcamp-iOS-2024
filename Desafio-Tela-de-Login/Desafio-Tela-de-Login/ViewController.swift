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
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var eyePasswordImageView: UIImageView!
    @IBOutlet weak var eyeConfirmPasswordView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    func configElements() {
        view.backgroundColor = .orange
        
        emailTextField.placeholder = "Digite seu email:"
        emailTextField.keyboardType = .emailAddress
        emailTextField.autocorrectionType = .no
        emailTextField.delegate = self
        emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        passwordTextField.placeholder = "Digite sua senha:"
        passwordTextField.autocorrectionType = .no
        passwordTextField.isSecureTextEntry = false
        passwordTextField.delegate = self
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        confirmthePassword.placeholder = "Confirme sua senha:"
        confirmthePassword.autocorrectionType = .no
        confirmthePassword.isSecureTextEntry = false
        confirmthePassword.delegate = self
        confirmthePassword.layer.borderColor = UIColor.lightGray.cgColor
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderColor = UIColor.lightGray.cgColor
    }
    
      func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return true
      }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailPattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailPattern)
        return emailPred.evaluate(with: email)
    }
    
    func isValidPassword(_ password: String) -> Bool {
        let passwordPattern = ".{6,}"
        let passwordPred = NSPredicate(format: "SELF MATCHES %@", passwordPattern)
        return passwordPred.evaluate(with: password)
    }
    
    @IBAction func tapepdLoginButton(_ sender: UIButton) {
        print(#function)
    }
}
