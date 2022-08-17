//
//  ContentView.swift
//  KitchenWizard
//
//  Created by Cole Thorpen on 8/16/22.
//

import SwiftUI

struct ContentView: View {
    @State var selection = "What's in the Fridge?"
    
    var body: some View {
        NavigationView{
            TabView(selection: $selection) {
                Text("\"What's in the Fridge?\" View")
                    .tabItem {
                        Label("My Fridge", systemImage: "house.fill")
                    }.tag("What's in the Fridge?")
                Text("\"Random Recipe\" Screen")
                    .tabItem {
                        Image(systemName: "questionmark")
                        Text("Random")
                    }.tag("Random Recipe")
                Text("Search Screen")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }.tag("Search Recipes")
                Text("Meal Prep Screen")
                    .tabItem {
                        Image(systemName: "list.bullet.rectangle")
                        Text("Meal Prep")
                    }.tag("Meal Prep")
                Text("\"My Recipes\" View")
                    .tabItem {
                        Image(systemName: "books.vertical.fill")
                        Text("My Recipes")
                    }.tag("My Recipes")
            }
            .navigationTitle(selection)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
