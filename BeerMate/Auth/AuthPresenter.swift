//
//  AuthPresenter.swift
//  BeerMate
//
//  Created by a.yakimenko on 06.08.17.
//  Copyright © 2017 a.yakimenko. All rights reserved.
//

import Foundation

class AuthPresenter {
    weak var view: AuthViewInput!
    var interactor: AuthInteractorInput!
}

extension AuthPresenter: AuthViewOutput {
    func didEnter() {
        print("didEnter")
    }
    
    func didSelectFacebook() {
        print("didSelectFacebook")
    }
    
    func didSelectVkontakte() {
        print("didSelectVkontakte")
    }
}

extension AuthPresenter: AuthInteractorOutput {
    
}

