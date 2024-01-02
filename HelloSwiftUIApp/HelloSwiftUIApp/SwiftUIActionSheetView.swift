//
//  SwiftUIActionSheetView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 02/01/24.
//

import SwiftUI

struct SwiftUIActionSheetView: View {
    @State var showActionSheet: Bool = false
    var body: some View {
        Button("Click me") {
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    private func getActionSheet() -> ActionSheet {
        return ActionSheet(title: Text("This is the Action Sheet"))
    }
}

struct SwiftUIActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIActionSheetView()
    }
}
