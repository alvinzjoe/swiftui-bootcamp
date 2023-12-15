//
//  ContextMenuBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 29/11/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack {
            Image(systemName: "gear")
                .contextMenu(ContextMenu(menuItems: {
                    Button("Menu Item 1") {
                        
                    }
                    Button(
                        action: {
                            
                        },
                    label: {
                        Label("Config", systemImage: "gear")
                    });
                }))
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
