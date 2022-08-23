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
        VStack(alignment: .center) {
            Text("Recipe Name")
                .font(.title)
            HStack {
                VStack(alignment: .center) {
                    Image(systemName: "globe")
                    Text("Type of Cuisine")
                        .bold()
                }
                VStack(alignment: .center) {
                    Image(systemName: "timer")
                    Text("Cook Time")
                }
                VStack(alignment: .center) {
                    Image(systemName: "list.star")
                    Text("Calorie Count")
                        .bold()
                }
            }
            .padding(.horizontal)
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
