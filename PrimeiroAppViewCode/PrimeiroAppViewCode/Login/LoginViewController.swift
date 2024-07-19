//
//  ViewController.swift
//  PrimeiroAppViewCode
//
//  Created by Giulia Marinho on 17/07/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    var screen: LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configProtocols()
        
    }
    
    func configProtocols(){
        screen?.delegate = self
        screen?.emailTextField.delegate = self
        screen?.passwordTextField.delegate = self
    }
}

extension LoginViewController: LoginScreenProtocol {
    func tappedregisterButton() {
//        present(RegisterScreenViewController(), animated: true)
        
        navigationController?.pushViewController(RegisterScreenViewController(), animated: true)
    }
    
    func tappedLoginButton() {
        print(#function)
    }
}
extension LoginViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print(#function)
        return true
    }
}
