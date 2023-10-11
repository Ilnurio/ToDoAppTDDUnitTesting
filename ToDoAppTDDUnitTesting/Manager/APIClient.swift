//
//  APIClient.swift
//  ToDoAppTDDUnitTesting
//
//  Created by Ilnur on 05.10.2023.
//

import Foundation

protocol URLSessionProtocol {
    func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
}

extension URLSession: URLSessionProtocol {}

class APIClient {
    lazy var urlSession: URLSessionProtocol = URLSession.shared
    
    func login(withName name: String, password: String, completionHandler: @ escaping (String?, Error?) -> Void) {
        
        let allowedCharacters = CharacterSet.urlQueryAllowed
        
        guard let name = name.addingPercentEncoding(withAllowedCharacters: allowedCharacters),
              let password = password.addingPercentEncoding(withAllowedCharacters: allowedCharacters) else {
            fatalError()
        }
        
        let query = "name=\(name)&password=\(password)"
        guard let url = URL(string: "htpps://todoapp.com/login?\(query)") else {
            fatalError()
        }
        
        urlSession.dataTask(with: url) { data, response, error in
            guard let data = data else { fatalError() }
            let dictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: String]
            
            let token = dictionary["token"]
            completionHandler(token, nil)
        }.resume()
    }
}
