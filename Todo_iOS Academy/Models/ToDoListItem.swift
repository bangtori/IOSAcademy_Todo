//
//  ToDoListItem.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import Foundation

struct ToDoListItem:Codable, Identifiable{
    let id : String
    let title :String
    let dueDate : TimeInterval
    let createDate : TimeInterval
    var isDone:Bool
    
    mutating func setDone(_ state:Bool){
        isDone = state
    }
}
