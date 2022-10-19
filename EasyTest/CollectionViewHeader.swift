
import UIKit


class CollectionViewHeader: UICollectionReusableView {
    
    let titleLabel = UILabel()
    let arrowLabel = UILabel()
    static let reuseIdentifier = "CollectionViewHeader"
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let marginGuide = layoutMarginsGuide
        
        // Arrow label
        addSubview(arrowLabel)
        arrowLabel.textColor = UIColor.white
        arrowLabel.translatesAutoresizingMaskIntoConstraints = false
        arrowLabel.widthAnchor.constraint(equalToConstant: 12).isActive = true
        arrowLabel.topAnchor.constraint(equalTo: marginGuide.topAnchor).isActive = true
        arrowLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor).isActive = true
        arrowLabel.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor).isActive = true
        
        // Title label
        addSubview(titleLabel)
        titleLabel.textColor = UIColor.white
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: marginGuide.topAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor).isActive = true
        
        
//        self.addSubview(lblTitle)
//        lblTitle.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 80).isActive=true
//        lblTitle.rightAnchor.constraint(equalTo: layoutMarginsGuide.centerXAnchor,constant: 5).isActive=true
//        lblTitle.widthAnchor.constraint(equalToConstant: 250).isActive=true
//        lblTitle.heightAnchor.constraint(equalToConstant: 80).isActive=true
//        lblTitle.translatesAutoresizingMaskIntoConstraints = false
//        lblTitle.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        lblTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
//        lblTitle.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//        lblTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
//
//
    }
        
    required init?(coder: NSCoder) {
        fatalError("Not implemented")
    }
    
   
    var lblTitle: UILabel = {
        let lbl = UILabel(frame: CGRect(x: 0, y: 0, width: 350, height: 40))
        lbl.center = CGPoint(x: 200, y: 290)
        lbl.textColor = UIColor.black
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
}
