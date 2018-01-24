//
//  RXTableViewCell.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/1/24.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import UIKit

class RXTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
