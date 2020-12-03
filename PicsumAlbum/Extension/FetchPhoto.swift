//
//  Fetch.swift
//  PicsumAlbum
//
//  Created by Lin Ting Chieh on 2020/12/3.
//

import Foundation

class FetchPhoto {
    
   static func getData(completion: @escaping ([Photo]) -> ()) {
        guard let url = URL(string:"https://picsum.photos/v2/list") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let data = try! JSONDecoder().decode([Photo].self, from: data!)
            DispatchQueue.main.async {
                print(data)
                completion(data)
            }
        }.resume()
    }
}
