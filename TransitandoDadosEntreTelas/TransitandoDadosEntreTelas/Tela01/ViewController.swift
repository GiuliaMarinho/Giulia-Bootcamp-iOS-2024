//
//  ViewController.swift
//  TransitandoDadosEntreTelas
//
//  Created by Caio Fabrini on 17/07/24.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .orange
    configElements()
  }

  func configElements() {
    firstNameTextField.placeholder = "Digite seu primeiro nome:"
    firstNameTextField.delegate = self

    lastNameTextField.placeholder = "Digite seu último nome:"
    lastNameTextField.delegate = self
  }




  @IBAction func tappedFullNameButton(_ sender: UIButton) {

    let tela02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(identifier: "Tela02ViewController") { coder -> Tela02ViewController? in
      let fullName: String = "\(self.firstNameTextField.text ?? "") \(self.lastNameTextField.text ?? "")"
       return Tela02ViewController(coder: coder, fullName: fullName)
    }

    navigationController?.pushViewController(tela02, animated: true)
  }

}

extension ViewController: UITextFieldDelegate {

  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }

}


