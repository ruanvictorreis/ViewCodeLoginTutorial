//
//  ViewCodeProtocol.swift
//  ViewCodeProject
//
//  Created by Ruan Reis on 17/03/21.
//

import Foundation

protocol ViewCodeProtocol {
    
    func setupSubviews()
    
    func setupContraints()
    
    func setupComponents()
}

extension ViewCodeProtocol {
    
    func setupUI() {
        setupSubviews()
        setupContraints()
        setupComponents()
    }
    
    func setupComponents() {}
}
