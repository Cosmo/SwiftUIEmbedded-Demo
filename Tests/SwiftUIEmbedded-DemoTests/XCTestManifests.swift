import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SwiftUIEmbedded_DemoTests.allTests),
    ]
}
#endif
