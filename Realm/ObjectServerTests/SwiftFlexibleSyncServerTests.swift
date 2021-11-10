////////////////////////////////////////////////////////////////////////////
//
// Copyright 2021 Realm Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
////////////////////////////////////////////////////////////////////////////

#if os(macOS)
import RealmSwift
import XCTest

#if canImport(RealmTestSupport)
import RealmSwiftSyncTestSupport
import RealmSyncTestSupport
import RealmTestSupport
import SwiftUI
#endif

#if !(os(iOS) && (arch(i386) || arch(arm)))
import Combine
#endif

// TODO: Remove if there is no need to create any helper function for flexible sync tests
class SwiftFlexibleSyncTestCase: SwiftSyncTestCase {}

class SwiftFlexibleSyncServerTests: SwiftSyncTestCase {
    var cancellables: Set<AnyCancellable> = []
}

// MARK: - Completion Block
extension SwiftFlexibleSyncServerTests {
}

// MARK: - Async Await
#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0.0, *)
extension SwiftFlexibleSyncServerTests {
}
#endif // canImport(_Concurrency)

// MARK: - Combine
#if !(os(iOS) && (arch(i386) || arch(arm)))
import Combine

@available(OSX 10.15, *)
extension SwiftFlexibleSyncServerTests {
}
#endif // canImport(Combine)
#endif // os(macOS)
