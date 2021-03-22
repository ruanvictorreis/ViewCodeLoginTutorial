//
//  LoginInteractor.swift
//  ViewCodeProject
//
//  Created by Ruan Reis on 22/03/21.
//

import Foundation

protocol LoginInteractorProtocol {
    
    func doLogin(request: LoginRequest)
}

class LoginInteractor: LoginInteractorProtocol {
    
    // MARK: - VIP Properties
    
    var presenter: LoginPresenterProtocol!
    
    // MARK: - Private Properties
    
    private let loginWorker: LoginWorkerProtocol
    
    // MARK: - Inits
    
    init() {
        self.loginWorker = LoginWorker()
    }
    
    // MARK: - Public Functions
    
    func doLogin(request: LoginRequest) {
        loginWorker.doLogin(request: request) { response in
            if response.authenticated {
                presenter.showPerfil(response)
            } else {
                presenter.showError()
            }
        }
    }
}
