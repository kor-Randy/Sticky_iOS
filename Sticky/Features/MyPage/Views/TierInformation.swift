//
//  TierInformation.swift
//  Sticky
//
//  Created by deo on 2021/02/06.
//

import SwiftUI

// MARK: - TierInformation

/// 등급정보 화면
struct TierInformation: View {
    // MARK: Internal

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        VStack {}
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: backButton)
            .navigationBarTitle("등급정보", displayMode: .inline)
    }

    // MARK: Private

    private var backButton: some View {
        Button(action: focusRelease) {
            HStack {
                Image("back")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.black)
            }
        }
    }

    private func focusRelease() {
        presentationMode.wrappedValue.dismiss()
    }
}

// MARK: - TierInformation_Previews

struct TierInformation_Previews: PreviewProvider {
    static var previews: some View {
        TierInformation()
    }
}