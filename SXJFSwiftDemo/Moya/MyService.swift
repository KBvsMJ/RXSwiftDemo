//
//  MyService.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/2/1.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import Foundation
import Moya

let provider = MoyaProvider<MyService>()


enum MyService{
    case zen
    case showUser(id:Int)
    case createUser(firstName:String,lastName:String)
    case updateUser(id:Int,firstName:String,lastName:String)
    case showAccounts
    case uploadGif(Data,description:String)
}

extension MyService:TargetType{
   
    var sampleData: Data {
        switch self {
        case .zen:
            return "Half measures are as bad as nothing at all.".data(using: .utf8)!
        case .showUser(let id):
            return "{\"id\": \(id), \"first_name\": \"Harry\", \"last_name\": \"Potter\"}".data(using: .utf8)!
        case .createUser(let firstName, let lastName):
            return "{\"id\": 100, \"first_name\": \"\(firstName)\", \"last_name\": \"\(lastName)\"}".data(using: .utf8)!
        case .updateUser(let id, let firstName, let lastName):
            return "{\"id\": \(id), \"first_name\": \"\(firstName)\", \"last_name\": \"\(lastName)\"}".data(using: .utf8)!
        case .showAccounts:
            // Provided you have a file named accounts.json in your bundle.
            guard let url = Bundle.main.url(forResource: "accounts", withExtension: "json"),
                let data = try? Data(contentsOf: url) else {
                    return Data()
            }
            return data
        case .uploadGif:
            return Data()
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
    var baseURL: URL{
        return URL(string: "https://api.myservice.com")!
    }
    var path: String{
        switch self {
        case .zen:
            return "/zen"
        case .showUser(let id), .updateUser(let id, _,_):
            return "/users/\(id)"
        case .createUser(_,_):
            return "/users"
        case .showAccounts:
            return "/accounts"
        case .uploadGif( _, description: _):
            return "/upload"
        }
    }
    var method: Moya.Method {
        switch self {
        case .zen,.showUser,.showAccounts:
            return .get
        case .createUser,.updateUser,.uploadGif:
            return .post
        }
    }
    
    var task: Task{
        
        switch self {
        case .zen,.showUser,.showAccounts:
            return .requestPlain
        case let .updateUser(_, firstName, lastName):
            return .requestParameters(parameters: ["first_name": firstName, "last_name": lastName], encoding: URLEncoding.queryString)
        case let .createUser(firstName, lastName): // Always send parameters as JSON in request body
            return .requestParameters(parameters: ["first_name": firstName, "last_name": lastName], encoding: JSONEncoding.default)
        case let .uploadGif(data, description):
            let gifData = MultipartFormData(provider: .data(data), name: "file", fileName: "gif.gif", mimeType: "image/gif")
            let multipartData = [gifData]
            let urlParameters = ["description": description]
            return .uploadCompositeMultipart(multipartData, urlParameters: urlParameters)
    }
       
      
       
}
}
