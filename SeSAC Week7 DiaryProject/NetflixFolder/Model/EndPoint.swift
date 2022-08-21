

import Foundation


enum EndPoint {
    case search
    
    var requestURL: String {
        switch self {
        case .search:
            return URL.makeEndPoint("search/photos?")
        }
        
    }
}

extension URL {
    static let baseURL = "ttps://api.unsplash.com/"
    
    static func makeEndPoint(_ endpoint: String) -> String {
        return baseURL + endpoint
    }
}

