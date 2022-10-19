

import UIKit

class TestViewController: UIViewController {
    let mainTableView = TestTableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mainTableView)
        mainTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        mainTableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        mainTableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        mainTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        // Do any additional setup after loading the view.
    }
    

}
