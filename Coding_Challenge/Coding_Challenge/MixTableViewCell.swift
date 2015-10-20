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
    @IBOutlet weak var dateLabel: UILabel!

    var mix: Mix?
    
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
        
        // Build the attributed string
        let attributes = [NSFontAttributeName: UIFont.fontAwesomeOfSize(14)] as Dictionary!
        let infoString = NSMutableAttributedString(string: "\(String.fontAwesomeIconWithName(.Heart)) \(likesCount)    ", attributes: attributes)
        infoString.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSRange(location: 0, length: 1))
        let playsInfo = NSAttributedString(string: "\(String.fontAwesomeIconWithName(.Play)) \(playsCount)", attributes: attributes)
        infoString.appendAttributedString(playsInfo)
        
        // Set the info label
        infoLabel.attributedText = infoString
        
        // Set user name
        if let user = mix?.user?.login {
            usernameLabel.text = user
        }
        
        // Format and set the dateLabel
        if let date = mix?.firstPublishedAt {
            let formatter = NSDateFormatter()
            formatter.dateStyle = .MediumStyle
            let trimmedDate = date.componentsSeparatedByString("T")[0]
            let dateComponents = NSDateComponents()
            let currentComponents = trimmedDate.componentsSeparatedByString("-")
            dateComponents.year = Int(currentComponents[0])!
            dateComponents.month = Int(currentComponents[1])!
            dateComponents.day = Int(currentComponents[2])!
            let formattedDate = NSCalendar.currentCalendar().dateFromComponents(dateComponents)
            dateLabel.text = formatter.stringFromDate(formattedDate!)
        }
    }
}
