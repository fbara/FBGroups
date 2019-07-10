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
                            Text("Group 1")
                            Text("Group 1")
                        }
                    }
                    
                }.frame(height: 150)
                
                ForEach(posts.identified(by: \.self)) { post in
                    Text(post)
                }

            }.navigationBarTitle(Text("Groups"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
