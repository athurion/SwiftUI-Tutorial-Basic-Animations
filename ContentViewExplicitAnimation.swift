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
            
        } //ZStack
        .onTapGesture {
            withAnimation(.default) {
                self.heartChange.toggle()
             }
//             withAnimation(.easeIn(duration: 1)) {
//                 self.heartChange.toggle()
//             }
//             withAnimation(.easeOut(duration: 1)) {
//                 self.heartChange.toggle()
//             }
//             withAnimation(.easeInOut(duration: 1)) {
//                 self.heartChange.toggle()
//             }
//             withAnimation(.spring(response: 0.2, dampingFraction: 0.2, blendDuration: 0.2)) {
//                 self.heartChange.toggle()
//             }
        }
        
    } //body
    
} //ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
