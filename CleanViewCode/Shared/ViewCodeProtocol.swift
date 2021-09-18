//
//  ViewCodeProtocol.swift
//  ViewCodeProject
//
//  Created by Ruan Reis on 17/03/21.
//

import Foundation

protocol ViewCodeProtocol {
    
    func addSubviews()
    
    func makeContraints()
    
    func configureViews()
}

extension ViewCodeProtocol {
    
    func setupUI() {
        addSubviews()
        makeContraints()
        configureViews()
    }
}
