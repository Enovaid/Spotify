//
//  SettingsModels.swift
//  Spotify
//
//  Created by Айдана on 06.06.2021.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
