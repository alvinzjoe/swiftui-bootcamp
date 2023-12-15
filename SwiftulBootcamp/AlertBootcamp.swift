//
//  AlertBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 29/11/23.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert : Bool = false;
    var body: some View {
        Button("Alert") {
            showAlert.toggle()
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Test"), message: Text("Message"), dismissButton: .cancel())
        }
        
    }
}

#Preview {
    AlertBootcamp()
}
