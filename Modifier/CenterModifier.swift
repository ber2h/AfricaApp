//
//  CenterModifier.swift
//  AfricaAppSwiftUI
//
//  Created by Bertuğ Horoz on 28.11.2022.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
