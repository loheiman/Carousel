//
//  WelcomeViewController.swift
//  Carousel
//
//  Created by Loren Heiman on 9/19/14.
//  Copyright (c) 2014 Loren Heiman. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var welcomeScrollView: UIScrollView!
    
    @IBOutlet weak var takeCarouselButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var backUpText: UIImageView!
    @IBOutlet weak var backUpSwitch: UISwitch!
    
    func scrollViewDidEndDecelerating(welcomeScrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(welcomeScrollView.contentOffset.x / 320))
        println(page)
        
        // Set the current page, so the dots will update
        if page == 3{
            pageControl.hidden = true
            backUpSwitch.hidden = false
            backUpText.hidden = false
            takeCarouselButton.hidden = false
           
          }
        else {
            pageControl.hidden = false
        }
        
        pageControl.currentPage = page
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        backUpSwitch.hidden = true
        backUpText.hidden = true
        takeCarouselButton.hidden = true
    
        
        welcomeScrollView.delegate = self
        
        welcomeScrollView.contentSize = CGSize(width: 1280, height: 568)

        

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
