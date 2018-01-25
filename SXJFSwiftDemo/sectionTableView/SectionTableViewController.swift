//
//  SectionTableViewController.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/1/25.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import RxDataSources

typealias TableSectionModel = AnimatableSectionModel<String, SectionModel>


class SectionTableViewController: UITableViewController {

    
    let sections = Variable([TableSectionModel]())
    static let initialValue:[SectionModel] = [
        SectionModel(name: "Jack", age: 18),
        SectionModel(name: "Tim", age: 20),
        SectionModel(name: "Andy", age: 24)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "SectionTableView"
        self.navigationItem.hidesBackButton = true
        tableView.dataSource = nil
        tableView.delegate = nil
        
        let tbDataSource = RxTableViewSectionedReloadDataSource<TableSectionModel>.init(configureCell:{
            (_, tv, ip, i) in
            let cell = tv.dequeueReusableCell(withIdentifier: "SectionTableViewCell", for: ip) as! SectionTableViewCell
            cell.lblName.text = i.name
            cell.lblAge.text = String(i.age)
            return cell
        })
        _ = sections.asObservable().bind(to:tableView.rx.items(dataSource: tbDataSource) )
        sections.value = [TableSectionModel(model: "", items: SectionTableViewController.initialValue)]
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            self.sections.value.append(TableSectionModel(model: "", items: SectionTableViewController.initialValue))
        }
        _ = tableView.rx.modelSelected(SectionModel.self).subscribe(onNext:{
            
            [unowned self] in self.navigationController?.popViewController(animated: true)
            print($0)
            
            
            
            
        })
        
        
        
        
        
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 2
//    }

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
