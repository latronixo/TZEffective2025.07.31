//
//  CreateAccountPresenter.swift
//  ViperExample
//
//  Created by Валентин on 31.07.2025.
//

import Foundation

protocol CreateAccountPresenterInput {
    var output: CreateAccountPresenterOutput? { get set }
}

protocol CreateAccountPresenterOutput {
    
}

final class CreateAccountPresenter {
    weak var output: CreateAccountPresenterOutput?
    
    private let interactor: CreateAccountInteractorInput
    private let router: CreateAccountRouterInput
    private let view: CreateAccountViewInput
    
    init(output: CreateAccountPresenterOutput? = nil, interactor: CreateAccountInteractorInput, router: CreateAccountRouterInput, view: CreateAccountViewInput) {
        self.output = output
        self.interactor = interactor
        self.router = router
        self.view = view
    }
    
}

extension CreateAccountPresenter: CreateAccountViewOutput {
    func userSelectCreateAccount(withLogin login: String, password: String) {
        interactor.createAccount(withLogin: login, password: password)
    }
}

extension CreateAccountPresenter: CreateAccountInteractorOutput {
    func didReceive(error: String) {
        
    }
    
    func didCreateAccount(withLogin login: String) {
        router.openAuthScreen(withLogin: login)
    }
}
