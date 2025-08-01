//
//  CreateAccountInteractor.swift
//  ViperExample
//
//  Created by Валентин on 31.07.2025.
//

import UIKit

protocol CreateAccountInteractorInput {
    var output: CreateAccountInteractorOutput? { get set } 
    func createAccount(withLogin login: String, password: String)
}

protocol CreateAccountInteractorOutput: AnyObject {
    func didReceive(error: String)
    func didCreateAccount(withLogin login: String)
}

final class CreateAccountInteractor: CreateAccountInteractorInput {
    weak var output: CreateAccountInteractorOutput?
    
    func createAccount(withLogin login: String, password: String) {
        let _ = Account(login: login, password: password)
        // some ...
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            self?.output?.didCreateAccount(withLogin: login)
        }
    }
}
