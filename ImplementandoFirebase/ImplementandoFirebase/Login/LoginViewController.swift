//
//  ViewController.swift
//  ImplementandoFirebase
//
//  Created by Caio Fabrini on 12/08/24.
//

import UIKit
import FirebaseAuth

//MARK: - Como adicionar um pod no projeto?

// 1 -> no terminal acesse a pasta raiz do projeto, e realize o comando 'pod init'
// Esse comando irá criar o file PodFile -> arquivo responsável por configurar/adicionar as dependências do projeto
// 2 -> adicione o seu pod entre o pod target... e o 'end'
// Ex: 
//target 'ImplementandoFirebase' do
//# Comment the next line if you don't want to use dynamic frameworks
//use_frameworks!
//
//pod 'FirebaseAuth'
//pod 'FirebaseFirestore'
//
//end
// 3 -> depois de adicionar, abra o terminal novamente na pasta raiz do projeto e realize o comando 'pod install'
// 4 -> depois de baixar todas as dependências, abra o projeto no arquivo .xcworkspace(arquivo em branco) pois será nele que você irá trabalhar de agora em diante.

//MARK: - Posso adicionar/remover um pod?

// Sim, você pode remover/adicionar a qualquer momento, acessando o arquivo do PodFile e realizando o seu ajuste necessário.
// Depois disso feche o xcode, e abra o terminal na pasta raiz e execute o comando 'pod install'
// ATENÇÃO: O comando 'pod install' ele tanto adiciona, como remove pods do projeto, por isso, tome sempre muito cuidado com o arquivo PodFile.

//MARK: - Como utilizar o código de um pod no meu projeto?

// Para utilizar o código de um pod é muito simples, basta na classe que você queira acessar o codigo, você realizar o import na parte superior do arquivo daquela devida dependência
// Ex: import FirebaseAuth

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
