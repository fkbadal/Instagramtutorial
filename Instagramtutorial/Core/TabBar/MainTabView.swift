//
//  MainTabView.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/1/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            Text("Feed")
                .tabItem {
                    Image(systemName: "house")
                }
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
            }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
