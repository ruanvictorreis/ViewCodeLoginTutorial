//
//  PerfilViewController.swift
//  ViewCodeProject
//
//  Created by Ruan Reis on 22/03/21.
//

import UIKit
import SnapKit

class PerfilViewController: UIViewController {
    
    var username: String?
    
    override func loadView() {
        let perfilView = UIView()
        perfilView.backgroundColor = .white
        self.view = perfilView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
