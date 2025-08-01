//
//  CreateAccountInteractor.swift
//  ViperExample
//
//  Created by Валентин on 31.07.2025.
//

import UIKit

protocol TodoListInteractorInput {
    var output: TodoListInteractorOutput? { get set } 
    func createAccount(withLogin login: String, password: String)
}

protocol TodoListInteractorOutput: AnyObject {
    func didReceive(error: String)
    func didCreateTodo(withLogin login: String)
}

final class TodoListInteractor: TodoListInteractorInput {
    weak var output: TodoListInteractorOutput?
    
    func createAccount(withLogin login: String, password: String) {
        let _ = Todo(login: login, password: password)
        // some ...
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            self?.output?.didCreateTodo(withLogin: login)
        }
    }
}
