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
        
    }
    
    func didSelectFacebook() {
        
    }
    
    func didSelectVkontakte() {
        
    }
}

extension AuthPresenter: AuthInteractorOutput {
    
}

extension Sequence {
    func last(where predicate: (Iterator.Element) -> Bool) -> Iterator.Element? {
        for element in reversed() where predicate(element) {
            return element
        }
        return nil
    }
}


