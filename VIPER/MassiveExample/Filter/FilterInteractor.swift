//
//  FilterInteractor.swift
//  MassiveExample
//
//  Created by Victor Sukochev on 18/06/2017.
//  Copyright © 2017 Exyte. All rights reserved.
//

import UIKit

class FilterInteractor: FilterInteractorProtocol {
    
    weak var image: UIImage?
    
    func applyFilter() -> (UIImage, Date)? {
        guard let imageSource = image else {
            return .none
        }
        
        
        let ciSource = CIImage(cgImage: imageSource.cgImage!)
        let ciContext = CIContext(options: .none)
        
        let params: [String : Any] = [
            kCIInputImageKey: ciSource,
            "inputIntensity": 0.8
        ]
        
        let filter = CIFilter(name: "CISepiaTone", withInputParameters: params)!
        let ciOutput = filter.outputImage!
        let cgOutput = ciContext.createCGImage(ciOutput, from: ciOutput.extent)!
        
        let result = UIImage(cgImage: cgOutput)
        image = result
        
        return (result, Date())
    }
}
