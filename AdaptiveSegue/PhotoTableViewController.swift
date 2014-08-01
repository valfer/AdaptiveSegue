//
//  PhotoTableViewController.swift
//  Photos
//
//  Created by Valerio Ferrucci on 24/07/14.
//  Copyright (c) 2014 Tabasoft. All rights reserved.
//

import Foundation
import UIKit


class PhotoTableViewController: UITableViewController, UITableViewDelegate {


    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        let destinationVC: AnyObject! = segue.destinationViewController
        
        if destinationVC.isKindOfClass(PhotoViewController) {
            
            let photoVC = destinationVC as PhotoViewController
            photoVC.image = UIImage(named: "neve")
            photoVC.title = "Neve"
        }
        
    }

    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
        let photoVC = UIStoryboard(name:"Main", bundle:nil).instantiateViewControllerWithIdentifier("photoVC") as PhotoViewController
        photoVC.image = UIImage(named: "neve")
        self.showDetailViewController(photoVC, sender: self)
        // o 
        // self.showViewController(photoVC, sender: self)
    }

}