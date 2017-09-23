//
//  FilterInteractorStub.swift
//  MassiveExample
//
//  Created by Victor Sukochev on 13/09/2017.
//  Copyright © 2017 Exyte. All rights reserved.
//

import UIKit
@testable import MassiveExample

class FilterInteractorStub: FilterInteractorProtocol {
    weak var image: UIImage?
    
    var applyFilterCalled = false
    
    func applyFilter() -> (UIImage, Date)? {
        applyFilterCalled = true
        return .none
    }
}
