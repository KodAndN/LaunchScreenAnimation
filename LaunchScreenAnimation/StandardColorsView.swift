//
//  StandartColorsView.swift
//  LaunchScreenAnimation
//
//  Created by Андрей Кодочигов on 24.12.2022.
//


import SwiftUI

struct StandardColorsView: View {
    private let standardColors = [
        Color.primary,
        .secondary,
        .pink,
        .red,
        .orange,
        .yellow,
        .green,
        .mint,
        .teal,
        .cyan,
        .blue,
        .indigo,
        .purple,
        .brown,
        .gray
    ]

    var body: some View {
        List(standardColors, id: \.self) { color in
            Text(color.description)
                .foregroundColor(color)
                .font(.largeTitle)
                .bold()
        }
    }
}

struct StandardColorsView_Previews: PreviewProvider {
    static var previews: some View {
        StandardColorsView()
    }
}
