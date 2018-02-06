//
//  MoyaService.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/2/2.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import Foundation
import Moya
let githubProvider = MoyaProvider<GitHub>()
public enum GitHub{
    
    case zen
    case userProfile(String)
    case userRespositories(String)
    case branches(String,Bool)
}

extension GitHub:TargetType{
    
    public var baseURL: URL{
        return URL(string: "https://api.github.com")!
    }
    
    public var path: String{
        switch self {
        case .zen:
            return "/zen"
        case .userProfile(let name):
            return "/users/\(name.utf8)"
        case .userRespositories(let name):
            return "/users/\(name.utf8)/repos"
        case .branches (let repo,_):
            return "/repos/\(repo.utf8)/branches"
        
        }
    }
    
    
    public var method: Moya.Method{
        return .get
    }
    
    public var task: Task{
        switch self {
        case .userRespositories:
            return .requestParameters(parameters: ["sort": "pushed"], encoding: URLEncoding.default)
        
        case .branches(_, let protected):
            return .requestParameters(parameters: ["protected": "\(protected)"], encoding: URLEncoding.default)
        
        default:
            return .requestPlain
        
        }
        
        
    }
    public var sampleData: Data{
        switch self {
        case .zen:
            return "Half measures are as bad as nothing at all.".data(using: String.Encoding.utf8)!
        case .userProfile(let name):
            return "{\"login\": \"\(name)\", \"id\": 100}".data(using: String.Encoding.utf8)!
        case .userRespositories(let name):
            return "[{\"\(name)\": \"Repo Name\"}]".data(using: String.Encoding.utf8)!
        case .branches:
            return "[{\"name\": \"master\"}]".data(using: String.Encoding.utf8)!
            
        }
    }
    
    public var headers: [String : String]?{
        return ["Content-Type": "application/json"]
    }
    
    
    
    
    
    
    
}


extension String{
    var urlEscaped:String{
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
}




