//
//  SceneDelegate.swift
//  MyQuestionBot
//
//  Created by iOS Lab on 23/03/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        setupRootController(for: scene)
    }
    
    /*
     Confira qual vai ser a controller "root" que vai ser configurada. A primeira controller que vai aparecer assim que o app for inicializado.
     */
    
    func setupRootController(for scene: UIWindowScene) {
        window = UIWindow(windowScene: scene)
        window?.rootViewController = MainController()
        window?.makeKeyAndVisible()
    }

}

