//
//  CreateAccountView.swift
//  ViperExample
//
//  Created by Валентин on 31.07.2025.
//

import UIKit

protocol CreateAccountViewInput {
    var output: CreateAccountViewOutput
}

protocol CreateAccountViewOutput {
    func userSelectCreateAccount(withLogin login: String, password: String)
}

final class CreateAccountView: UIViewController, CreateAccountViewInput {
    var output: CreateAccountViewOutput
}
