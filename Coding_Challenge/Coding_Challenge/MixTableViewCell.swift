//
//  MixTableViewCell.swift
//  Coding_Challenge
//
//  Created by Hesham Salman on 10/16/15.
//  Copyright © 2015 Hesham Salman. All rights reserved.
//

import UIKit
import FontAwesome_swift

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
        
        // "Crop" the image to fit
        mixCoverImage.contentMode = .ScaleAspectFill
        mixCoverImage.clipsToBounds = true
        
        // Set tag list
        if let tags = mix?.tagListCache {
            tagsLabel.text = tags
        }
        
        // Set playlist title
        if let title = mix?.name {
            titleLabel.text = title
        }
        
        // Get values of likes & plays if available; otherwise set to 0
        let likesCount = mix?.likesCount ?? 0
        let playsCount = mix?.playsCount ?? 0
        
        //Build the attributed string
        let attributes = [NSFontAttributeName: UIFont.fontAwesomeOfSize(14)] as Dictionary!
        let infoString = NSMutableAttributedString(string: "\(String.fontAwesomeIconWithName(.Heart)) \(likesCount)    ", attributes: attributes)
        infoString.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSRange(location: 0, length: 1))
        let playsInfo = NSAttributedString(string: "\(String.fontAwesomeIconWithName(.Play)) \(playsCount)", attributes: attributes)
        infoString.appendAttributedString(playsInfo)
        
        //Set the info label
        infoLabel.attributedText = infoString
        
        //Set user name
        if let user = mix?.user?.login {
            usernameLabel.text = user
        }
    }
}