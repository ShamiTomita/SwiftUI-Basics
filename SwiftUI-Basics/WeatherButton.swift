//
//  WeatherButton.swift
//  SwiftUI-Basics
//
//  Created by Shami Tomita on 9/23/22.
//

import SwiftUI
struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View {
        Button {
        
        } label:{
            Text(title)
                .frame(width:280, height:50)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.system(size:20, weight: .bold, design:.default))
                .cornerRadius(10)
        }
    }
}
