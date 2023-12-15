//
//  TextfieldBootcamp.swift
//  SwiftulBootcamp
//
//  Created by Alvin Amri on 29/11/23.
//

import SwiftUI

struct TextfieldBootcamp: View {
    @State var textVal : String = "";
    @State var dataArray : [String] = ["Data 1"];
    var body: some View {
        NavigationView {
            VStack {
                TextField("Test", text: $textVal)
                Button("Save") {
                    dataArray.append(textVal);
                    textVal = ""
                }
                List {
                    ForEach(dataArray, id: \.self) {
                        data in
                        Text("\(data)");
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
            }
            .navigationTitle("List Item")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            })
        }
    }
    func delete(indexSet: IndexSet) {
        dataArray.remove(atOffsets: indexSet)
    }
    func move(indexSet: IndexSet, offset : Int) {
        dataArray.move(fromOffsets: indexSet, toOffset: offset)
    }
}

#Preview {
    TextfieldBootcamp()
}
