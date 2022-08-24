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
        
        VStack {
            VStack {
                Text("Discover Recipes")
                    .font(.system(size: 40, weight: .black, design: .default))
                    .padding()
                Spacer()
                // search bar
                SearchBarView(searchText: $searchText)
                    .padding(.top, -10)
                ScrollView {
                    ForEach(0..<5) { _ in
                        CardView()
                    }
                }
            }
        }
        
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
