//
//  Extensions.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import Foundation

extension Encodable{
    func asDictionary() -> [String : Any]{
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String : Any]
            return json ?? [:]
        }catch{
            return [:]
        }
    }
}
