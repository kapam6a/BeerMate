//
//  NetworkClient.swift
//  CoreLayer
//
//  Created by a.yakimenko on 06.08.17.
//  Copyright © 2017 a.yakimenko. All rights reserved.
//

import Foundation

public enum ErrorType: Int, Error {
    case notFound = 404
    case forbidden = 403
}

public enum Result<T> {
    case success(T)
    case failure(ErrorType)
}

public protocol NetworkClient {
    func send(request: URLRequest, completion: @escaping (Result<Data>) -> Void)
}

public class NetworkClientImplementation: NetworkClient {
    var urlSession: URLSession!
    
    public init() {}
    
    public func send(request: URLRequest, completion: @escaping (Result<Data>) -> Void) {
        urlSession.dataTask(with: request) { data, response, error in
            if let data = data {
                completion(.success(data))
            } else if (error != nil) {
                completion(.failure(.notFound))
            }
        }.resume()
    }
}
