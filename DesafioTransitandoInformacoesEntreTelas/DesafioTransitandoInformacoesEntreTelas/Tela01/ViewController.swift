//
//  ViewController.swift
//  DesafioTransitandoInformacoesEntreTelas
//
//  Created by Giulia Marinho on 17/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var soma1TextField: UITextField!
    @IBOutlet weak var soma2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        configElements()
        
    }
    
    func configElements() {
        soma1TextField.placeholder = "Valor 1"
        soma1TextField.delegate = self
        
        soma2TextField.placeholder = "Valor 2"
        soma2TextField.delegate = self
        
    }
    
    @IBAction func tappedFullSomaButton(_ sender: UIButton) {
        
        let soma2 = UIStoryboard(name: "Tela2ViewController", bundle: nil).instantiateViewController(identifier: "Tela2ViewController") { coder -> Tela2ViewController? in
            let fullSoma: String = "\(self.soma1TextField.text ?? "") \(self.soma2TextField.text ?? "")"
            return  Tela2ViewController(coder: <#T##NSCoder#>, Value1: "10", Value2: "24");
        }
        
        navigationController?.pushViewController(soma2, animated: true)
    }
}
extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

