//
//  PopupMessage.swift
//  Sticky
//
//  Created by 지현우 on 2021/01/24.
//

import SwiftUI

struct PopupMessage: View {
    @Binding var isPresented: Bool
    let title: String
    let description: String
    let confirmString: String
    let rejectString: String
//    let confirmHandler: () -> Void
    
    var body: some View {
        
            VStack(alignment: .center) {
                Text(self.title)
                    .font(.system(size: 22))
                    .bold()
                    .padding(.bottom, 16)

                Text(self.description)
                    .lineSpacing(2)
                    .font(.system(size: 20))
                    .padding(.horizontal, 20)
                    .multilineTextAlignment(.center)

                Button(action: {
                    print("confirm")
                    self.isPresented = false
//                    self.confirmHandler()
                    NotificationCenter.default.post(name: NSNotification.confirmPopup, object: nil)
                }, label: {
                    Rectangle()
                        .overlay(Text(self.confirmString)
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.white))
                        .cornerRadius(30)
                        .frame(maxHeight: 60)
                        .foregroundColor(.blue)
                        .padding(.horizontal, 32)

                })
                    .padding(.top, 20)

                Button(action: {
                    print("cancel")
                    self.isPresented = false
                }, label: {
                    Rectangle()
                        .overlay(Text(self.rejectString)
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.black))
                        .cornerRadius(30)
                        .frame(maxHeight: 60)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                })
                .padding(.top, 5)
            }
        
    }
}

struct PopupMessage_Previews: PreviewProvider {
    static var previews: some View {
        PopupMessage(isPresented: .constant(false), title: "타이틀", description: "설명\n설명", confirmString: "확인", rejectString: "취소")
    }
}
