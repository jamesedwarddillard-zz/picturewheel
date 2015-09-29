//
//  ProfileViewController.swift
//  picture wheel
//
//  Created by James Dillard on 9/23/15.
//  Copyright © 2015 James Dillard. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func onXButton(sender: AnyObject) {
        dismissViewControllerAnimated(true,completion: nil)
    }
    
    @IBAction func onSignOutButton(sender: AnyObject) {
        performSegueWithIdentifier("signOutSegue", sender: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = imageView.image!.size
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
