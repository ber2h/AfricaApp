//
//  VideoModel.swift
//  AfricaAppSwiftUI
//
//  Created by Bertuğ Horoz on 24.11.2022.
//

import Foundation

struct Video : Codable, Identifiable {
    let id : String
    let name : String
    let headline : String
    // COMPUTED PROPERTY
    var thumbnail : String {
        "video-\(id)"
    }
}
