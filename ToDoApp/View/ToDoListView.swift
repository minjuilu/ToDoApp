//
//  ToDoListView.swift
//  ToDoApp
//
//  Created by 呂旻叡 on 2025/5/24.
//
import FirebaseFirestore
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel : ToDoListViewViewModel
    @FirestoreQuery var items : [ToDoListItem]
    
    init(userId: String){
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos"
        )
        self._viewModel = StateObject(
            wrappedValue: ToDoListViewViewModel(userId: userId)
        )
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List(items){item in
                    ToDoListItemView(item: item)
                        .swipeActions{
                            Button("Delete"){
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar{
                Button{
                    viewModel.showingNewItemView = true
                }label:{
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView(newItemPresented:
                            $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId:"1QYYhUUmsvcheKAkr5D3dJg61Rj2")
}
