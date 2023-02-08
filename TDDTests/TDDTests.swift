//
//  TDDTests.swift
//  TDDTests
//
//  Created by 소하 on 2023/02/06.
//

import XCTest
@testable import TDD

final class TDDTests: XCTestCase {
    private var bullAndCows:BullsandCows!
    
    
    override func setUpWithError() throws {
        bullAndCows = BullsandCows()
        super.setUp()
    }

    override func tearDownWithError() throws {
        bullAndCows = nil
        super.tearDown()
    }
    
    // SSS일 경우
    func testSSS() throws {
        // given, 값 설정
        bullAndCows.inputAnswer("123")
        bullAndCows.checkResult(["1", "2", "3"])
        // when, 테스트 코드 실행
        let result = bullAndCows.printScore()
        // then, 예상 결과 확인
        XCTAssertEqual(result, "S S S", "정답이 아닙니다")
    }
    
    // OOO일 경우
    func testOOO() throws {
        // given, 값 설정
        bullAndCows.inputAnswer("000")
        bullAndCows.checkResult(["1", "2", "3"])
        // when, 테스트 코드 실행
        let result = bullAndCows.printScore()
        // then, 예상 결과 확인
        XCTAssertEqual(result, "O O O", "정답이 아닙니다")
    }
    
    // BBB일 경우
    func testBBB() throws {
        // given, 값 설정
        bullAndCows.inputAnswer("312")
        bullAndCows.checkResult(["1", "2", "3"])
        // when, 테스트 코드 실행
        let result = bullAndCows.printScore()
        // then, 예상 결과 확인
        XCTAssertEqual(result, "B B B", "정답이 아닙니다")
    }
    
    // SOS일 경우
    func testSOS() throws {
        // given, 값 설정
        bullAndCows.inputAnswer("103")
        bullAndCows.checkResult(["1", "2", "3"])
        // when, 테스트 코드 실행
        let result = bullAndCows.printScore()
        // then, 예상 결과 확인
        XCTAssertEqual(result, "S O S", "정답이 아닙니다")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
