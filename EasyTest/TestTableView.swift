
import UIKit

class TestTableView: UITableView,UITableViewDelegate, UITableViewDataSource {
   
    var questionStructs = [QuesionStruct]()
    override init(frame: CGRect, style: UITableViewStyle) {
            super.init(frame: CGRect.zero, style: .grouped)
     
        backgroundColor = .red
        questionStructs = [
        QuesionStruct(tittle: "Question", textFiled: ["Enter question"]),
        QuesionStruct(tittle: "Answer", textFiled: ["1st","2nd","3th","4th"])
        ]
        self.delegate = self
        self.dataSource = self
        self.translatesAutoresizingMaskIntoConstraints = false
        self.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
           
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionStructs[section].textFiled.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CellLabel = tableView.dequeueReusableCell(withIdentifier: "cellLabel") as? CellLabel ?? CellLabel(style: .default, reuseIdentifier: "cellLabel")
        let item  = questionStructs[indexPath.section]
        cell.layer.cornerRadius = 15
        cell.backgroundColor = .gray
        cell.nameLabel.placeholder = item.textFiled[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "headeradd") as? HeaderMain ?? HeaderMain(reuseIdentifier: "headeradd")
        header.titleLabel.text = questionStructs[section].tittle
        header.titleLabel.textColor = UIColor.black
        return header
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44.0
    }

   

    func numberOfSections(in tableView: UITableView) -> Int {
        return questionStructs.count
    }
}
