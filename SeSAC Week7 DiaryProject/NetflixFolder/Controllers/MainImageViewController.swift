

import UIKit
import RealmSwift

class MainImageViewController: BaseViewController {
    
    var mainView = MainImageView()
    let localRealm = try! Realm()  // Realm 테이블에 데이터를 CRUD할 때, Realm 테이블 경로에 접근 하기위해
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "메인화면"
        configure()
        print("Realm is located at:", localRealm.configuration.fileURL!)
    }
    
    @objc func imageChangeButtonTapped() {
        let vc = SearchImageViewController()
        //let nav = UINavigationController(rootViewController: vc)
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func sampleButtonTapped() {
        let task = UserDiary(diaryTitle: "ㄱ오늘의 일기\(Int.random(in: 1...1000))", diaryContent: "일기 테스트 내용", diaryDate: Date(), regdate: Date(), photo: nil) // => Record
        
        try! localRealm.write {
            localRealm.add(task) // Create
            print("Realm Succeed")
            dismiss(animated: true)
        }
        
    }
    
//    func setNavigationBar() {
//        let screenSize: CGRect = UIScreen.main.bounds
//        let nav = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 44))
//        //let navItem = UINavigationItem(title: "메인화면")
//        self.view.addSubview(nav)
//        
//    }
    
    override func configure() {
        mainView.imageChangeButton.addTarget(self, action: #selector(imageChangeButtonTapped), for: .touchUpInside)
        mainView.sampleButton.addTarget(self, action: #selector(sampleButtonTapped), for: .touchUpInside)
    }
    
    override func setConstraints() {
        
    }
    
    
}
