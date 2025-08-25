//
//  ContentView.swift
//  MacJson
//
//  Created by Никита on 10.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Menu()
                .tabItem {
                    Image(systemName: "cart")
                        .foregroundColor(.red)
                    Text("Menu")
                        
                }
            
            Text("Hello world")
                .tabItem {
                    Image(systemName: "message")
                    Text("Message")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Account")
                }
            
            DarkModeView()
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("DarkMode")
                }
        }
        .accentColor(.orange)
    }
}

#Preview {
    ContentView()
}
