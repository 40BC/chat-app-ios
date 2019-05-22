//
//  MessageCell.swift
//  Smack
//
//  Created by Brandon Criss on 5/15/19.
//  Copyright © 2019 Brandon Criss. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var userImage: CircleImage!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(message: Message) {
        messageLabel.text = message.message
        usernameLabel.text = message.userName
        userImage.image = UIImage(named: message.userAvatar)
        userImage.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
        
        guard var isoDate = message.timestamp else { return }
        let endOfString = isoDate.index(isoDate.endIndex, offsetBy: -6)
        isoDate = String(isoDate[...endOfString])
        
        let isoFormatter = ISO8601DateFormatter()
        let chatDate = isoFormatter.date(from: isoDate.appending("Z"))

        let newFormatter = DateFormatter()
        newFormatter.dateFormat = "MMM d, HH:mm"
        
        if let finalDate = chatDate {
            let finalDate = newFormatter.string(from: finalDate)
            timestampLabel.text = finalDate
        }
    }
}
