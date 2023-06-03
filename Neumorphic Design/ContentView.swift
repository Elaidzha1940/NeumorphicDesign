//  /*
//
//  Project: Neumorphic Design
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 02.06.2023
//
//  */

import SwiftUI

struct ContentView: View {
    
    @State private var selectedItem: String = ""
    
    let textArray = ["1. Europe", "2. Asia", "Africa", "South America"]
    
    var body: some View {
        
        ZStack {
            Color.green.opacity(0.4)
                .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    
                    Color.blue
                        .shadow(.inner(color:
                                .white.opacity(0.7),
                                       radius: 5, x: -5, y: -5))
                        .shadow(.inner(color:
                                .gray.opacity(0.7),
                                       radius: 5, x: 5, y: 5))
                )
                .frame(width: 300, height: 300)
                .overlay {
                    
                    VStack {
                        ForEach(textArray.indices, id: \.self) { index in
                            HStack {
                                Circle()
                                    .fill(Color.green.opacity(0.4))
                                    .frame(width: 35, height: 35)
                                    .shadow(color: .white, radius: 5, x: -5, y: -5)
                                    .shadow(color: .gray.opacity(0.5), radius: 5, x: 5, y: 5)
                                
                                Text()
                                
                            }
                        }
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
