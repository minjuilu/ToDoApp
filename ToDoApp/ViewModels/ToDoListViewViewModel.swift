//
//  ToDoListViewViewModel.swift
//  ToDoApp
//
//  Created by 呂旻叡 on 2025/5/24.
//
import FirebaseFirestore
import Foundation

// ViewModel for list of items view
// Primary tab
class ToDoListViewViewModel: ObservableObject{
    
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
