//
//  LoginBuilder.swift
//  ViewCodeProject
//
//  Created by Ruan Reis on 22/03/21.
//

import UIKit

struct LoginBuilder {
    
    static func build() -> UIViewController {
        let viewController = LoginViewController()
        let interactor = LoginInteractor()
        let presenter = LoginPresenter()
        let router = LoginRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        
        return viewController
    }
}
