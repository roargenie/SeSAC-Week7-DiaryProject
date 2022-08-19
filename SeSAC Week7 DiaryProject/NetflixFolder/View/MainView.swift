

import UIKit
import SnapKit

class MainView: BaseView {
    
    let backgroundImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "어벤져스엔드게임")
        view.contentMode = .scaleToFill
        return view
    }()
    
    let subImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "background")
        view.contentMode = .scaleToFill
        return view
    }()
    
    let netflixLogoButton: UIButton = {
        let view = UIButton()
        view.setTitle("N", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 45, weight: .heavy)
        view.setTitleColor(UIColor.white, for: .normal)
        return view
    }()
    
    let tvProgramButton: UIButton = {
        let view = UIButton()
        view.setTitle(" TV 프로그램 ", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        view.setTitleColor(UIColor.white, for: .normal)
        return view
    }()
    
    let movieButton: UIButton = {
        let view = UIButton()
        view.setTitle(" 영화 ", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        view.setTitleColor(UIColor.white, for: .normal)
        return view
    }()
    
    let myPickButton: UIButton = {
        let view = UIButton()
        view.setTitle(" 내가 찜한 콘텐츠 ", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        view.setTitleColor(UIColor.white, for: .normal)
        return view
    }()
    
    let checkImageButton: UIButton = {
        let view = UIButton()
        var config = UIButton.Configuration.plain()
        var attribute = AttributedString.init("내가 찜한 콘텐츠")
        attribute.font = .systemFont(ofSize: 11, weight: .regular)
        //config.title = "내가 찜한 콘텐츠"
        config.image = UIImage(named: "check")
        config.imagePadding = 10
        config.imagePlacement = NSDirectionalRectEdge.top
        config.baseForegroundColor = UIColor.white
        config.buttonSize = .medium
        config.attributedTitle = attribute
        view.configuration = config
        return view
    }()
    
    let playButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "play_normal"), for: .normal)
//        view.setBackgroundImage(UIImage(named: "play_normal"), for: .normal)
        return view
    }()
    
    let infoButton: UIButton = {
        let view = UIButton()
        var config = UIButton.Configuration.plain()
        var attribute = AttributedString.init("정보")
        attribute.font = .systemFont(ofSize: 11, weight: .regular)
        //config.title = "정보"
        config.image = UIImage(named: "info")
        config.imagePadding = 10
        config.imagePlacement = NSDirectionalRectEdge.top
        config.baseForegroundColor = UIColor.white
        config.buttonSize = .medium
        config.attributedTitle = attribute
        view.configuration = config
        return view
    }()
    
    let preViewImage1: PreviewImageView = {
        let view = PreviewImageView()
        view.image = UIImage(named: "겨울왕국2")
        return view
    }()
    
    let preViewImage2: PreviewImageView = {
        let view = PreviewImageView()
        view.image = UIImage(named: "신과함께인과연")
        return view
    }()
    
    let preViewImage3: PreviewImageView = {
        let view = PreviewImageView()
        view.image = UIImage(named: "아바타")
        return view
    }()
    
    let previewLabel: UILabel = {
        let view = UILabel()
        view.text = "미리보기"
        view.textColor = .white
        view.font = .systemFont(ofSize: 18, weight: .bold)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        [backgroundImageView, subImageView, netflixLogoButton, tvProgramButton, movieButton, myPickButton,checkImageButton, playButton, infoButton, previewLabel, preViewImage1, preViewImage2, preViewImage3].forEach { self.addSubview($0) }

    }
    
    override func setConstraints() {
        backgroundImageView.snp.makeConstraints { make in
            make.top.leading.trailing.equalTo(self)
            make.height.equalTo(self.snp.height).multipliedBy(0.8)
        }
        subImageView.snp.makeConstraints { make in
            make.top.leading.trailing.bottom.equalTo(self)
        }
        netflixLogoButton.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leading.equalTo(12)
        }
        tvProgramButton.snp.makeConstraints { make in
            make.centerY.equalTo(netflixLogoButton.snp.centerY)
            make.leading.equalTo(netflixLogoButton.snp.trailing).offset(40)
        }
        movieButton.snp.makeConstraints { make in
            make.centerY.equalTo(netflixLogoButton.snp.centerY)
            make.leading.equalTo(tvProgramButton.snp.trailing).offset(20)
        }
        myPickButton.snp.makeConstraints { make in
            make.centerY.equalTo(netflixLogoButton.snp.centerY)
            make.leading.equalTo(movieButton.snp.trailing).offset(20)
            make.trailing.lessThanOrEqualTo(self.snp.trailing).offset(-12)
        }
        preViewImage2.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.bottom.equalTo(self.snp.bottom).offset(-30)
            make.width.height.equalTo(self.snp.width).multipliedBy(0.3)
        }
        preViewImage1.snp.makeConstraints { make in
            make.centerY.equalTo(preViewImage2.snp.centerY)
            make.leading.equalTo(self.snp.leading).offset(12)
            make.trailing.greaterThanOrEqualTo(preViewImage2.snp.leading).offset(-12)
            make.width.height.equalTo(self.snp.width).multipliedBy(0.3)
        }
        preViewImage3.snp.makeConstraints { make in
            make.centerY.equalTo(preViewImage2.snp.centerY)
            make.leading.greaterThanOrEqualTo(preViewImage2.snp.trailing).offset(12)
            make.trailing.equalTo(self.snp.trailing).offset(-12)
            make.width.height.equalTo(self.snp.width).multipliedBy(0.3)
        }
        previewLabel.snp.makeConstraints { make in
            make.leading.equalTo(self.snp.leading).offset(12)
            make.bottom.equalTo(preViewImage1.snp.top).offset(-12)
        }
        playButton.snp.makeConstraints { make in
            make.centerX.equalTo(self.snp.centerX)
            make.bottom.equalTo(backgroundImageView.snp.bottom).offset(-50)
            make.width.equalTo(preViewImage2.snp.width).multipliedBy(0.8)
            make.height.equalTo(30)
        }
        checkImageButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton.snp.centerY)
            make.centerX.equalTo(preViewImage1.snp.centerX)
//            make.leading.greaterThanOrEqualTo(self.snp.leading).offset(12)
//            make.trailing.equalTo(playButton.snp.leading).offset(-20)
            make.width.equalTo(preViewImage1.snp.width).multipliedBy(0.9)
        }
        infoButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton.snp.centerY)
            make.centerX.equalTo(preViewImage3.snp.centerX)
//            make.leading.equalTo(playButton.snp.trailing).offset(20)
//            make.trailing.lessThanOrEqualTo(self.snp.trailing).offset(-12)
            make.width.equalTo(60)
        }
        
    }
    
    
}








