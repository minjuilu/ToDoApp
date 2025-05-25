//
//  RegisterViewViewModel.swift
//  ToDoApp
//
//  Created by 呂旻叡 on 2025/5/24.
//
import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            DispatchQueue.main.async {
                if let error = error as NSError? {
                    switch AuthErrorCode(rawValue: error.code) {
                    case .emailAlreadyInUse:
                        self?.errorMessage = "This email is already registered. Please log in."
                    default:
                        self?.errorMessage = "Registration failed. Please try again later."
                    }
                    return
                }
                
                guard let userId = result?.user.uid else {
                    self?.errorMessage = "Failed to get user ID."
                    return
                }
                
                self?.insertUserRecord(id: userId)
                self?.errorMessage = ""
            }
        }
    }

    
    private func insertUserRecord(id: String){
        let newUser = User(
            id: id,
            name: name,
            email: email,
            joined: Date().timeIntervalSince1970
        )
            
        let db = Firestore.firestore()
            
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            errorMessage = "Please fill in all fields"
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter vaild email."
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "Password must be at least 6 characters long."
            return false
        }
        
        return true
    }
}
