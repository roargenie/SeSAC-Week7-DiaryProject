

import UIKit


class MainImageViewController: BaseViewController {
    
    var mainView = MainImageView()
    
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "메인화면"
        mainView.imageChangeButton.addTarget(self, action: #selector(imageChangeButtonTapped), for: .touchUpInside)
    }
    
    @objc func imageChangeButtonTapped() {
        let vc = SearchImageViewController()
        //let nav = UINavigationController(rootViewController: vc)
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
//    func setNavigationBar() {
//        let screenSize: CGRect = UIScreen.main.bounds
//        let nav = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 44))
//        //let navItem = UINavigationItem(title: "메인화면")
//        self.view.addSubview(nav)
//        
//    }
    
    override func configure() {
        
    }
    
    override func setConstraints() {
        
    }
    
    
}
