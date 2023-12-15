//
//  ColorsBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 24/11/23.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                Color("CustomColor")
            )
            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .shadow(radius: 1)
    }
}

#Preview {
    ColorsBootcamp()
}
