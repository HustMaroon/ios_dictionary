//
//  ListViewCell.swift
//  dictionary
//
//  Created by Do Xuan Thanh on 10/17/19.
//  Copyright © 2019 monstar-lab. All rights reserved.
//

import UIKit

class ListViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
