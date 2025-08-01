//
//  СreateAccountRouter.swift
//  ViperExample
//
//  Created by Валентин on 31.07.2025.
//

import UIKit

protocol CreateAccountRouterInput {
    func openAuthScreen(withLogin login: String)
}

final class CreateAccountRouter: CreateAccountRouterInput {
    weak var rootViewController: UIViewController?
    
    func openAuthScreen(withLogin login: String) {
        let newVc = UIViewController(nibName: nil, bundle: nil)
        newVc.view.backgroundColor = .green
        rootViewController?.present(newVc, animated: true, completion: nil)
    }
}
