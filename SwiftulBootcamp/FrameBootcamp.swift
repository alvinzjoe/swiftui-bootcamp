//
//  FrameBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 27/11/23.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.blue)
            .frame(width: 300, alignment: .center)
            .background(.red)
            .frame(maxWidth: .infinity)
            .background(.black)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .top)
            .background(.yellow)
    }
}

#Preview {
    FrameBootcamp()
}
