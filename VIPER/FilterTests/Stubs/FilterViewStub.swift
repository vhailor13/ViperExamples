//
//  FilterViewStub.swift
//  MassiveExample
//
//  Created by Victor Sukochev on 13/09/2017.
//  Copyright © 2017 Exyte. All rights reserved.
//

import UIKit
@testable import MassiveExample

class FilterViewStub: FilterViewProtocol {
    var presenter: FilterPresenterProtocol?
    
    var lastModifiedInfo: String?
    var photo: UIImage?
}
