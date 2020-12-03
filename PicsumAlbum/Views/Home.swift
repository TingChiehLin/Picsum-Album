//
//  MainView.swift
//  PicsumAlbum
//
//  Created by Lin Ting Chieh on 2020/12/3.
//

import SwiftUI
import SDWebImageSwiftUI

struct Home: View {
    @State var photos:[Photo] = []
    
    let columns: [GridItem] = Array(repeating: .init(.adaptive(minimum: 100, maximum: 160)), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(photos) { photo in
                    VStack {
                        WebImage(url: URL(string: photo.download_url))
                            .resizable()
                            .frame(width:150, height: 150)
                        Text(photo.author)
                            .multilineTextAlignment(.center)
                    }
                }
            }
            .padding(16)
            .navigationBarTitle("Picsum-Album").onAppear{
                    FetchPhoto.getData{photo in
                        self.photos = photo
                    }
                }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
