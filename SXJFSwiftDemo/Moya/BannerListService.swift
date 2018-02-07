//
//  BannerListService.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/2/6.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import Foundation
import Moya
import ObjectMapper

let bannerProvider = MoyaProvider<BannerList>()

enum BannerList{
    case commonBanner
}

extension BannerList:TargetType{
    var baseURL: URL{
        return URL(string: "http://10.3.111.206:11000")!
    }
    var path: String{
        return "/api/common/banner/index"
    }
    var method: Moya.Method{
        
        return .get
    }
    var sampleData: Data{
        return  "{}".data(using: String.Encoding.utf8)!
    }
    var task: Task{
        var params:[String:Any] = [:]
        params["number"] = 5
        return .requestParameters(parameters: params, encoding: URLEncoding.default)
    }
    var validate: Bool{
        return false
    }
    var headers: [String : String]?{
        return nil
    }
    
}

struct BannerListModel:Mappable {
    
    var imgUrl:String?
    var linkUrl:String?
    
    init?(map: Map) {
        
    }
    mutating func mapping(map: Map) {
        self.imgUrl <- map["imgUrl"]
        self.linkUrl <- map["linkUrl"]
    }
}



