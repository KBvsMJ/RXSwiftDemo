//
//  SelectTableViewCell.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/1/25.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import UIKit

class SelectTableViewCell: UITableViewCell {

    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
