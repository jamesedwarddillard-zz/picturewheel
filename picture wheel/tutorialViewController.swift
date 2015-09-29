//
//  tutorialViewController.swift
//  picture wheel
//
//  Created by James Dillard on 9/28/15.
//  Copyright © 2015 James Dillard. All rights reserved.
//

import UIKit

class tutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var tutorialScrollView: UIScrollView!
    
    @IBOutlet weak var tutorialPageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tutorialScrollView.contentSize = CGSize(width: 1280, height: 500)
        tutorialScrollView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(tutorialScrollView: UIScrollView) {
        var page : Int = Int(round(tutorialScrollView.contentOffset.x/320))
        tutorialPageControl.currentPage = page
        
        if page == 3 {
            tutorialPageControl.hidden = true
        }
    }
    
    @IBAction func onSpinButton(sender: AnyObject) {
        performSegueWithIdentifier("spinSegue", sender: self)
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
