//
//  AuthAssembly.swift
//  BeerMate
//
//  Created by a.yakimenko on 06.08.17.
//  Copyright © 2017 a.yakimenko. All rights reserved.
//

import UIKit

class AuthAssembly {
    func createModule() -> UIViewController {
        let view = AuthViewController()
        let presenter = AuthPresenter()
        let interactor = AuthInteractor()
        
        view.output = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        
        interactor.output = presenter
        
        return view
    }
}
