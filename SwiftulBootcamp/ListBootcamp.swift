//
//  ListBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 29/11/23.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits : [String] = [
        "Apple", "Banana", "Orange", "Rambutan"
    ]
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: Text("Section Title")) {
                        ForEach(fruits, id: \.self) {
                            fruit in
                            Text("\(fruit)")
                            
                        }
                        .onDelete(perform: delete)
//                        .onDelete(perform: { indexSet in
//                            delete(indexSet: indexSet)
//                        })
                        .onMove(perform: move)
//                        .onMove(perform: { indices, newOffset in
//                            fruits.move(fromOffsets: indices, toOffset: newOffset)
//                        })
                    }
            }
            .navigationTitle("List")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    AddButton
                }
            })
        }
    }
    
    var AddButton: some View {
        Button("Add", action: {
            add()
        });
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
