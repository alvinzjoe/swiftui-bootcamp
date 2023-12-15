//
//  TextBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 24/11/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is swiftulthinking bootcamp.")
        //            .font(.largeTitle)
        //            .fontWeight(.bold)
            .font(.system(size: 24, weight: .medium, design: .serif)) // custom size, weight
            .baselineOffset(5) // line height
            .kerning(1) // text spacing
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) // text color
            .multilineTextAlignment(.center)
    }
}

#Preview {
    TextBootcamp()
}
