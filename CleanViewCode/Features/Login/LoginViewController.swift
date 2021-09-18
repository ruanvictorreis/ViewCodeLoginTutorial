//
//  ViewController.swift
//  CleanViewCode
//
//  Created by Ruan Reis on 17/03/21.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private lazy var loginView: LoginView = {
        LoginView(self)
    }()
    
    // MARK: - View Lifecycle
    
    override func loadView() {
        super.loadView()
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - LoginView Delegate

extension LoginViewController: LoginViewDelegate {
    
    func doLogin(email: String, password: String) {
        navigationController?.pushViewController(
            ProfileViewController(userEmail: email), animated: true)
    }
}
