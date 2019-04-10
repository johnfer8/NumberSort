//
//  RandNum.swift
//  HomeworkCodingChallenge
//
//  Created by ctsuser on 4/9/19.
//  Copyright © 2019 ctsuser. All rights reserved.
//

import Foundation

class RandNum: Decodable{
  var data: [UInt8]
  var length: Int
  
  init(data: [UInt8], length: Int) {
    self.data = data
    self.length = length
  }
  
  
}
