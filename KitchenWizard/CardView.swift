//
//  CardView.swift
//  KitchenWizard
//
//  Created by Cole Thorpen on 8/19/22.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        VStack {
            Image("foodplaceholder")
                .resizable()
                .aspectRatio(contentMode: .fit)

            HStack {
                VStack(alignment: .leading) {
                    Text("Cuisine")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("Recipe Title Goes Here")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text("Time".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
    
}

struct CardView_Previews: PreviewProvider {
    //static var of sample data. will be passed to CardView initializer
    static var previews: some View {
        CardView()
            .previewLayout(.fixed(width: 400, height: 150)) //set background color
    }
}
