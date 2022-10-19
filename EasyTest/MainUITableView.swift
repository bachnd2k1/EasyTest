
import UIKit

class MainUITableView: UITableView, UITableViewDelegate, UITableViewDataSource, CollapsibleTableViewHeaderDelegate {
    
    var questions = [Question1]()
    override init(frame: CGRect, style: UITableViewStyle) {
            super.init(frame: CGRect.zero, style: .grouped)
            self.delegate = self
            self.dataSource = self
            self.translatesAutoresizingMaskIntoConstraints = false
            self.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions[section].collapsed ? 0 : questions[section].answers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CollapsibleTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CollapsibleTableViewCell ?? CollapsibleTableViewCell(style: .default, reuseIdentifier: "cell")
        let item: Question1  = questions[indexPath.section]
        cell.nameLabel.text = item.answers[indexPath.row]
        if indexPath.row == item.correct {
            cell.backgroundColor = UIColor.green
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as? CollapsibleTableViewHeader ?? CollapsibleTableViewHeader(reuseIdentifier: "header")
        let index = section + 1
        header.titleLabel.text = "Question" + String(index) + ": " + questions[section].question
        header.titleLabel.textColor = UIColor.black
        header.arrowLabel.text = ">"
//        header.setCollapsed(questions[section].collapsed)
        header.section = section
        header.delegate = self

        return header
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44.0
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1.0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return questions.count
    }
    
    func toggleSection(_ header: CollapsibleTableViewHeader, section: Int) {
        let collapsed = !questions[section].collapsed
        questions[section].collapsed = collapsed
//        header.setCollapsed(collapsed)
        self.reloadSections(NSIndexSet(index: section) as IndexSet, with: .automatic)
    }
    
    
}
