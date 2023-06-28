//
//  ToDOListView.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    private let userId : String
    init(userId : String){
        self.userId = userId
    }
    var body: some View {
        NavigationStack{
            VStack{
                
            }
            .navigationTitle("To Do List")
            .toolbar{
                Button{
                    //Action
                }label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "")
    }
}
