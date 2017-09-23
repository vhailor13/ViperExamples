//
//  FilterProtocols.swift
//  MassiveExample
//
//  Created by Victor Sukochev on 18/06/2017.
//  Copyright © 2017 Exyte. All rights reserved.
//

import  UIKit

// MARK: - View

protocol FilterViewProtocol: class {
    var presenter: FilterPresenterProtocol? { get set }
    
    var lastModifiedInfo: String? { get set }
    var photo: UIImage? { get set }
}

// MARK: - Router

protocol FilterRouterProtocol: class {
    
}

// MARK: - Presenter

protocol FilterPresenterProtocol: class {
    weak var view: FilterViewProtocol? { get set }
    var router: FilterRouterProtocol? { get set }
    var interactor: FilterInteractorProtocol? { get set }
        
    func viewDidLoad()
    
    func applyFilterToPhoto()
}

// MARK: - Interactor

protocol FilterInteractorProtocol: class {
    weak var image: UIImage? { get set }
    
    func applyFilter() -> (UIImage, Date)?
}
