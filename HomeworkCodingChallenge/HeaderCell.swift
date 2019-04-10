//
//  HeaderCell.swift
//  HomeworkCodingChallenge
//
//  Created by ctsuser on 4/6/19.
//  Copyright © 2019 ctsuser. All rights reserved.
//

import UIKit

class HeaderCell: UITableViewCell {

  @IBOutlet weak var numSelectedLabel: UILabel!
  @IBOutlet weak var avgLabel: UILabel!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
