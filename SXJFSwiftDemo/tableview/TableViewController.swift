//
//  TableViewController.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/1/24.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
class TableViewController: UITableViewController {

    let DataSource = Variable([BasicModel]())
    static let dataArray = [
        BasicModel(name: "Jack", age: 18),
        BasicModel(name: "Tim", age: 20),
        BasicModel(name: "Andy", age: 24),
       
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "tableview"
        self.navigationItem.hidesBackButton = true
        tableView.dataSource = nil;
        tableView.delegate = nil
        
       _ =  DataSource.asObservable().bind(to: tableView.rx.items(cellIdentifier: "RXTableViewCell", cellType: RXTableViewCell.self)){
        _,element,cell in cell.lblName.text = "姓名:" + element.name
        cell.lblAge.text = "年龄:" + String(element.age)
        }
        DataSource.value.append(contentsOf: TableViewController.dataArray)
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2.0) {
            [unowned self] in
            self.DataSource.value.append(contentsOf: TableViewController.dataArray)
        }
         _ = tableView.rx.modelSelected(BasicModel.self).subscribe(onNext:{model in
            print("name=\(model.name) age= \(model.age)")
            
            self.navigationController?.popViewController(animated: true)
            
        })
       
        
     
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
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
