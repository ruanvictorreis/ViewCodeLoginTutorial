//
//  CustomView.swift
//  ViewCodeProject
//
//  Created by Ruan Reis on 17/03/21.
//

import UIKit

class LoginView: UIView {
    
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
    
    init() {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    @objc
    private func loginButtonTapped() {
        print("Botão de Login selecionado")
    }
}

extension LoginView: ViewCodeProtocol {
    
    func setupSubviews() {
        addSubview(loginTitle)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
    }
    
    func setupContraints() {
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
    
    func setupComponents() {
        backgroundColor = .white
    }
}
