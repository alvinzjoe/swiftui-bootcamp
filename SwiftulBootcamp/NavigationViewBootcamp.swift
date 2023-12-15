//
//  NavigationViewBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 29/11/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink ("Hello world",destination: SecondScreen());

                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Title")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode;
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea(edges: .all)
                .navigationTitle("Gray screen");
            VStack {
                NavigationLink("Next screen") {
                    VStack {
                        ScrollView {
                            Text("New");
                            
                        }
                    }
                    .navigationTitle("Third screen")
                    
                }
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
            }.navigationBarBackButtonHidden()
                .toolbar(content: {
                    ToolbarItem(placement: .topBarLeading) {
                        Image(systemName: "person.fill")
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Image(systemName: "gear")
                    }
                })
        }
            
    }
}

#Preview {
    NavigationViewBootcamp()
}
