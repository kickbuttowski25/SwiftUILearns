//
//  SwiftUINaviagtionView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 12/12/23.
//

import SwiftUI

struct SwiftUINaviagtionView: View {
    var body: some View {
        NavigationView {
            ScrollView {
//                NavigationLink("Hello, world") {
//                    //Text("Next Screen")
//                    NextScreen()
//                }
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
           // .navigationBarTitleDisplayMode(.automatic)
           // .navigationBarHidden(true)
           // .toolbar(.hidden)
            .navigationBarItems(
                leading: Image(systemName: "person.fill"),
                trailing:
                    HStack {
                        Image(systemName: "gear")
                        NavigationLink {
                            NextScreen()
                        } label: {
                            Image(systemName: "heart")
                                .foregroundColor(.green)
                        }
                        //.accentColor(.red)
                    }
            )
        }
       
    }
}
struct NextScreen: View {
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Another Screen")
            VStack{
                Text("Next Screen")
                NavigationLink("Another Screen") {
                    Text("Another Screen")
                    
                }
            }
        }
    }
}

struct SwiftUINaviagtionView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUINaviagtionView()
    }
}
