//
//  String+extensions.swift
//  ToDoAppTDDUnitTesting
//
//  Created by Ilnur on 09.10.2023.
//

import Foundation

extension String {
    var percentEncoded: String {
        let allowedCharacters = CharacterSet(charactersIn: "!@#$%^&*()-+=[]\\}{,./?><").inverted
        guard let encodedString = self.addingPercentEncoding(withAllowedCharacters: allowedCharacters) else {
            fatalError()
        }
        return encodedString
    }
}
