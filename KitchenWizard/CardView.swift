//
//  CardView.swift
//  KitchenWizard
//
//  Created by Cole Thorpen on 8/19/22.
//

import SwiftUI

struct CardView: View {
    // constant to represent current scrum meeting on this view
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Recipe Name")
                    .font(.headline)
                Spacer()
                Text("__ calories")
            }
            .font(.subheadline)
            Label("Ingredients/Description goes here...", systemImage: "book")
        }
        .padding()
        .foregroundColor(.indigo)
    }
    
}

struct CardView_Previews: PreviewProvider {
    //static var of sample data. will be passed to CardView initializer
    static var previews: some View {
        CardView()
            .previewLayout(.fixed(width: 400, height: 150)) //set background color
    }
}
