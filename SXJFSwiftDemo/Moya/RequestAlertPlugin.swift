//
//  RequestAlertPlugin.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/2/5.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import UIKit
import Result
import Moya
final class RequestAlertPlugin: PluginType {

    private let viewcontroller:UIViewController
    init(viewcontroller:UIViewController) {
        self.viewcontroller = viewcontroller
    }
    func willSend(_ request: RequestType, target: TargetType) {
        
    }
    func didReceive(_ result:Result<Moya.Response,MoyaError>,target:TargetType){
        
    }
    
}
