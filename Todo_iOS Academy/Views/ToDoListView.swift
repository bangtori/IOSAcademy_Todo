//
//  ToDOListView.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel:ToDoListViewViewModel
    @FirestoreQuery var items:[ToDoListItem]
    
    init(userId : String){
        // user/<id>/todos/<entries>
        self._items = FirestoreQuery(
            collectionPath: "user/\(userId)/todos"
        )
        self._viewModel = StateObject(
            wrappedValue: ToDoListViewViewModel(userId: userId)
        )
    }
    var body: some View {
        NavigationStack{
            VStack{
                List(items){ item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                //Delete
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
                    viewModel.showNewItemView.toggle()
                }label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showNewItemView) {
                NewItemView(newItemPresented: $viewModel.showNewItemView)
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "vnIO6zrwpgSnyeGMQg5vRktTBKH3")
    }
}
