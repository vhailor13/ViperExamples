//
//  FilterView.swift
//  MassiveExample
//
//  Created by Victor Sukochev on 18/06/2017.
//  Copyright © 2017 Exyte. All rights reserved.
//

import UIKit

class FilterView: UIViewController, FilterViewProtocol {
    var presenter: FilterPresenterProtocol?
    
    @IBOutlet weak var photoView: UIImageView?
    @IBOutlet weak var lastModifiedLabel: UILabel?
    
    var photo: UIImage? {
        didSet {
            photoView?.image = photo
        }
    }
    
    var lastModifiedInfo: String? {
        didSet {
            lastModifiedLabel?.text = lastModifiedInfo
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.viewDidLoad()
    }
    
    @IBAction func onApplyFilter() {
        presenter?.applyFilterToPhoto()
    }
}
