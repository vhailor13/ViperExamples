//
//  FilterPresenterTests.swift
//  MassiveExample
//
//  Created by Victor Sukochev on 13/09/2017.
//  Copyright © 2017 Exyte. All rights reserved.
//

import UIKit

import XCTest
@testable import MassiveExample

class FilterPresenterTests: XCTestCase {
    
    var presenter: FilterPresenter!

    
    override func setUp() {
        super.setUp()
        
        presenter = FilterPresenter()
    }
    
    
    
    func testViewDidLoad() {
        let viewStub = FilterViewStub()
        presenter.view = viewStub
        
        presenter.viewDidLoad()
        
        XCTAssert(viewStub.lastModifiedInfo! == "Not modified yet", "Presenter viewDidLoad failed")
    }
    
    func testFilterApplication() {
        let interactorStub = FilterInteractorStub()
        presenter?.interactor = interactorStub
        
        presenter?.applyFilterToPhoto()
        
        XCTAssert(interactorStub.applyFilterCalled, "Apply filter not called")
    }
}
