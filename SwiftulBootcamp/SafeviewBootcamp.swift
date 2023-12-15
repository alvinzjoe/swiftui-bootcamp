//
//  SafeviewBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 28/11/23.
//

import SwiftUI

struct SafeviewBootcamp: View {
    var body: some View {
        ScrollView {
            Text("Heading")
                .font(.largeTitle)
            ForEach(0..<30) {
                index in
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: .infinity, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal, 20)
            }
        }
        .background(
            Color(.gray)
                .ignoresSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        )
    }
}

#Preview {
    SafeviewBootcamp()
}
