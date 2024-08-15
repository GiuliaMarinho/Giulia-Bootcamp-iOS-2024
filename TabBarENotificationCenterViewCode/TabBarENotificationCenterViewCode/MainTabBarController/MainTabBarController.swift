//
//  File.swift
//  TabBarENotificationCenterViewCode
//
//  Created by Giulia Marinho on 05/08/24.
//

import Foundation

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tela01 = createNavController(viewController: Tela01VC(), title: "Tela 01", imageName: "magnifyingglass")
        let tela02 = createNavController(viewController: Tela02VC(), title: "Tela 02", imageName: "heart")
        let tela03 = createNavController(viewController: Tela03VC(), title: "Tela 03", imageName: "star")
        
        viewControllers = [tela01, tela02, tela03]
        custmoizeTabBarApperarance()
    }
    
    private func createNavController(viewController: UIViewController, title: String, imageName: String) -> UINavigationController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)
        return navController
    }

    private func custmoizeTabBarApperarance() {
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .lightGray
        tabBar.backgroundColor = .white
        tabBar.isTranslucent = false
        tabBar.layer.borderColor = UIColor.lightGray.cgColor
        tabBar.layer.borderWidth = 0.5
        
    }
}


