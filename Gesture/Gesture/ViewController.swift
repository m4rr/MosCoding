//
//  ViewController.swift
//  Gesture
//
//  Created by Marat S. on 21/08/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var label: UILabel!

  @IBOutlet var singleTapRecognizer: UITapGestureRecognizer!
  @IBOutlet var doubleTapRecognizer: UITapGestureRecognizer!

  func showGestureName(name: String) {

    label.text = name
    label.hidden = false

    label.alpha = 0

//    UIView.animateWithDuration(1) {
//      self.label.alpha = 1
//    }

//    UIView.animateWithDuration(1, animations: makeNotTransparent)

//    UIView.animateWithDuration(1, animations: makeNotTransparent, completion: completion)

//    UIView.animateWithDuration(<#T##duration: NSTimeInterval##NSTimeInterval#>, delay: <#T##NSTimeInterval#>, options: <#T##UIViewAnimationOptions#>, animations: <#T##() -> Void#>, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)

    UIView.animateWithDuration(1, animations: makeNotTransparent) { _ in

      UIView.animateWithDuration(1, animations: {

        self.label.transform = CGAffineTransformIdentity

      })

    }

  }

  func makeNotTransparent() -> Void {
    label.alpha = 1

    let t = CGAffineTransformMakeTranslation(0, 100)

    label.transform = t

//    view.backgroundColor = UIColor.yellowColor()
  }

  func completion(finished: Bool) -> Void {
    label.alpha = 0
    view.backgroundColor = UIColor.whiteColor()
  }

  @IBAction func singleTap(sender: UITapGestureRecognizer) {
    showGestureName("Single Tap")
  }
  
  @IBAction func doubleTap(sender: UITapGestureRecognizer) {
    showGestureName("Double Tap")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    singleTapRecognizer.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

extension ViewController: UIGestureRecognizerDelegate {

  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {

    if gestureRecognizer == singleTapRecognizer && otherGestureRecognizer == doubleTapRecognizer {
      return false
    }

    return true

  }

}









