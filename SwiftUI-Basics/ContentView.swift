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
                    VStack{
                    Text("Tue")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundColor(.white)
                    Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:35, height:35)
                    Text("74°")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundColor(.white)
                    }
                    VStack{
                        Text("Wed")
                                .font(.system(size: 20, weight: .medium, design: .default))
                                .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:35, height:35)
                        Text("74°")
                                .font(.system(size: 20, weight: .medium, design: .default))
                                .foregroundColor(.white)
                    }
                    VStack{
                        Text("Thurs")
                                .font(.system(size: 20, weight: .medium, design: .default))
                                .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:35, height:35)
                        Text("74°")
                                .font(.system(size: 20, weight: .medium, design: .default))
                                .foregroundColor(.white)
                    }
                    VStack{
                        Text("Fri")
                                .font(.system(size: 20, weight: .medium, design: .default))
                                .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:35, height:35)
                        Text("74°")
                                .font(.system(size: 20, weight: .medium, design: .default))
                                .foregroundColor(.white)
                    }
                    VStack{
                        Text("Sat")
                                .font(.system(size: 20, weight: .medium, design: .default))
                                .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:35, height:35)
                        Text("74°")
                                .font(.system(size: 20, weight: .medium, design: .default))
                                .foregroundColor(.white)
                    }
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
