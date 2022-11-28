//
//  InsetGalleryView.swift
//  AfricaAppSwiftUI
//
//  Created by Bertuğ Horoz on 23.11.2022.
//

import SwiftUI

struct InsetGalleryView: View {
    // PROPERTIES
    let animal : Animal
    // BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }// : LOOP
            } // : HSTACK
        } // : SCROLL
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
