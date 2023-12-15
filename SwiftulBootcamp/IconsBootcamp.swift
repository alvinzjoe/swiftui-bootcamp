//
//  IconsBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 27/11/23.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "sun.min")
            .resizable()
            .font(.largeTitle)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50)
    }
}

#Preview {
    IconsBootcamp()
}
