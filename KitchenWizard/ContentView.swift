//
//  ContentView.swift
//  KitchenWizard
//
//  Created by Cole Thorpen on 8/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                Text("\"What's in the Fridge?\" View")
                    .tabItem {
                        Label("My Fridge", systemImage: "house")
                }
                Text("\"Random Recipe\" Screen")
                    .tabItem {
                        Image(systemName: "questionmark")
                        Text("Random")
                }
                Text("Search Screen")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                }
            Text("Meal Prep Screen")
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("Meal Prep")
            }
            Text("\"My Recipes\" View")
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("My Recipes")
            }
            }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
