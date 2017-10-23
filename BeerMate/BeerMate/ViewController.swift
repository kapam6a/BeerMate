//
//  ViewController.swift
//  BeerMate
//
//  Created by a.yakimenko on 23.07.17.
//  Copyright © 2017 a.yakimenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = AuthAssembly().createModule()
        present(vc, animated: true, completion: nil)
    }
    
}

