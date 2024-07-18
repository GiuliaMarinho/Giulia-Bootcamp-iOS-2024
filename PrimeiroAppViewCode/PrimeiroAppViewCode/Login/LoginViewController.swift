//
//  ViewController.swift
//  PrimeiroAppViewCode
//
//  Created by Giulia Marinho on 17/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    var screen: LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


