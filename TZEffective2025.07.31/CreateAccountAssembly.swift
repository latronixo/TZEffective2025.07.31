//
//  CreateAccountAssembly.swift
//  ViperExample
//
//  Created by Валентин on 01.08.2025.
//

import UIKit

class CreateAccountAssembly {
    static func assembleCreateAccountModule() -> UIViewController {
        let view = CreateAccountView()
        let interactor = CreateAccountInteractor()
        let router = CreateAccountRouter()
        
        let presenter = CreateAccountPresenter(interactor: interactor,
                                               router: router,
                                               view: view)
        
        interactor.output = presenter
        view.output = presenter
        
        router.rootViewController = view
        return view
    }
}
