//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Arpad Zalan on 25/05/2024.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
