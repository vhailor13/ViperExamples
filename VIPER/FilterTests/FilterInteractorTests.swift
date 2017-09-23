//
//  FilterInteractorTests.swift
//  MassiveExample
//
//  Created by Victor Sukochev on 13/09/2017.
//  Copyright © 2017 Exyte. All rights reserved.
//

import XCTest
@testable import MassiveExample

class FilterInteractirTests: XCTestCase {
    
    var interactor: FilterInteractor!
    
    
    override func setUp() {
        super.setUp()
        
        interactor = FilterInteractor()
    }
    
    
    
    func testFilter() {
        let image = UIImage(named: "test.png")
        interactor.image = image
        
        let result = interactor.applyFilter()
        XCTAssert(result != nil, "Interactor failed to filter image")
    }
}
