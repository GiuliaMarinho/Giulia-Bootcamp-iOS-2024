//
//  Tela2ViewController.swift
//  DesafioTransitandoInformacoesEntreTelas
//
//  Created by Giulia Marinho on 17/07/24.
//

import UIKit

class Tela2ViewController: UIViewController {
    
    @IBOutlet weak var fullSomaLabel: UILabel!
    
    let Value1: String
    let Value2: String
    
    
    init?(coder: NSCoder, Value1: String, Value2: String) {
        self.Value1 = Value1
        self.Value2 = Value2
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let soma = (Int(Value1) ?? 0) + (Int(Value2) ?? 0 )
        fullSomaLabel.text = String (soma)
    }
}
