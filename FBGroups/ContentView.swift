//
//  ContentView.swift
//  FBGroups
//
//  Created by Frank Bara on 7/10/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            List {
                Text("First row")
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
