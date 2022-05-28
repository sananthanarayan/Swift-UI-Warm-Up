//
//  ContentView.swift
//  Swift UI Warm Up
//
//  Created by Sanjay Ananthanarayan on 5/28/22.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [
        .red,
        .yellow,
        .green,
        .blue,
        .purple,
        .cyan,
        Color(red: 0.3, green: 1, blue: 0.2),
        Color(red: 1, green: 1, blue: 0.2),
        Color(red: 0.8, green: 0, blue: 0.3),
        Color(red: 0.5, green: 0.2, blue: 1),
        Color(red: 0.1, green: 1, blue: 0.8),
    ]
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [.red, .green, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.7)
                .ignoresSafeArea()
            
            VStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Warming Up")
                        .font(.largeTitle)
                    
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    Text("This is test")
                        .font(.largeTitle)
                    
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    Text("in a VStack")
                        .font(.largeTitle)
                    
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                }
                
                // Some Shapes
                HStack(spacing: -30) {
                    ForEach(0 ..< colors.count) { i in Rectangle()
                            .fill(colors[i]
                                    .opacity(0.7))
                            .cornerRadius(5)
                            .rotationEffect(.degrees(30))
                            .frame(width: 50, height: 50)
                    }

//                    Spacer ()
//
//                    Circle()
//                        .fill(.yellow)
//                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
