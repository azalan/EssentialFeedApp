//
//  XCTestCase+MemoryLeakTracker.swift
//  EssentialFeed
//
//  Created by Arpad Zalan on 2025. 05. 05..
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocted. Potential memory leak.", file: file, line: line)
        }
    }
}
