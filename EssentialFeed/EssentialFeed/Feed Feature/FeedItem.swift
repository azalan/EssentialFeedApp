//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Arpad Zalan on 25/05/2024.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
