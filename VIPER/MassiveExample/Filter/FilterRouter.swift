//
//  FilterRouter.swift
//  MassiveExample
//
//  Created by Victor Sukochev on 18/06/2017.
//  Copyright © 2017 Exyte. All rights reserved.
//

class FilterRouter: FilterRouterProtocol {

	private weak var view: FilterView?
        
    init(view: FilterView) {
        self.view = view
    }   
}
