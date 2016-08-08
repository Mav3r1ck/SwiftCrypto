import XCTest
@testable import SwiftCrypto

class SwiftCryptoTests: XCTestCase {
    
    func testSha256() {
        let actual = "suraj".sha256()
        let expected = "babde48edd97b6cabd4a378d655c9d023b28bc2ec7880b5a3e69ab3f27e3a028"
        XCTAssertEqual(actual, expected)
    }
    
    func testMd5Correct() {
        let actual = "suraj".md5()
        let expected = "4dd49f4f84e4d6945e3bc6d14812004e"
        XCTAssertEqual(actual, expected)
    }
    
    func testMd5Incorrect() {
        let actual = "hello".md5()
        let expected = "4dd49f4f84e4d6945e3bc6d14812004e"
        XCTAssertNotEqual(actual, expected)
    }


    static var allTests : [(String, (SwiftCryptoTests) -> () throws -> Void)] {
        return [
            ("testMd5Correct", testMd5Incorrect),
        ]
    }
}
