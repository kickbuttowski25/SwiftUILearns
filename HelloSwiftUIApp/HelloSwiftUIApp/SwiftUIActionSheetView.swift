//
//  SwiftUIActionSheetView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 02/01/24.
//

import SwiftUI

struct SwiftUIActionSheetView: View {
    @State var showActionSheet: Bool = false
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    @State var actionSheetOptions: ActionSheetOptions = .isMyPost
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 36, height: 36)
                Text("@Username")
                
                Spacer()
                Button {
                    actionSheetOptions = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)

            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
    //        Button("Click me") {
    //            showActionSheet.toggle()
    //        }
            .actionSheet(isPresented: $showActionSheet) {
                getActionSheet()
        }
        }
    }
    
    private func getActionSheet() -> ActionSheet {
        
        let sharePost: ActionSheet.Button = .default(Text("Share")) {
            
        }
        let report: ActionSheet.Button = .destructive(Text("Report")) {
            
        }
        let delete: ActionSheet.Button = .destructive(Text("Delete")) {
            
        }
        let cancel: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do?")
        switch actionSheetOptions {
        case .isMyPost:
            return ActionSheet(
                title: title,
            buttons: [sharePost, report, delete, cancel])
        case .isOtherPost:
            return ActionSheet(
                title: title,
            buttons: [sharePost, report, cancel])
        }
//        return ActionSheet(
//            title: Text("This is the Action Sheet"),
//        message: Text("Sheet"),
//            buttons: [.default(Text("Default")), .destructive(Text("Ok")), .cancel()])
    }
}

struct SwiftUIActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIActionSheetView()
    }
}
