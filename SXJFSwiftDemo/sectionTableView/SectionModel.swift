//
//  SectionModel.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/1/25.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import Foundation
import RxDataSources

struct SectionModel {
    let name:String
    let age: Int
}
extension SectionModel: Hashable {
    var hashValue: Int {
        return name.hashValue
    }
}

extension SectionModel: IdentifiableType {
    var identity: Int {
        return hashValue
    }
}
func ==(lhs: SectionModel, rhs: SectionModel) -> Bool {
    return lhs.name == rhs.name
}

extension SectionModel: CustomStringConvertible {
    var description: String {
        return "\(name)'s age is \(age)"
    }
}
