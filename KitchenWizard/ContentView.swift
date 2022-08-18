//
//  ContentView.swift
//  KitchenWizard
//
//  Created by Cole Thorpen on 8/16/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView() {
            MyFridgeView()
                .tabItem {
                    Label("My Fridge", systemImage: "house.fill")
                }
            Text("\"Random Recipe\" Screen")
                .tabItem {
                    Image(systemName: "questionmark")
                    Text("Random")
                }
           SearchView()
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
