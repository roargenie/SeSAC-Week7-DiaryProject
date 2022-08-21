

import UIKit
import Alamofire
import SwiftyJSON


class UnsplashAPIManager {
    
    static let shared = UnsplashAPIManager()
    
    private init() { }
    
    func getImage(query: String) {
        
        let url = "\(EndPoint.search.requestURL)"
        
        let parameter: Parameters = [
            "query": query,
            "client_id": APIKey.Unsplash
        ]
        
        AF.request(url, method: .get, parameters: parameter).validate().responseData(queue: .global()) { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print(json)
                
                
                
                
            case .failure(let error):
                print(error)
                
            }
        }
        
    }
    
    
    
    
    
}
