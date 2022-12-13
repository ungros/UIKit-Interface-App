//
//  SceneDelegate.swift
//  Sport Kit Interface
//
//  Created by Roman on 10.07.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let tabBarScene = (scene as? UIWindowScene) else { return }
        
        let tabBarController = TabBarController()
        
        window = UIWindow(frame: tabBarScene.coordinateSpace.bounds)
        window?.windowScene = tabBarScene
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
    } 
}

