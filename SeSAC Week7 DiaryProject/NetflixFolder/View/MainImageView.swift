

import UIKit
import SnapKit


class MainImageView: BaseView {
    
    let imageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .systemGray4
        view.contentMode = .scaleToFill
        return view
    }()
    
    let imageChangeButton: UIButton = {
        let view = UIButton()
        view.setTitle("이미지 바꾸기", for: .normal)
        view.backgroundColor = .systemBlue
        view.titleLabel?.font = .systemFont(ofSize: 10, weight: .bold)
        return view
    }()
    
    let sampleButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .green
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func configureUI() {
        [imageView, imageChangeButton, sampleButton].forEach { self.addSubview($0) }
        
    }
    
    override func setConstraints() {
        imageView.snp.makeConstraints { make in
            make.center.equalTo(self.snp.center)
            make.width.height.equalTo(300)
        }
        imageChangeButton.snp.makeConstraints { make in
            make.trailing.equalTo(imageView.snp.trailing).offset(-10)
            make.bottom.equalTo(imageView.snp.bottom).offset(-10)
            make.width.height.equalTo(50)
        }
        sampleButton.snp.makeConstraints { make in
            make.width.height.equalTo(60)
            make.trailing.top.equalTo(self.safeAreaLayoutGuide)
        }
    }
    
}
