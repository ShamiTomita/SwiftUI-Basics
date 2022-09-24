//
//  ContentView.swift
//  SwiftUI-Basics
//
//  Created by Shami Tomita on 9/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = true
    
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray :  Color("lightBlue"))
            VStack{
                CityTextView(cityName: "Tokyo")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 76)
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
                Button{
                    isNight.toggle()
                }label:{
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
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

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(.top)
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:150, height:150)
            Text("\(temperature)°")
                .font(.system(size: 60, weight:.medium ))
                .foregroundColor(.white)
        }
        .padding(.bottom, 5)
    }
}


