//
//  FilterAssembly.swift
//  MassiveExample
//
//  Created by Victor Sukochev on 18/06/2017.
//  Copyright © 2017 Exyte. All rights reserved.
//

import UIKit

class FilterAssembly {
    static func createModule(image: UIImage) -> UIViewController {
            let viewController = mainStoryboard.instantiateViewController(withIdentifier: "FilterView")
            if let view = viewController as? FilterView {
                let presenter: FilterPresenterProtocol = FilterPresenter()
                let router: FilterRouterProtocol = FilterRouter(view: view)
                let interactor: FilterInteractorProtocol = FilterInteractor()
                
                view.presenter = presenter
                
                presenter.view = view
                presenter.router = router
                presenter.interactor = interactor
                
                interactor.image = image
                
                return viewController
            }
            
            return UIViewController()
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: .none)
    }
}
