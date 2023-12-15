//
//  ImageBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 27/11/23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("lp-hero-propviz")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            //.clipped()
            .clipShape(
                //Circle()
                RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
            )
        Image("innovate-pain-clinic")
            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .foregroundColor(.blue)
    }
}

#Preview {
    ImageBootcamp()
}
