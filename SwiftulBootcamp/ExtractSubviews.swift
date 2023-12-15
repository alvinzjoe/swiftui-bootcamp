//
//  ExtractSubviews.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 29/11/23.
//

import SwiftUI

struct ExtractSubviews: View {
    var body: some View {
        VStack {
            ExtractedView(text: "Testing 1");
            ExtractedView(text: "Testing 2");
            ExtractedView(text: "Testing 3");
        }
    }
}

#Preview {
    ExtractSubviews()
}

struct ExtractedView: View {
    let text: String;
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .frame(width: 100, height: 100)
            .overlay(content: {
                Text("\(text)")
                    .foregroundStyle(.white)
            })
            .padding(.all, 2)
    }
}
