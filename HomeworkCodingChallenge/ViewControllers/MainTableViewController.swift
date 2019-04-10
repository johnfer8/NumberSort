import UIKit

class MainTableViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView! {
    didSet {
      self.tableView.delegate = self
      self.tableView.dataSource = self
    }
  }
  @IBOutlet weak var averageLabel: UILabel!
  @IBOutlet weak var rowSelectedLabel: UILabel!
  
  var viewModel: ViewModel = ViewModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    viewModel.getResponse {
      self.averageLabel.text = "Average: \(self.viewModel.getAverage())"
      self.tableView.reloadData()
    }
  }
}

extension MainTableViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.numOfItems()
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "uniqueCell") ?? UITableViewCell(style: .default, reuseIdentifier: "uniqueCell")
    cell.textLabel?.text = viewModel.numAtRow(for: indexPath)
    cell.textLabel?.textAlignment = .center
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.rowSelectedLabel.text = "Number Selected: \(viewModel.numAtRow(for: indexPath))"
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80 
  }
  
}
