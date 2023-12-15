//
//  ShapeBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 24/11/23.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
        Circle()
//            .stroke(Color.red, style: StrokeStyle())
            .trim(from: 0.2, to: 1)
            .stroke(Color.black, lineWidth: 22)
            .frame(width: 130, height: 130);
        Spacer().frame(height: 50)
        Capsule(style: .circular)
            .frame(width: 300, height: 100);
        
    }
}

#Preview {
    ShapeBootcamp()
}
