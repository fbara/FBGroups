//
//  ContentView.swift
//  FBGroups
//
//  Created by Frank Bara on 7/10/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import SwiftUI

struct Post {
    let id: Int
    let username, text, imageName: String
}

struct ContentView : View {
    let posts: [Post] = [
        .init(id: 0, username: "Frank Bara", text: "President of the US, spending most of my time on Twitter!", imageName: "americano"),
        .init(id: 1, username: "Donald Trump", text: "President of the US, spending most of my time on Twitter!", imageName: "mocha")
    ]
    
    var body: some View {
        NavigationView {
            List {
                
                VStack {
                    Text("Trending")
                    ScrollView {
                        VStack(alignment: .leading) {
                            
                            HStack {
                                GroupView()
                                GroupView()
                                GroupView()
                                GroupView()
                                GroupView()
                                GroupView()
                                GroupView()
                                GroupView()
                                GroupView()
                            }
                        }
                        
                    }.frame(height: 200)
                }
                

                
                // post rows
                ForEach(posts.identified(by: \.id)) { post in
                    PostView(post: post)
                }

            }.navigationBarTitle(Text("Groups"))
        }
    }
}

struct GroupView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Image("icedbrew")
                .resizable()
                .cornerRadius(8)
                .clipped()
            Text("A bunch of different types of coffee")
                .lineLimit(nil)
                .padding(.leading, 0)
        }.frame(width: 130, height: 170)
    }
}

struct PostView: View {
    let post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image("cappuccino")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 40)
                    .clipped()
                    VStack(alignment: .leading, spacing: 4) {
                        Text(post.username)
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
            
            Image(post.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 350)
                .clipped()
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
