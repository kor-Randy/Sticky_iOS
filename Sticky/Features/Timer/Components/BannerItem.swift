//
//  BannerItem.swift
//  Sticky
//
//  Created by deo on 2021/01/31.
//

import SwiftUI

// MARK: - BannerItem

struct BannerItem: View {
    var title: String
    var subtitle: String
    var width: CGFloat = 172
    var height: CGFloat = 60
    var bgColor = Color.TextIconColor.secondary

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12).foregroundColor(bgColor)
            HStack {
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 44, height: 44)
                VStack(alignment: .leading) {
                    Text("\(title)")
                        .font(.system(size: 17))
                    Text("\(subtitle)")
                        .font(.system(size: 14))
                }
                Spacer()
            }.padding(.all, 8)
        }.frame(width: width, height: height)
    }
}

// MARK: - BannerItem_Previews

struct BannerItem_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.GrayScale._900.ignoresSafeArea()
            BannerItem(
                title: "제목제목제목제목제목제목",
                subtitle: "부제목부제목부제목부제목부제목부제목"
            )
        }
    }
}