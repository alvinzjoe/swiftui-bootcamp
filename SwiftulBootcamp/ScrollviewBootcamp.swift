//
//  ScrollviewBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 28/11/23.
//

import SwiftUI

struct ScrollviewBootcamp: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            LazyVStack {
                ForEach(1..<20) {
                    index in
                    ScrollView(.horizontal, showsIndicators: false, content:{
                        LazyHStack {
                            ForEach(1..<10) {
                                index_h in
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.gray)
                                    .overlay(
                                        Text("\(index_h)")
                                    )
                                    .frame(width: 100, height: 80)
                            }
                        }
                    })
                        
                }
                
            }
        })
    }
}

#Preview {
    ScrollviewBootcamp()
}
