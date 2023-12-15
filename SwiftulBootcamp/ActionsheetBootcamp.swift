//
//  ActionsheetBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 29/11/23.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    @State var showActionsheet: Bool = false;
    var body: some View {
        Button("click") {
            showActionsheet.toggle()
        }
        .actionSheet(isPresented: $showActionsheet, content: {
            ActionSheet(
                title: Text("Title"),
                message: Text("Message"),
                buttons: [
                    .default(Text("Default")),
                    .destructive(Text("Remove"), action: {
                        
                    }),
                    .cancel()
                    
                    
                ]
            )
        })
    }
}

#Preview {
    ActionsheetBootcamp()
}
