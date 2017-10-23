//
//  AuthViewController.swift
//  BeerMate
//
//  Created by a.yakimenko on 06.08.17.
//  Copyright © 2017 a.yakimenko. All rights reserved.
//

import UIKit

protocol AuthViewInput: class {
    
}

protocol AuthViewOutput {
    func didEnter()
    func didSelectFacebook()
    func didSelectVkontakte()
}

class AuthViewController: UIViewController {
    var output: AuthViewOutput!
    
    //Аутлеты
    @IBOutlet weak var loginTextField: UITextField?
    @IBOutlet weak var passwordTextField: UITextField?
    
    @IBAction func didPressEnter(sender: UIButton) {
        output.didEnter()
    }
    
    @IBAction func didPressFacebook(sender: UIButton) {
        output.didSelectFacebook()
    }
    
    @IBAction func didPressVkontakte(sender: UIButton) {
        output.didSelectVkontakte()
    }
}

extension AuthViewController: AuthViewInput {
    
}
