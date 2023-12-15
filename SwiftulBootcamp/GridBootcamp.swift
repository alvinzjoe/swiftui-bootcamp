//
//  GridBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 28/11/23.
//

import SwiftUI

struct GridBootcamp: View {
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.white)
                .frame(height: 400)
            
            LazyVGrid(
                columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ],
                pinnedViews:.sectionHeaders,
                content: {
                    Section {
                        ForEach(1..<30) {
                            index in
                            Rectangle()
                                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        }
                    } header: {
                        Text("Header")
                            .padding(.all, 10)
                            .background(.white);
                    }
                }
            )
        }
    }
}

#Preview {
    GridBootcamp()
}
