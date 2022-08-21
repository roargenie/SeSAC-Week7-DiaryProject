
import UIKit


class SearchImageViewController: BaseViewController {
    
    var mainView = SearchImageView()
    
    
    override func loadView() {
        self.view = mainView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationItem()
    }
    
    func setNavigationItem() {
        self.navigationItem.title = "이미지 선택하기"
        let doneButton = UIBarButtonItem(title: "선택", style: .done, target: self, action: #selector(rightBarButtonTapped))
        self.navigationItem.rightBarButtonItem = doneButton
        
    }
    
    @objc func rightBarButtonTapped() {
        
        
        self.navigationController?.popViewController(animated: true)
    }
    
}



