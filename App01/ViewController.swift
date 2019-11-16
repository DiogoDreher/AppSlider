//
//  ViewController.swift
//  App01
//
//  Created by Diogo Oliveira on 15/11/2019.
//  Copyright © 2019 Diogo Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var swImageView: UIImageView!
    
    let images = [ #imageLiteral(resourceName: "darth"), #imageLiteral(resourceName: "luke"), #imageLiteral(resourceName: "lea"), #imageLiteral(resourceName: "hansolo"), #imageLiteral(resourceName: "chewie"), #imageLiteral(resourceName: "bobba"), #imageLiteral(resourceName: "storm"), #imageLiteral(resourceName: "emperor"), #imageLiteral(resourceName: "yoda"), #imageLiteral(resourceName: "c3po"), #imageLiteral(resourceName: "r2d2") ]
    
    var imageNumber = 0
    @IBAction func nextImage(_ sender: UIBarButtonItem) {
        imageNumber += 1
        
        if imageNumber > 10 {
            imageNumber = 0
        }
        
        swImageView.image = images[imageNumber]
        
        
    }
    @IBAction func prevImage(_ sender: UIBarButtonItem) {
        imageNumber -= 1
        
        if imageNumber < 0 {
            imageNumber = 10
        }
        
        swImageView.image = images[imageNumber]
        
        
    }
    

}

