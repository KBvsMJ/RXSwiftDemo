//
//  TBLocation.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/2/6.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import Foundation
import ObjectMapper
struct Location:Mappable{
    var address:String?
    var alevel:NSInteger?
    var cityName:String?
    var lat:String?
    var level:NSInteger?
    var lon:String?
    init?(map: Map) {
        
    }
    mutating func mapping(map: Map) {
        self.address <- map["address"]
        self.alevel <- map["alevel"]
        self.cityName <- map["cityName"]
        self.lat <- map["lat"]
        self.level <- map["level"]
        self.lon <- map["lon"]
    }
}




