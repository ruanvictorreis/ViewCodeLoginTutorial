//
//  ProfileViewController.swift
//  CleanViewCode
//
//  Created by Ruan Reis on 22/03/21.
//

import UIKit
import SnapKit

class ProfileViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private var userEmail: String
    
    private lazy var profileView: ProfileView = {
        ProfileView(self)
    }()
    
    // MARK: - Initialization
    
    init(userEmail: String) {
        self.userEmail = userEmail
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View Lifecycle
    
    override func loadView() {
        self.view = profileView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileView.configure(with: userEmail)
    }
}

// MARK: - ProfileViewDelegate Extension

extension ProfileViewController: ProfileViewDelegate {
    
    func doSomething() {
        // TODO: Do something
    }
}
