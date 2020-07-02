import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(zombie_dice_gameTests.allTests),
    ]
}
#endif
