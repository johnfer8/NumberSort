//
//  HeaderView.swift
//  HomeworkCodingChallenge
//
//  Created by ctsuser on 4/5/19.
//  Copyright © 2019 ctsuser. All rights reserved.
//

import UIKit

class HeaderView: UIView {

  @IBOutlet weak var averageLabel: UILabel!
  
  @IBOutlet weak var numberLabel: UILabel!
  
  class func instanceFromNib() -> UIView {
    return UINib(nibName: "HeaderView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
  }
}
