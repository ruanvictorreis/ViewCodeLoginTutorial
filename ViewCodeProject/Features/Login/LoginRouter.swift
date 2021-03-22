//
//  LoginRouter.swift
//  ViewCodeProject
//
//  Created by Ruan Reis on 22/03/21.
//

import Foundation

protocol LoginRouterProtocol {
    
    func proccedToPerfil(username: String)
}

class LoginRouter: LoginRouterProtocol {
    
    // MARK: - VIP Properties
    
    weak var viewController: LoginViewController!
    
    // MARK: - Public Functions
    
    func proccedToPerfil(username: String) {
        let perfilViewController = PerfilViewController()
        perfilViewController.username = username
        
        viewController.navigationController?
            .pushViewController(perfilViewController, animated: true)
    }
}
