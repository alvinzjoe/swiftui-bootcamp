//
//  GradientsBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 27/11/23.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                // Color.red
                LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    startPoint: .top,
                    endPoint: .bottom)
            )
            .frame(width: 200, height: 100)
    }
}

#Preview {
    GradientsBootcamp()
}
