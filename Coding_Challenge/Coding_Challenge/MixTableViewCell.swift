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
    @IBOutlet weak var mixCoverImage: UIImageView!
    @IBOutlet weak var tagsLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!

    var mix: Mix?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //I miss Swift 1.2 # marks -- (#mix: Mix) vs (mix mix: Mix)
    func loadItem(mix mix: Mix?) {
        if let m = mix {
            self.mix = m
        }
        
        mixCoverImage.contentMode = .ScaleAspectFill
        mixCoverImage.clipsToBounds = true
        
        
        if let tags = mix?.tagListCache {
            tagsLabel.text = tags
        }
        
        if let title = mix?.name {
            titleLabel.text = title
        }
        
        // TODO: Info label; NSAttributedString, with FontAwesome.
        
        if let user = mix?.user?.login {
            usernameLabel.text = user
        }
    }
}