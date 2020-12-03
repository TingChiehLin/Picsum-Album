//
//  ContentView.swift
//  PicsumAlbum
//
//  Created by Lin Ting Chieh on 2020/12/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 100, content: {
                Image("Logo")
                    .scaledToFit()
                    .padding([.leading, .trailing])
                NavigationLink(destination: Home()) {
                       Text("Start")
                    }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
