//
//  PhotoDetailViewController.swift
//  Carousel
//
//  Created by Loren Heiman on 9/21/14.
//  Copyright (c) 2014 Loren Heiman. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    @IBOutlet weak var swipeToShareLabel: UILabel!
    
    var defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var shared: UILabel!
    
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        dismissViewControllerAnimated(true , completion: nil)
        println("tapped")
    }
    
    
    
    @IBAction func swipeUp(sender: AnyObject) {
        swipeToShareLabel.hidden = true
        shared.hidden = false
        self.defaults.setInteger(1, forKey: "photoShared")
        defaults.synchronize()
    }
    
       override func viewDidLoad() {
        super.viewDidLoad()
        
        shared.hidden = true
        
        defaults.setInteger(1, forKey: "photoViewed")
        
        defaults.synchronize()
        
         // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
