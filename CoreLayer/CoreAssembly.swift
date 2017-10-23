//
//  File.swift
//  CoreLayer
//
//  Created by a.yakimenko on 06.08.17.
//  Copyright © 2017 a.yakimenko. All rights reserved.
//

import Foundation

public class CoreAssembly {
    public init() {}
    
    public func networkClient() -> NetworkClient {
        return NetworkClientImplementation()
    }
    
    public func requestFactory() -> RequestFactory {
        return RequestFactoryImplementation()
    }
}
