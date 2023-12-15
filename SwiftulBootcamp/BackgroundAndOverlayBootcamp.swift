//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 27/11/23.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.white)
            .frame(width: 200, height: 200)
            .background(
                Image("lp-hero-propviz")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .clipped()
            );
        
        Circle()
            .fill(.blue)
            .frame(width: 100, height: 100)
            .overlay(
                Text("Test"),
                alignment: .top
            );
        
        Circle()
            .fill(.blue)
            .frame(width: 50, height: 50)
            .overlay(
                Image(systemName: "heart.fill")
                    .foregroundColor(.white)
            )
            .overlay(
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.purple)
                    .overlay(
                        Text("10")
                            .font(.caption2)
                            .foregroundColor(.white)
                            
                    )
                , alignment: .bottomTrailing
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
