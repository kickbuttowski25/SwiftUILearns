//
//  SwiftUIContextMenuView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 04/01/24.
//

import SwiftUI

struct SwiftUIContextMenuView: View {
    
    @State var backgroundColor: Color = .blue
    var body: some View {
        VStack{
            Image(systemName: "house.fill")
                .font(.title)
            Text("One Punsh Man")
                .font(.headline)
            Text("Bio of Saitama")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor).cornerRadius(30)
        .contextMenu {
            Button {
                backgroundColor = .red
            } label: {
                Label("Share Post", systemImage: "flame.fill")
            }
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Report", systemImage: "flame.fill")
            }
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct SwiftUIContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIContextMenuView()
    }
}
