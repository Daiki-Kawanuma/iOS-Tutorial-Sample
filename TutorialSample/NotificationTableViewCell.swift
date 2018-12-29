//
//  NotificationTableViewCell.swift
//  TutorialSample
//
//  Created by Daiki Kawanuma on 2018/12/29.
//  Copyright © 2018年 Daiki Kawanuma. All rights reserved.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var attentionLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
