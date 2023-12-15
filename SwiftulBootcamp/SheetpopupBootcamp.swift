//
//  SheetpopupBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 29/11/23.
//

import SwiftUI

struct SheetpopupBootcamp: View {
    @State var showSheet: Bool = false;
    var body: some View {
        VStack {
            Button("Show") {
                showSheet.toggle()
            }
            .sheet(isPresented: $showSheet, content: {
                SheetView();
            })
        }
    }
}

#Preview {
    SheetpopupBootcamp()
}

struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode;
    var body: some View {
        Button("x") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}
