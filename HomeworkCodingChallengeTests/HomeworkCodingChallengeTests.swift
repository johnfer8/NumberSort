//
//  HomeworkCodingChallengeTests.swift
//  HomeworkCodingChallengeTests
//
//  Created by ctsuser on 4/4/19.
//  Copyright © 2019 ctsuser. All rights reserved.
//

import XCTest
@testable import HomeworkCodingChallenge

class HomeworkCodingChallengeTests: XCTestCase {
  
  var viewModel: ViewModel!
  let sortedData: [UInt8] = [0,27,70,93,121,147,158,165,199]
  let randNum: RandNum = RandNum(data: [158,93,70,27,165,199,121,0,147], length: 9)
  
  override func setUp() {
    super.setUp()
    self.viewModel = ViewModel()
    self.viewModel.setRandNumData(randNum: self.randNum)
  }
  
  override func tearDown() {
    self.viewModel = nil
    super.tearDown()
  }
  
  func testAverage() {
    let average = viewModel.getAverage()
    XCTAssert(average == "108")
  }
  
}
