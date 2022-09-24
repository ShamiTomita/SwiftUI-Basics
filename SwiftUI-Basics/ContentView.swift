//
//  ContentView.swift
//  SwiftUI-Basics
//
//  Created by Shami Tomita on 9/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .cyan, .teal, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Tokyo, Japan")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(.top)
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:150, height:150)
                    Text("76°")
                        .font(.system(size: 60, weight:.medium ))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack{
                    WeatherDayView(dayOfWeek: "Tue",
                                   imageName: "cloud.sun.fill",
                                   temperature: 70)
                    WeatherDayView(dayOfWeek: "Wed",
                                   imageName: "cloud.sun.fill",
                                   temperature: 70)
                    WeatherDayView(dayOfWeek: "Thurs",
                                   imageName: "cloud.sun.fill",
                                   temperature: 70)
                    WeatherDayView(dayOfWeek: "Frid",
                                   imageName: "cloud.sun.fill",
                                   temperature: 70)
                    WeatherDayView(dayOfWeek: "Sat",
                                   imageName: "cloud.sun.fill",
                                   temperature: 70)
                 
                }
                Spacer()
                Spacer()
                HStack{
                  
                }
                Spacer()
                
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:35, height:35)
            Text("\(temperature)")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
