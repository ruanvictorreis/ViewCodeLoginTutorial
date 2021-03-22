//
//  LoginWorker.swift
//  ViewCodeProject
//
//  Created by Ruan Reis on 22/03/21.
//

import Foundation

protocol LoginWorkerProtocol {
    
    func doLogin(request: LoginRequest, completation: (LoginResponse) -> ())
}

class LoginWorker: LoginWorkerProtocol {
    
    func doLogin(request: LoginRequest, completation: (LoginResponse) -> ()) {
        // REQUISICAO PARA API
        
        let response = LoginResponse(
            name: "Fulano",
            email: request.email,
            authenticated: true)
        
        completation(response)
    }
}
