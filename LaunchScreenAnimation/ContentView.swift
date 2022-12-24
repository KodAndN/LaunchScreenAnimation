//
//  ContentView.swift
//  LaunchScreenAnimation
//
//  Created by Андрей Кодочигов on 24.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var animate = false
    
    var body: some View {
        ZStack {
            Image("ColorList")
                .scaleEffect(animate ? 4 : 1)
                .opacity(animate ? 0 : 1)
                .onAppear {
                    animate.toggle()
                }
            .animation(.easeInOut, value: animate)
            
            StandardColorsView()
                .opacity(animate ? 1 : 0)
                .animation(.easeOut.delay(0.15), value: animate)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
