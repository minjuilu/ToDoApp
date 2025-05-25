//
//  LoginViewViewModel.swift
//  ToDoApp
//
//  Created by 呂旻叡 on 2025/5/24.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login(completion: @escaping (Bool) -> Void) {
        guard validate() else {
            completion(false)
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            DispatchQueue.main.async {
                if let error = error as NSError? {
                    switch AuthErrorCode(rawValue: error.code) {
                    case .userNotFound:
                        self?.errorMessage = "User not found. Please register first."
                    default:
                        self?.errorMessage = "Login failed. Please check your credentials."
                    }
                    completion(false)
                } else {
                    self?.errorMessage = ""
                    completion(true)
                }
            }
        }
    }
    
    private func validate() -> Bool {
        errorMessage = ""
    
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email."
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "Password must be at least 6 characters long."
            return false
        }
        
        return true
    }
}
