//
//  InitalizerBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 27/11/23.
//

import SwiftUI

struct InitalizerBootcamp: View {
    
    let backgroundColor : Color;
    let count : Int;
    
    init(backgroundColor: Color, count: Int) {
        self.backgroundColor = backgroundColor;
        self.count = count
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .foregroundColor(.white)
                .frame(width: 100, height: 100)
                .background(backgroundColor)
        }
    }
}

#Preview {
    InitalizerBootcamp(backgroundColor: Color.red, count: 2)
}
