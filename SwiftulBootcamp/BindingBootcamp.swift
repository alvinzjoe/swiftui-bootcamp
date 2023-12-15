//
//  BindingBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 29/11/23.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var bgColor: Color = Color.green;
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea(edges: .all);
            
            ButtonView(backgroundColor: $bgColor);
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color;
    var body: some View {
        Button(action: {
            backgroundColor = Color.gray;
        }, label: {
            Text("Button")
        })
    }
}

#Preview {
    BindingBootcamp()
}
