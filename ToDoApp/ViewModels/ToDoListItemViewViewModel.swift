//
//  ToDoListItemViewViewModel.swift
//  ToDoApp
//
//  Created by 呂旻叡 on 2025/5/24.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

// ViewModel for single todolist item view (each row in items list)
//
class ToDoListItemViewViewModel: ObservableObject {
    
    init(){
        
    }
    
    func toggleIsDone(item: ToDoListItem){
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
