//
//  ScrollViewController.swift
//  Converter
//
//  Created by Marat S. on 20/08/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

  @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

//        scrollView.contentSize = CGSize(width: 600, height: 2000)
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
