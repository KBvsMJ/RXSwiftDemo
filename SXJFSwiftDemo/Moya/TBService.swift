//
//  TBService.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/2/5.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import Foundation
import Moya

let tbProvider = MoyaProvider<TBRequest>()

public enum TBRequest{
    case sug
}

extension TBRequest:TargetType{
    
    public var baseURL: URL{
        
        switch self {
        case .sug:
            return URL(string: "http://gc.ditu.aliyun.com")!
            
        }
    }
    public var path: String{
        switch self {
        case .sug:
              return "/geocoding"
        }
    }
    public var method: Moya.Method{
        return .get
    }
    
    public var headers: [String : String]?{
        return nil
    }
    public var task: Task{
        switch self {
        case .sug:
             var params:[String:Any] = [:]
             params["a"] = "苏州市"
            return .requestParameters(parameters: params, encoding:  URLEncoding.default)
       
        }
        
    }
    public var sampleData: Data{
        return "{}".data(using: String.Encoding.utf8)!
    }
    
    public var validate:Bool{
        return false
    }
    
    
    
    
}
