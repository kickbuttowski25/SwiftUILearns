//
//  SwiftUIToggleView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 06/01/24.
//

import SwiftUI

struct SwiftUIToggleView: View {
    @State var isToggleOn: Bool = false
    var body: some View {
        VStack {
            HStack {
               Text("Status:")
                Text(isToggleOn  ? "Online" : "Offline")
               
            }
            Toggle(
             isOn: $isToggleOn ) {
                 Text("Switch")
             }
             .padding()
             .toggleStyle(SwitchToggleStyle(tint: .red))
            Spacer()
        }
    }
}

struct SwiftUIToggleView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIToggleView()
    }
}
