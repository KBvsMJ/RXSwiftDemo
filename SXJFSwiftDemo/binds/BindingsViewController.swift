//
//  BindinsViewController.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/1/22.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
class BindingsViewController: UIViewController {

    
    
    @IBOutlet weak var textField_First: UITextField!
    
    @IBOutlet weak var textField_Second: UITextField!
    
    @IBOutlet weak var textField_Result: UITextField!
    
    
    @IBOutlet weak var btnBack: UIButton!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "监听文本框属性"
       self.navigationItem.hidesBackButton = true
      
        //绑定textfield 监听text的值变化
        _ = Observable.combineLatest(textField_First.rx.text,textField_Second.rx.text).map { (text1,text2) -> String in
            let result1 = Int(text1!) ?? 0
            let result2 = Int(text2!) ?? 0
        
            return "\(result1+result2)"
        }.bind(to: textField_Result.rx.text)
        
        //button tap事件
        _ = btnBack.rx.tap.subscribe(onNext:{
            [unowned self] in
            self.navigationController?.popViewController(animated: true)
        })
        
        
        
        
        
        
    }
    override func viewWillDisappear(_ animated: Bool) {
      super.viewWillDisappear(animated)
      
        
        
    }
    
  @objc func updateValue(){
    
    }

   
}
