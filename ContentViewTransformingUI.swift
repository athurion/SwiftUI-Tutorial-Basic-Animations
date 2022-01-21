//
//  ContentView.swift
//  SwiftUI Tutorial: Basic Animations
//
//  Created by Alvin Sosangyo on 01/21/22.
//


import SwiftUI

struct ContentView: View {
    
    @State private var isRecording = false
    @State private var darkBackground = false

    var body: some View {
        
        ZStack {
            
            Color(darkBackground ? UIColor.black : UIColor.white)
                .ignoresSafeArea(.all)
            
            Button(action: {
                withAnimation(.spring()) {
                    self.isRecording.toggle()
                }
                withAnimation(.linear.repeatCount(6)) {
                    self.darkBackground.toggle()
                }
            }) {
                Image(systemName: "video.and.waveform.fill")
                    .frame(
                        width: isRecording ? 100 : 300,
                        height: 100
                    )
                    .padding()
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .background(isRecording ? .red : .blue)
                    .cornerRadius(isRecording ? .infinity : 40)
            } //Button
            
        } //ZStack
        
    } //body
    
} //ContentView


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
