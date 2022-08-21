

import UIKit



class PreviewImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(image: UIImage?, highlightedImage: UIImage?) {
        super.init(image: image, highlightedImage: highlightedImage)
    }
    
    override init(image: UIImage?) {
        super.init(image: image)
    }
    
    func setupView() {
        
        layer.borderWidth = 3
        layer.borderColor = UIColor.systemGray.cgColor
        contentMode = .scaleToFill
        DispatchQueue.main.async {
            self.layer.cornerRadius = self.frame.width / 2
            self.clipsToBounds = true
        }
    }
    
    
}
