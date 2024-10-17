import Testing
import Foundation
import SnapshotTesting

@testable import swift_testing_main_bug

@MainActor @Suite
struct ThisIsNotMainBugTests {
  @Test func example() async throws {
    assertSnapshot(of: "some string", as: .lines)
  }
}

