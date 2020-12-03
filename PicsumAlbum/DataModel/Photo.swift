//
//  Model.swift
//  PicsumAlbum
//
//  Created by Lin Ting Chieh on 2020/12/3.
//

import Foundation

struct PhotoResponse: Decodable {
    let photo: Photo
}

struct Photo: Decodable, Identifiable {
    var id: String {
        return download_url
    }
    var author: String
    var download_url: String
}
