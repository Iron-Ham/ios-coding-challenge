//
//  MixTableViewCell.swift
//  Coding_Challenge
//
//  Created by Hesham Salman on 10/16/15.
//  Copyright © 2015 Hesham Salman. All rights reserved.
//

import UIKit

@IBDesignable
class MixTableViewCell: UITableViewCell {

    var mix: Mix?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
