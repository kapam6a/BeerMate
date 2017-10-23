//
//  AuthService.swift
//  ServiceLayer
//
//  Created by a.yakimenko on 06.08.17.
//  Copyright © 2017 a.yakimenko. All rights reserved.
//

import Foundation
import CoreLayer

public enum AuthType {
    case Facebook
    case VK
    case Regular(login: String, password: String)
}

public protocol AuthService {
    func auth(type: AuthType, completion: @escaping (Result<Any>) -> Void)
}

public class AuthServiceImplementation: AuthService {
    var networkClient: NetworkClient!
    var requestFactory: RequestFactory!
    
    public init() {}
    
    public func auth(type: AuthType, completion: @escaping (Result<Any>) -> Void) {
        
    }
}
