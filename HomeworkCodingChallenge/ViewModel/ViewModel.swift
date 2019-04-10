import Foundation

class ViewModel {
  var network: Network = Network()
  var randNumData: RandNum = RandNum(data: [], length: 0)
  
  func getResponse(completion: @escaping () -> Void) {
    network.getData { (result) in
      DispatchQueue.main.async {
        self.randNumData = try! JSONDecoder().decode(RandNum.self, from: result!)
        self.randNumData.data.sort()
        completion()
      }
    }
  }
  
  func setRandNumData(randNum: RandNum) {
    self.randNumData = randNum
  }
  
  func numOfItems() -> Int {
    return randNumData.length
  }
  
  func numAtRow(for indexPath: IndexPath) -> String {
    let num = String(self.randNumData.data[indexPath.row])
    return num
  }
  
  func getAverage() -> String {
    let nums = randNumData.data.map {
      Int($0)
    }
    let average = (nums.reduce(0, +)) / nums.count
    let strAvg = String(average)
    return strAvg
  }
}
