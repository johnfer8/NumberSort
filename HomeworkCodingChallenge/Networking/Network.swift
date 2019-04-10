import Foundation

class Network {
  
  let endpoint = "https://qrng.anu.edu.au/API/jsonI.php?length=40&type=uint8"
  
  func getData(completion: @escaping (Data?) -> Void){
    guard let url: URL = URL(string: endpoint) else {
      return
    }
    let request = URLRequest(url: url)
    
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
      guard error == nil else {
        print(error!)
        return
      }
      guard let responseData = data else {
        print("Didn't get data")
        return
      }
      completion(responseData)
    }
    task.resume()
  }
}
