//
//  IntroViewController.swift
//  picture wheel
//
//  Created by James Dillard on 9/22/15.
//  Copyright © 2015 James Dillard. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var introImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = introImageView.image!.size
        
        scrollView.delegate = self
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView){
        print("user scrolled")
    }
    
    @IBAction func onSignInButton(sender: AnyObject) {
        performSegueWithIdentifier("SignInSegue", sender: self)
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
