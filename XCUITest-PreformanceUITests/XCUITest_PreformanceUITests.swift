//
//  XCUITest_PreformanceUITests.swift
//  XCUITest-PreformanceUITests
//
//  Created by Shashikant Jagtap on 15/07/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import XCTest

class XCUITest_PreformanceUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testPerformanceOfApp() {
        self.measure {
            XCUIApplication().launch()
            XCUIApplication().buttons["Press"].tap()
        }
    }
    
    func testPerformanceMeasureMetrics() {
        XCUIApplication().launch()
        self.measureMetrics([XCTPerformanceMetric.wallClockTime], automaticallyStartMeasuring: false) {
            startMeasuring()
            XCUIApplication().buttons["Press"].tap()
            stopMeasuring()
        }
    }
        
}
