//
//  SearchView.swift
//  KitchenWizard
//
//  Created by Cole Thorpen on 8/18/22.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var numResults = 0
    
    var body: some View {
        NavigationView {
            Text ("Search for something delicious")
                .searchable(text: $searchText, prompt: "Search Recipes...")
                .navigationTitle("Discover Recipes")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
