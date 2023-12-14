//
//  SwiftUIListView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 12/12/23.
//

import SwiftUI

struct SwiftUIListView: View {
    @State var fruits: [String] = ["apple","orange", "banana","peach"]
    @State var veggies: [String] = ["Carrot", "Cabbage","Potato","Tomato"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                            HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }
                    .foregroundColor(.blue)
                    .font(.largeTitle)

                
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                        
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move(from:to:))
                    .listRowBackground(Color.orange) 
                    
                }
                Section(header:
                            HStack {
                    Text("Veggies")
                    Image(systemName: "heart.fill")
                }
                    .foregroundColor(.red)
                    .font(.largeTitle)
                
                ) {
                    ForEach(veggies, id: \.self) { veg in
                        Text(veg.capitalized)
                        
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move(from:to:))
                }
            }
            .accentColor(.blue)
            .listStyle(.sidebar)
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
        veggies.remove(atOffsets: indexSet)

    }
    
    func move(from: IndexSet, to : Int) {
        veggies.move(fromOffsets: from, toOffset: to)
        veggies.move(fromOffsets: from, toOffset: to)

    }
    
    func add() {
        fruits.append("Coconut")
        veggies.append("LadyFinger")

    }
}

struct DetailView: View {
//    @Binding var fruit: String
//    @Binding var fruitImg: UIImage

    var body: some View {
        VStack {
            Image(systemName: "gear")
            Text("fruit")
        }
    }
}

struct SwiftUIListView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIListView()
    }
}
