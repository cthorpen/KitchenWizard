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
            
            VStack {
                List {
                    ForEach((0...10), id: \.self) {_ in
                        CardView()
                    }
                }
            }
            .navigationTitle("Discover Recipes")
           
        }
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
