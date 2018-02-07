//
//  MoyaViewController.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/2/1.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import UIKit
import RxSwift
import SwiftyJSON
import Result
import ObjectMapper
import Alamofire
class MoyaViewController: UIViewController {
var channelsArray:Array<JSON> = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
       
        
        bannerProvider.request(.commonBanner) { result in
            
            if case let .success(response) = result{
                let data = try? response.mapJSON() as! [String:Any]
               // print(data!)
                let banner = Mapper<BannerListModel>().mapArray(JSONArray:data!["data"] as! [[String : Any]])
                for model in banner.enumerated(){
                    print("imgurl= \(model.element.imgUrl ?? "http://10.3.111.206/sxjbfilehttps://timgsa.baidu.com") \n\n linkurl=\(model.element.linkUrl ?? "http://10.3.111.206/sxjbfilehttps://timgsa.baidu.com")")
                }
                
            }
        }
        
//        tbProvider.request(.sug) {  result in
//            if case let .success(response) = result {
//              let data = try? response.mapJSON()
//                print(data!)
//
//             let loaction = Mapper<Location>().map(JSONObject: data!)
//                print("address=\(loaction!.address ?? "") alevel=\(loaction!.alevel!) cityname=\(loaction!.cityName ?? "") ")
//                print("lat=\(loaction!.lat ?? "") level=\(loaction!.level!) lon=\(loaction!.lon ?? "") ")
////                let json = JSON(data!)
////
////
////                DispatchQueue.main.async{
////                    print(json)
////                }
//            }
//        }
        
//        DouBanProvider.request(.channels) { [unowned self] result in
//
//            if case let .success(response) = result {
//                let data = try? response.mapJSON()
//                let json = JSON(data!)
//                self.channelsArray = json["channels"].arrayValue
//
//                DispatchQueue.main.async{
//                    print(self.channelsArray)
//                }
//            }
//
//
//        }
//
//
//        DouBanProvider.request(.playList("77")) { result in
//            if case let .success(response) = result {
//                let data = try? response.mapJSON()
//                let json = JSON(data!)
//
//                let array = json["song"].arrayValue
//                for dict in array.enumerated(){
//                    DispatchQueue.main.async{
//                        print( "歌曲详情:\(dict)")
//                    }
//                }
//
//            }
//        }
//
//
//
//
//
        
        
        
    }

  
    
  
   

}
