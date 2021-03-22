//
//  ViewController.swift
//  ViewCodeProject
//
//  Created by Ruan Reis on 17/03/21.
//

import UIKit
import SnapKit

protocol LoginViewControllerProtocol: AnyObject {
    
    func showPerfil(_ viewModel: LoginViewModel)
}

class LoginViewController: UIViewController {
    
    private var loginView = LoginView()
    
    // MARK: - VIP Properties
    
    var interactor: LoginInteractorProtocol!
    
    var router: LoginRouterProtocol!
    
    // MARK: - View Lifecycle
    
    override func loadView() {
        super.loadView()
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.delegate = self
    }
}

extension LoginViewController: LoginViewControllerProtocol {
    
    func showPerfil(_ viewModel: LoginViewModel) {
        router.proccedToPerfil(username: viewModel.name)
    }
}

extension LoginViewController: LoginViewDelegate {
    
    func doLogin(email: String, password: String) {
        let request = LoginRequest(email: email, password: password)
        interactor.doLogin(request: request)
    }
}
