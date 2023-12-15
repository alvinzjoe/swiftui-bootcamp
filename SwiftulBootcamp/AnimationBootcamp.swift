//
//  AnimationBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 29/11/23.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated:Bool = false;
    var body: some View {
        VStack {
            Button(action: {
                withAnimation(Animation.default) {
                    isAnimated.toggle()
                }
            }, label: {
                Text("Button")
            })
            RoundedRectangle(cornerRadius: isAnimated ? 25.0: 200)
                .fill(isAnimated ? Color.blue: Color.brown)
                .frame(width: isAnimated ? 100: 200, height: isAnimated ? 100: 200);
        }
    }
}

#Preview {
    AnimationBootcamp()
}
