
import UIKit


class SearchImageViewController: BaseViewController {
    
    var mainView = SearchImageView()
    
    
    override func loadView() {
        self.view = mainView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
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
    
    override func configure() {
        mainView.collectionView.delegate = self
        mainView.collectionView.dataSource = self
        mainView.collectionView.register(SearchImageCollectionViewCell.self, forCellWithReuseIdentifier: SearchImageCollectionViewCell.identifier)
    }
    
    override func setConstraints() {
        
    }

}

    // MARK: - extension


extension SearchImageViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchImageCollectionViewCell.identifier, for: indexPath) as? SearchImageCollectionViewCell else { return UICollectionViewCell() }
        cell.backgroundColor = .systemBlue
        
        return cell
    }
    
    
}

extension SearchImageViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        <#code#>
    }
    
}
