//
//  ProfileView.swift
//  CleanViewCode
//
//  Created by Ruan Victor Bertoldo Reis de Amorim on 18/09/21.
//

import UIKit
import SnapKit

protocol ProfileViewDelegate: AnyObject {
    
    func doSomething()
}

class ProfileView: UIView {
    
    // MARK: - Components and Subviews
    
    private lazy var userImage: UIImageView = {
        let image = UIImage(named: "profile")?
            .withTintColor(.blue)
        return UIImageView(image: image)
    }()
    
    private lazy var userEmail: UILabel = {
        let label = UILabel()
        label.textColor = .blue
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    // MARK: - Private Properties
    
    private unowned let delegate: ProfileViewDelegate
    
    // MARK: - Initialization
    
    init(_ delegate: ProfileViewDelegate) {
        self.delegate = delegate
        
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public Functions
    
    func configure(with email: String) {
        userEmail.text = email
    }
}

// MARK: - ViewCodeProtocol Extension

extension ProfileView: ViewCodeProtocol {
    
    func addSubviews() {
        addSubview(userImage)
        addSubview(userEmail)
    }
    
    func makeContraints() {
        userImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide).offset(24)
            make.width.height.equalTo(80)
        }
        
        userEmail.snp.makeConstraints { make in
            make.centerX.equalTo(userImage)
            make.top.equalTo(userImage.snp.bottom).offset(8)
        }
    }
    
    func configureViews() {
        backgroundColor = .white
    }
}
