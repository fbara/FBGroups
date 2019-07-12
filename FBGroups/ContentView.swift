//
//  ContentView.swift
//  FBGroups
//
//  Created by Frank Bara on 7/10/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    let posts = ["1", "2", "3","1", "2", "3"]
    
    var body: some View {
        NavigationView {
            List {
                
                
                ScrollView {
                    VStack(alignment: .leading) {
                        Text("Trending")
                        HStack {
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                        }
                    }
                    
                }.frame(height: 100)
                
                // post rows
                ForEach(posts.identified(by: \.self)) { post in
                    PostView()
                }

            }.navigationBarTitle(Text("Groups"))
        }
    }
}

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image("cappuccino")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 40)
                    .clipped()
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Donald Trump")
                            .font(.headline)
                        Text("Posted 8 hours ago")
                            .font(.subheadline)
                    }
                    .padding(.leading, 8)
            }
            .padding(.leading, 16)
            .padding(.top, 16)
            Text("Post body text")
                .lineLimit(nil)
                .padding(.leading, 16)
                .padding(.trailing, 32)
            
            Image("mocha")
                .resizable()
                .aspectRatio(contentMode: .fill)
        }.padding(.leading, -20)
        .padding(.bottom, -8)

    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
