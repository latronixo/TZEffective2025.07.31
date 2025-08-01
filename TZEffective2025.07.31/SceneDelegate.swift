//
//  SceneDelegate.swift
//  23.Project-4-FlagsInTableView
//
//  Created by Валентин Картошкин on 30.04.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = CreateAccountAssembly.assembleCreateAccountModule()
        window?.makeKeyAndVisible()
    }
}

