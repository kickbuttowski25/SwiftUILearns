//
//  SwiftUIDocumentationView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 09/01/24.
//

import SwiftUI

struct SwiftUIDocumentationView: View {
    @State var data: [String] = ["Apple","Banan","Mango"]
    @State var showAlert: Bool = false
    var body: some View {
        NavigationStack{
            ScrollView{
                Text("Hello")
                ForEach(data, id: \.self) { fruit in
                    Text(fruit)
                        .font(.headline)
                }
            }
            .navigationTitle("Documentation")
            .navigationBarItems(trailing:
                                    Button("Alert", action: {
                showAlert.toggle()
            }))
        }
        .alert(isPresented: $showAlert) {
            showAlert(text: "Show Alert")
        }
    }
    func showAlert(text: String) ->Alert {
        return Alert(title: Text(text))
    }
}

struct SwiftUIDocumentationView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIDocumentationView()
    }
}
