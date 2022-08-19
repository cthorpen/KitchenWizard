//
//  SearchView.swift
//  KitchenWizard
//
//  Created by Cole Thorpen on 8/18/22.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var numResults = -1
    
    var body: some View {
        NavigationView {
            if (numResults == -1) {
                Text("Search for something delicious...")
                    .font(.subheadline.italic())
                    .searchable(text: $searchText, prompt: "Search...")
                    .onSubmit(of: .search) {
                        print("searching for \(searchText)...")
                        numResults = 10
                    }
                .navigationTitle("Discover Recipes")
            }
            else {
                List {
                    ForEach((0...numResults), id: \.self) {_ in
                        CardView()
                    }
                }
                .searchable(text: $searchText, prompt: "Search...")
                .onSubmit(of: .search) {
                    print("searching for \(searchText)...")
                    numResults = 10
                }
            }
        }
        .padding()
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
