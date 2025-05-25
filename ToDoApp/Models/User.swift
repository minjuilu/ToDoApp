//
//  User.swift
//  ToDoApp
//
//  Created by 呂旻叡 on 2025/5/24.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
