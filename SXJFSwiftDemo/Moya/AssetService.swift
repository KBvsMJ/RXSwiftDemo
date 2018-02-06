//
//  AssetService.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/2/5.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import Foundation
import Moya
import Result
fileprivate let assetDir:URL = {
    let directoryURLS = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return directoryURLS.first ?? URL(fileURLWithPath: NSTemporaryDirectory())
}()
enum Asset: TargetType{
    var method:Moya.Method {
        return .get
    }
  
    
   
    var sampleData: Data{
        return Data();
    }
    var headers: [String : String]?{
        return nil
    }
    
    case star
    case checkMark
    var baseURL: URL{
        return URL(string: "")!
    }
    var assetName :String{
        switch self {
        case .star: return "star.png"
        case .checkMark: return "checkmark.png"
       
        }
    }
    var path: String{
        return "/assets/" + assetName
    }
    var localLocation:URL{
        return assetDir.appendingPathComponent(assetName)
    }
    
    var downloadDestintion:DownloadDestination{
        return {
            _,_ in return (self.localLocation,.removePreviousFile)
        }
    }
    var task: Task{
        return .downloadDestination(downloadDestintion)
    }
    
    
}
final class AssetLoader{
    
    let provider = MoyaProvider<Asset>()
    init() {
        
    }
    func load(asset: Asset, completion: ((Result<URL, MoyaError>) -> Void)? = nil)  {
        
        if FileManager.default.fileExists(atPath: asset.localLocation.path){
            completion? (.success(asset.localLocation))
            return
        }
        provider.request(asset) { result in
            switch result{
            case .success:
                completion?(.success(asset.localLocation))
            case let .failure(error):
                return (completion?(.failure(error)))!
            }
        }
        
    }
    
}


final class TestViewModel{
    let loader:AssetLoader
    init(loader:AssetLoader = AssetLoader()) {
        self.loader = loader
    }
    func loadImage(){
        loader.load(asset:.star){
            result in print(result)
        }
    }
}
