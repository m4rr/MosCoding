//
//  AnimatedViewController.swift
//  Flashcards
//
//  Created by Marat S. on 19/11/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit

class AnimatedViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  @IBAction func buttonTap(sender: UIButton) {

    UIView.animate(withDuration: 1) {
      sender.center = CGPoint(x: 50, y: 50)
      sender.transform = CGAffineTransform(scaleX: 5.5, y: 5.5)

      self.view.backgroundColor = .white
    }

    UIView.animate(withDuration: 1, delay: 2,
                   options: [.curveEaseIn, .autoreverse],
                   animations: {
//      sender.transform = CGAffineTransform(scaleX: 1, y: 1)\\


//                    let t = CATransform3DIdentity
                    sender.layer.transform = CATransform3DMakeRotation(20, 0, 1, 0)

                    sender.center = CGPoint(x: 50, y: 600)
    }, completion: nil)


//    UIView.animateKeyframes(withDuration: 1, delay: 3, options: [], animations: {
//      UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5, animations: {
//        sender.center.x = 250
//      })
//
//      UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.2, animations: {
//        sender.center.x = 50
//      })
//    }, completion: nil)



    



  }

}
