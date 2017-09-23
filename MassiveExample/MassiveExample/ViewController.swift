//
//  ViewController.swift
//  MassiveExample
//
//  Created by Victor Sukochev on 12/06/2017.
//  Copyright © 2017 Exyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var photoView: UIImageView?
    @IBOutlet weak var lastModifiedLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lastModifiedLabel?.text = "Not modified yet"        
    }
    
    @IBAction func onApplyFilter() {
        guard let source = photoView?.image else {
            return
        }
        
        photoView?.image = applyFilter(source: source)
        updateModificationDate()
    }
    
    private func applyFilter(source: UIImage) -> UIImage {
        let ciSource = CIImage(cgImage: source.cgImage!)
        let ciContext = CIContext(options: .none)
        
        let params: [String : Any] = [
            kCIInputImageKey: ciSource,
            "inputIntensity": 0.8
        ]
        
        let filter = CIFilter(name: "CISepiaTone", withInputParameters: params)!
        let ciOutput = filter.outputImage!
        let cgOutput = ciContext.createCGImage(ciOutput, from: ciOutput.extent)!
        
        return UIImage(cgImage: cgOutput)
    }
    
    private func updateModificationDate() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm"
        let dateStr = dateFormatter.string(from: Date())
        
        lastModifiedLabel?.text = "Last modified: \(dateStr)"
        
    }
    
}

