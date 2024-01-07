//
//  SwiftUIPickerView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 07/01/24.
//

import SwiftUI

struct SwiftUIPickerView: View {
    @State var selection: String = "1"
    @State var components: [String] = ["Many","Some","Any"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
    }
    var body: some View {
        Picker("Picker", selection: $selection) {
            ForEach(components.indices) { index in
                Text(components[index])
                    .tag(components[index])
            }
        }
        .pickerStyle(.segmented)
//        Menu("Filter: \(selection)") {
//            Picker(selection: $selection) {
//                ForEach(["1","2","3"], id: \.self) { opt in
//                    HStack {
//                        Text(opt)
//                        Image(systemName: "heart.fill")
//                    }
//                    .tag(opt)
//                          }
//            } label: {
//                Text("")
//            }
//        }
        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            Picker("Picker", selection: $selection) {
//                ForEach(18..<100) { num in
//                    Text("\(num)").tag("\(num)")
//                }
//
//            }
//            //.pickerStyle(.inline)
//            .pickerStyle(.menu)
//        }
    }
}

struct SwiftUIPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPickerView()
    }
}
