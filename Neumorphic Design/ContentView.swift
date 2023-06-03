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
    
    let textArray = ["1. Europe", "2. Asia", "Africa", "South America"]
    
    var body: some View {
        
        ZStack {
            Color.red
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
