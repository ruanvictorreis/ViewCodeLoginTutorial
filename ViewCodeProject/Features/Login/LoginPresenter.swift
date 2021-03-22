//
//  LoginPresenter.swift
//  ViewCodeProject
//
//  Created by Ruan Reis on 22/03/21.
//

import Foundation

protocol LoginPresenterProtocol {
    
    func showPerfil(_ response: LoginResponse)
    
    func showError()
}

class LoginPresenter: LoginPresenterProtocol {
    
    weak var viewController: LoginViewControllerProtocol!
    
    func showPerfil(_ response: LoginResponse) {
        let viewModel = LoginViewModel(
            name: response.name.capitalized,
            email: response.email.lowercased())
        
        viewController.showPerfil(viewModel)
    }
    
    func showError() {
        
    }
}
