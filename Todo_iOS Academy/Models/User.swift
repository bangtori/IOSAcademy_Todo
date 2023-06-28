//
//  User.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import Foundation

struct User:Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
