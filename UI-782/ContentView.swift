//
//  ContentView.swift
//  UI-782
//
//  Created by nyannyan0328 on 2022/11/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       NewTabView(isRootView: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
