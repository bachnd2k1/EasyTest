
import UIKit

class QRViewController: UIViewController {

    var jsonQr = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        if (!jsonQr.isEmpty) {
            let image = generateQRCode(from: jsonQr)
            imgView.image = image
        }
    }
    
    func setupViews() {
        view.addSubview(imgView)
        imgView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive=true
        imgView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        imgView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive=true
        imgView.widthAnchor.constraint(equalToConstant: 250).isActive=true
        imgView.heightAnchor.constraint(equalTo: imgView.widthAnchor).isActive=true
    }
    
    func generateQRCode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)

        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)

            if let output = filter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }
        return nil
    }
    
    let imgView: UIImageView = {
        let v = UIImageView()
        v.contentMode = .scaleAspectFit
        v.translatesAutoresizingMaskIntoConstraints=false
        return v
    }()
    
}
