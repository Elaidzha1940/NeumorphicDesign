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
    
    let textArray = ["1. Europe", "2. Asia", "3. Africa", "4. South America"]
    
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
                                
                                Text(textArray[index])
                                    .foregroundColor(selectedItem == textArray[index] ? Color.black : Color.gray)
                                    .font(selectedItem == textArray[index] ? .system(.title3)
                                        .bold() :
                                            .system(.title3))
                                    .padding(.leading, selectedItem == textArray[index] ? 20 : 10)
                                
                                
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
