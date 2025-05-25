//
//  ToDoListItem.swift
//  ToDoApp
//
//  Created by 呂旻叡 on 2025/5/24.
//

import Foundation

struct ToDoListItem: Codable, Identifiable{
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
}
