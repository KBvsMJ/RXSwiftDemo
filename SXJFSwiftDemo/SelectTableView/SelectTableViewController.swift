//
//  SelectTableViewController.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/1/25.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import UIKit
import RxDataSources
import RxSwift
import RxCocoa


typealias SelectSectionModel = AnimatableSectionModel<String,SelectModel>

class SelectTableViewController: UITableViewController {

    
    let sections = Variable([SelectSectionModel]())
    static let initialValue:[SelectModel] = [
        SelectModel(name: "Jack", age: 18),
        SelectModel(name: "Tim", age: 20),
        SelectModel(name: "Andy", age: 24)
    ]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "SelectTableView"
        self.navigationItem.hidesBackButton = true
        tableView.dataSource = nil
        tableView.delegate = nil
        _ = tableView.rx.modelSelected(SelectModel.self).subscribe(onNext:{
            model in print("name=\(model.name) age=\(model.age)")
            self.navigationController?.popViewController(animated: true)
            
        })
        
        let tvDataSource = RxTableViewSectionedReloadDataSource<SelectSectionModel>.init(configureCell: { (_, tv, ip, i) in
            let cell = tv.dequeueReusableCell(withIdentifier: "SelectTableViewCell", for: ip) as! SelectTableViewCell
            cell.lblName.text = i.name
            cell.lblAge.text = String(i.age)
            return cell
            
        })
       
       _ =  sections.asObservable().bind(to: tableView.rx.items(dataSource: tvDataSource))
        sections.value = [SelectSectionModel(model: "", items: SelectTableViewController.initialValue)]
        
      
        
    }


}



