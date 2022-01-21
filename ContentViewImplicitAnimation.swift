//
//  ContentView.swift
//  SwiftUI Tutorial: Basic Animations
//
//  Created by Alvin Sosangyo on 01/21/22.
//


import SwiftUI

struct ContentView: View {
    
    @State private var heartChange = false
    
    var body: some View {
        
        ZStack {
            
            Image(systemName: heartChange ? "heart.fill" : "heart")
                .font(.system(size: 100))
                .foregroundColor(heartChange ? .red : .black)
                .scaleEffect(heartChange ? 1.5 : 1.0)
                .animation(.default, value: heartChange)
            
        } //ZStack
        .onTapGesture {
            self.heartChange.toggle()
        }
        
    } //body
    
} //ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
