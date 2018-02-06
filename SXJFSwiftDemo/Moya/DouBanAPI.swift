//
//  DouBanAPI.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/2/1.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import Foundation
import Moya

let DouBanProvider = MoyaProvider<DouBan>()

public enum DouBan{
    case channels
    case playList(String)
}

extension DouBan: TargetType{
    
    public var baseURL:URL{
        switch self {
        case .channels:
             return URL(string: "https://www.douban.com")!
        
        case.playList(_):
            return URL(string: "https://douban.fm")!
            
        }
    }
    
    
    public var path:String{
        switch self {
        case .channels:
            return "/j/app/radio/channels"
       
        case .playList(_):
            return "/j/mine/playlist"
        }
    }
    
    public var method: Moya.Method{
        return .get
    }
    
    public var task:Task{
        switch self {
        case .playList(let channel):
            var params:[String:Any] = [:]
            params["channel"] = channel
            params["type"] = "n"
            params["from"] = "mainsite"
            return .requestParameters(parameters: params, encoding: URLEncoding.default)
        default:
            return .requestPlain
            
        }
    }
    
    public var validate:Bool{
        return false
    }
    
    public var sampleData:Data{
        return "{}".data(using: String.Encoding.utf8)!
    }
    
    public var headers:[String:String]?{
        return nil
    }
    
}
