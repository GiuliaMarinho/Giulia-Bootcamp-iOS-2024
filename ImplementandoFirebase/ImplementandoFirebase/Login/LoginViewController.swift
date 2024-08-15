//
//  ViewController.swift
//  ImplementandoFirebase
//
//  Created by Caio Fabrini on 12/08/24.
//

import UIKit
import FirebaseAuth


class LoginViewController: UIViewController {

  var screen: LoginScreen?

  override func loadView() {
    screen = LoginScreen()
    view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    screen?.delegate = self
  }

  func showAlert(title: String, message: String) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let okButton = UIAlertAction(title: "OK", style: .default)
    alertController.addAction(okButton)
    present(alertController, animated: true)
  }
}

extension LoginViewController: LoginScreenProtocol {
  func tappedLoginButton() {
    guard let email: String = screen?.emailTextField.text,
          let password: String = screen?.passwordTextField.text,
          !email.isEmpty,
          !password.isEmpty else {
      showAlert(title: "Atenção!", message: "Por favor, preencha todos os campos")
      return
    }

    Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
      guard let self else { return }

      // Opção 1
      guard error == nil else {
        self.showAlert(title: "Atenção!", message: error?.localizedDescription ?? "")
        return
      }
      // Opção 2
      //      if let error = error {
      //        print("deu ruim mesmo -> \(error.localizedDescription)")
      //        return
      //      }

      print("Showw, login feito com sucesso!")
    }
  }
}
