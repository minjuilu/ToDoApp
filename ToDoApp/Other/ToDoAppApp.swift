//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by 呂旻叡 on 2025/5/24.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoAppApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
