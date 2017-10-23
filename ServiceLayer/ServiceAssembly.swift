//
//  Assembly.swift
//  ServiceLayer
//
//  Created by a.yakimenko on 06.08.17.
//  Copyright © 2017 a.yakimenko. All rights reserved.
//

import Foundation
import CoreLayer

public class ServiceAssembly {
    public init() {}
    
    public func authService() -> AuthService {
        let authService = AuthServiceImplementation()
        let coreAssembly = CoreAssembly()
        authService.networkClient = coreAssembly.networkClient()
        authService.requestFactory = coreAssembly.requestFactory()
        return authService
    }
}
