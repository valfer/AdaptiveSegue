//
//  PhotoTableViewController.swift
//  Photos
//
//  Created by Valerio Ferrucci on 24/07/14.
//  Copyright (c) 2014 Tabasoft. All rights reserved.
//

import Foundation
import UIKit


class PhotoTableViewController: UITableViewController {


    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        let destinationVC: AnyObject! = segue.destinationViewController
        
        if destinationVC.isKindOfClass(PhotoViewController) {
            
            let photoVC = destinationVC as PhotoViewController
            photoVC.image = UIImage(named: "neve")
            photoVC.title = "Neve"
        }
        
    }

}