//
//  RecommendationsResponse.swift
//  Spotify
//
//  Created by Айдана on 09.06.2021.
//

import Foundation

struct RecommendationsResponse: Codable {
    let tracks: [AudioTrack]
}
