//
//  ButtonBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 28/11/23.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title : String = "Default";
    var body: some View {
        VStack(spacing: 20, content: {
            Text("\(title)");
            contentLayer
        })
        
    }
    var contentLayer: some View {
        VStack {
            Button {
                buttonPressed()
            } label: {
                Text("Button outline")
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                    .foregroundColor(.gray)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.0)
                    )
            }
        }
    }
    func buttonPressed() {
        self.title = "Button clicked";
    }
}

#Preview {
    ButtonBootcamp()
}
