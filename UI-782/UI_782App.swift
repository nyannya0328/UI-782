//
//  UI_782App.swift
//  UI-782
//
//  Created by nyannyan0328 on 2022/11/03.
//

import SwiftUI

@main
struct UI_782App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowResizability(.contentSize)
        .windowStyle(.hiddenTitleBar)
        
        WindowGroup("NEW TAB", for: Tab.self) { $tab in
            
            NewTabView(isRootView: false,tab: tab)
        }
        .windowResizability(.contentSize)
        .windowStyle(.hiddenTitleBar)
    }
}
