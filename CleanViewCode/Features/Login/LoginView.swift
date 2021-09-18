//
//  CustomView.swift
//  CleanViewCode
//
//  Created by Ruan Reis on 17/03/21.
//

import UIKit

protocol LoginViewDelegate: AnyObject {
    
    func doLogin(email: String, password: String)
}

class LoginView: UIView {
    
    // MARK: - Components and Subviews
    
    private lazy var loginTitle: UILabel = {
        let label = UILabel()
        label.text = "Bem-vindo!"
        label.textColor = .blue
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "E-mail"
        textField.keyboardType = .emailAddress
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Senha"
        textField.keyboardType = .default
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Private Properties
    
    private unowned var delegate: LoginViewDelegate
    
    // MARK: - Initialization
    
    init(_ delegate: LoginViewDelegate) {
        self.delegate = delegate
        
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Functions
    
    @objc
    private func loginButtonTapped() {
        guard
            let email = emailTextField.text,
            let password = passwordTextField.text
        else { return }
        
        delegate.doLogin(email: email, password: password)
    }
}

// MARK: - ViewCodeProtocol Extension

extension LoginView: ViewCodeProtocol {
    
    func addSubviews() {
        addSubview(loginTitle)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
    }
    
    func makeContraints() {
        loginTitle.snp.makeConstraints { make in
            make.left.top.equalTo(safeAreaLayoutGuide).offset(16)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTitle.snp.bottom).offset(16)
            make.left.equalTo(safeAreaLayoutGuide).offset(32)
            make.right.equalTo(safeAreaLayoutGuide).inset(32)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(16)
            make.left.equalTo(safeAreaLayoutGuide).offset(32)
            make.right.equalTo(safeAreaLayoutGuide).inset(32)
        }
        
        loginButton.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(40)
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordTextField.snp.bottom).offset(24)
        }
    }
    
    func configureViews() {
        backgroundColor = .white
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
}
