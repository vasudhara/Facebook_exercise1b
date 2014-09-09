//
//  PostdetailViewController.swift
//  Facebook_exercise1b
//
//  Created by Vasudhara Kantroo on 9/6/14.
//  Copyright (c) 2014 Vasudhara Kantroo. All rights reserved.
//

import UIKit

class PostdetailViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    var buttonToggled: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = imageView.image!.size

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var likeButton: UIButton!
    @IBAction func clickBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    
    @IBAction func onLike(sender: AnyObject) {
        likeButton.selected = !likeButton.selected
    }

    
    func scrollViewDidScroll(scrollView: UIScrollView){
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
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
