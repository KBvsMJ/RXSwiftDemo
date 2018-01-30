//
//  SelectModel.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/1/25.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import Foundation
import RxDataSources

struct SelectModel {
    let name: String
    let age: Int
}

extension SelectModel: Hashable {
    var hashValue: Int {
        return name.hashValue
    }
}

extension SelectModel: IdentifiableType {
    var identity: Int {
        return hashValue
    }
}

func ==(lhs: SelectModel, rhs: SelectModel) -> Bool {
    return lhs.name == rhs.name
}

extension SelectModel: CustomStringConvertible {
    var description: String {
        return "\(name)'s age is \(age)"
    }
}
