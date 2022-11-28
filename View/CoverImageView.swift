//
//  ColorImageView.swift
//  AfricaAppSwiftUI
//
//  Created by Bertuğ Horoz on 23.11.2022.
//

import SwiftUI

struct CoverImageView: View {
    // PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    // BODY
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            } // : LOOP
        } // :TABVIEW
        .tabViewStyle(PageTabViewStyle())
    }
}
// PREVIEW
struct ColorImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
