//
//  Task.swift
//  ToDoAppTDDUnitTesting
//
//  Created by Ilnur on 25.09.2023.
//

import Foundation

struct Task {
    let title: String
    let description: String?
    let location: Location?
    let date: Date
    
    init(
        title: String,
        description: String? = nil,
        location: Location? = nil,
        date: Date? = nil
    ) {
        self.title = title
        self.description = description
        self.date = date ?? Date()
        self.location = location
    }
}

extension Task: Equatable {
    static func == (lhs: Task, rhs: Task) -> Bool {
        if lhs.title == rhs.title,
           lhs.description == rhs.description,
           lhs.location == rhs.location {
            return true
        }
        return false
    }
}
