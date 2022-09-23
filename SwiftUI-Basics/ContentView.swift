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
            VStack{
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
