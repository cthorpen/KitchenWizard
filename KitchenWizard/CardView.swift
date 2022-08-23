//
//  CardView.swift
//  KitchenWizard
//
//  Created by Cole Thorpen on 8/19/22.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        Text("this is a test")
//        VStack(alignment: .center) {
//            Text("Recipe Name")
//                .font(.title)
//            HStack {
//                VStack(alignment: .center) {
//                    Image(systemName: "globe")
//                    Text("Cuisine")
//                        .bold()
//                }
//                VStack(alignment: .center) {
//                    Image(systemName: "timer")
//                    Text("Time")
//                }
//                VStack(alignment: .center) {
//                    Image(systemName: "list.star")
//                    Text("Calories")
//                        .bold()
//                }
//            }
//            .padding()
//        }
//        .padding()
    }
    
}

struct CardView_Previews: PreviewProvider {
    //static var of sample data. will be passed to CardView initializer
    static var previews: some View {
        CardView()
            .previewLayout(.fixed(width: 400, height: 150)) //set background color
    }
}
