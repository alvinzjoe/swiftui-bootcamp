//
//  PopupBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 29/11/23.
//

import SwiftUI

struct PopupBootcamp: View {
    @State var showSheet: Bool = false;
    
    var body: some View {
        ZStack(alignment: .top, content: {
            Button("Open") {
                withAnimation(.spring()) {
                    showSheet.toggle();
                }
            }
            if showSheet {
                PopupSheetView(showSheet: $showSheet)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.top, 100)
                    .transition(.move(edge: .bottom))
            }
            
        });
    }
}

struct PopupSheetView: View {
    @Binding var showSheet: Bool;
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea(edges: .all)
            
            Button("Close") {
                withAnimation(.spring()) {
                    showSheet.toggle()
                }
            }
            .foregroundStyle(.white)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .ignoresSafeArea(edges: .all)
        .background(.blue)
    }
}

#Preview {
    PopupBootcamp()
}
