//
//  CustomCellTableViewCell.swift
//  tableViewTutorial
//
//  Created by Alejandro Castillejo on 7/11/16.
//  Copyright © 2016 alejandrocastillejo. All rights reserved.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {

    @IBOutlet var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        label.backgroundColor = UIColor.yellowColor()
//        self.backgroundColor = UIColor.greenColor()
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
