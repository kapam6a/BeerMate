//
//  AuthInteractor.swift
//  BeerMate
//
//  Created by a.yakimenko on 06.08.17.
//  Copyright © 2017 a.yakimenko. All rights reserved.
//

import Foundation

protocol AuthInteractorInput {
    
}

protocol AuthInteractorOutput: class {
    
}

class AuthInteractor {
    weak var output: AuthInteractorOutput!
}

extension AuthInteractor: AuthInteractorInput {
    
}
