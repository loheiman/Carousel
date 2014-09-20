//
//  StartViewController.swift
//  Carousel
//
//  Created by Loren Heiman on 9/19/14.
//  Copyright (c) 2014 Loren Heiman. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    @IBOutlet weak var IntroScrollView: UIScrollView!

    @IBOutlet weak var IntroImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        IntroScrollView.contentSize = IntroImageView.frame.size
        
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
