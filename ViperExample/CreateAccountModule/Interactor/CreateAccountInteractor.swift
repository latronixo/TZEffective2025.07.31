//
//  CreateAccountInteractor.swift
//  ViperExample
//
//  Created by Валентин on 31.07.2025.
//

import UIKit

protocol CreateAccountInteractorInput {
    func createAccount(withLogin login: String, password: String)
}

protocol CreateAccountInteractorOutput {
    func didReceive(error: String)
    func didReceive(withLogin login: String)
}

final class CreateAccountInteractor: CreateAccountInteractorInput {
    
}
