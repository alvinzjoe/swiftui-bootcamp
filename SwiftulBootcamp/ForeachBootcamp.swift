//
//  ForeachBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 28/11/23.
//

import SwiftUI

struct ForeachBootcamp: View {
    
    var body: some View {
        let data_: [String] = [
        "Data A", "Data B"
        ]
        VStack {
            ForEach(0..<3) {
                index in
                Text("\(index) test")
            }
        }
        VStack {
            ForEach(data_.indices, id: \.self) {
                index in
                Text("\(data_[index])")
            }
        }
    }
}

#Preview {
    ForeachBootcamp()
}
