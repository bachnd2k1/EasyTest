

import UIKit

protocol ReusableView: AnyObject {
    static var identifier: String { get }
}

class ProfileCell: UICollectionViewCell {
  
    private enum Constants {
        // MARK: contentView layout constants
        static let contentViewCornerRadius: CGFloat = 4.0

        // MARK: profileImageView layout constants
        static let imageHeight: CGFloat = 180.0

        // MARK: Generic layout constants
        static let verticalSpacing: CGFloat = 8.0
        static let horizontalPadding: CGFloat = 16.0
        static let profileDescriptionVerticalPadding: CGFloat = 8.0
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupViews()
        setupLayouts()
    }

    private func setupViews() {
        contentView.clipsToBounds = true
        contentView.backgroundColor = .white
        
        contentView.addSubview(textField)
    }

    private func setupLayouts() {
        
        textField.translatesAutoresizingMaskIntoConstraints = false

        // Layout constraints for `profileImageView`
//        NSLayoutConstraint.activate([
//            textField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            textField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
//            textField.topAnchor.constraint(equalTo: contentView.topAnchor),
//            textField.heightAnchor.constraint(equalToConstant: Constants.imageHeight)
//        ])
        NSLayoutConstraint.activate([

            textField.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10),
            textField.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -10),
            textField.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 20),
            textField.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -10)])

        // Layout constraints for `usernameLabel`
       
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var lblTitle: UILabel = {
        let lbl = UILabel()
        lbl.textColor = UIColor.black
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    var textField : UITextField = {
        let edt = UITextField()
        edt.textAlignment = .center
        edt.placeholder = "Username"
        edt.textColor = UIColor.red
        edt.textAlignment = .center
        edt.layer.cornerRadius = 15.0
        edt.backgroundColor = .lightGray
        edt.font = UIFont.systemFont(ofSize: 14)
        edt.isEnabled = true
        edt.isUserInteractionEnabled = true
        edt.autocorrectionType = UITextAutocorrectionType.no
        edt.keyboardType = UIKeyboardType.default
        edt.returnKeyType = UIReturnKeyType.done
        edt.clearButtonMode = UITextFieldViewMode.whileEditing
        edt.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        return edt
    }()
}

extension ProfileCell: ReusableView {
    static var identifier: String {
        return String(describing: self)
    }
}


