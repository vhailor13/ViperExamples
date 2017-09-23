//
//  FilterPresenter.swift
//  MassiveExample
//
//  Created by Victor Sukochev on 18/06/2017.
//  Copyright © 2017 Exyte. All rights reserved.
//

import Foundation

class FilterPresenter: FilterPresenterProtocol {
 	 weak var view: FilterViewProtocol?
 	 var router: FilterRouterProtocol?
 	 var interactor: FilterInteractorProtocol?

 	 func viewDidLoad() {
 	 	view?.lastModifiedInfo = "Not modified yet"
 	 }
    
    func applyFilterToPhoto() {
        guard let result = interactor?.applyFilter() else {
            return
        }
        
        view?.photo = result.0
        updateLastModified(date: result.1)
    }
    
    private func updateLastModified(date: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm"
        let dateStr = dateFormatter.string(from: Date())
        
        view?.lastModifiedInfo = "Last modified: \(dateStr)"
    }
 }
