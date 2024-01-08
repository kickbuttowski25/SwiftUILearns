//
//  SwiftUITabView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 08/01/24.
//

import SwiftUI

struct SwiftUITabView: View {
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
    "heart.fill", "globe", "house.fill", "person.fill"]
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
            }
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.green)

        }
        .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300))
        .frame(height: 300)
        .tabViewStyle(.page)
//        TabView(selection: $selectedTab) {
//            HomeTabView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.red)
    }
}

struct SwiftUITabView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITabView()
    }
}

struct HomeTabView: View {
    @Binding var selectedTab: Int
    var body: some View {
        VStack {
            Text("Home Tab")
                    .font(.largeTitle)
                .foregroundColor(.black)
            Button {
                selectedTab = 2
            } label: {
                Text("Go to profil")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
                    
            }

        }
        
    }
}
