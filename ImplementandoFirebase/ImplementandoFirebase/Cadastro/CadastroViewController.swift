//
//  CadastroViewController.swift
//  ImplementandoFirebase
//
//  Created by Giulia Marinho on 15/08/24.
//
import UIKit
import Foundation

class CadastroViewController: UIViewController {
    
    var screen: CadastroScreen?

    override func loadView() {
      screen = CadastroScreen()
      view = screen
    }
}

