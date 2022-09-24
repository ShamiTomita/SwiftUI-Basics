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
            LinearGradient(gradient: Gradient(colors: [.blue, .cyan, .teal, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
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
                .padding(.bottom, 5)
                HStack(spacing: 18){
                    WeatherDayView(dayOfWeek: "Tue",
                                   imageName: "cloud.sun.fill",
                                   temperature: 70)
                    WeatherDayView(dayOfWeek: "Wed",
                                   imageName: "cloud.fill",
                                   temperature: 69)
                    WeatherDayView(dayOfWeek: "Thurs",
                                   imageName: "cloud.rain.fill",
                                   temperature: 70)
                    WeatherDayView(dayOfWeek: "Fri",
                                   imageName: "sun.max.fill",
                                   temperature: 76)
                    WeatherDayView(dayOfWeek: "Sat",
                                   imageName: "sun.max.fill",
                                   temperature: 80)
                 
                }
                Spacer()
                Spacer()
                Button {
                    print("tapped")
                } label:{
                    Text("Change Day Time")
                        .frame(width:280, height:50)
                        .background(Color.white)
                        .font(.system(size:20, weight: .bold, design:.default))
                        .cornerRadius(10)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
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
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
