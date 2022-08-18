//
//  SearchView.swift
//  KitchenWizard
//
//  Created by Cole Thorpen on 8/18/22.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            Text("Search for something delicious...")
                .font(.subheadline.italic())
                .searchable(text: $searchText, prompt: "Search...")
                .onSubmit(of: .search) {
                    print("searching for \(searchText)...")
                }
            
                .navigationTitle("Discover Recipes")
        }
        .padding()
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
