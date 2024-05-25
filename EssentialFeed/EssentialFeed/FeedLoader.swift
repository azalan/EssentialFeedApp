//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Arpad Zalan on 25/05/2024.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
