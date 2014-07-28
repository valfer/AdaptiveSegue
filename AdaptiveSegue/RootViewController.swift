//
//  RootViewController.swift
//  Photos
//
//  Created by Valerio Ferrucci on 23/07/14.
//  Copyright (c) 2014 Tabasoft. All rights reserved.
//

import Foundation

import UIKit

class RootViewController: UIViewController {


    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        let destinationVC: AnyObject! = segue.destinationViewController

        if destinationVC.isKindOfClass(PhotoViewController) {
            
            let photoVC = destinationVC as PhotoViewController
            photoVC.image = UIImage(named: "neve")
            photoVC.title = "Neve"
        }
        
    }
}

