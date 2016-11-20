//
//  AnimatedViewController.swift
//  Flashcards
//
//  Created by Marat S. on 19/11/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit

class AnimatedViewController: UIViewController {

  @IBOutlet weak var definitionLabel: UILabel!

  @IBOutlet weak var topConstraint: NSLayoutConstraint!

  var flashcard: Flashcard?

  override func viewDidLoad() {
    super.viewDidLoad()

    definitionLabel.text = nil

  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    UIView.transition(with: definitionLabel,
                      duration: 0.3,
                      options: [.curveEaseOut, .transitionFlipFromBottom],
                      animations: {
                        self.definitionLabel.text = self.flashcard?.definition
                      },
                      completion: nil)

//    topConstraint.constant = 400

//    UIView.animate(withDuration: 2, delay: 1, animations: {
//      self.view.layoutIfNeeded()
//    })

  }
  
  @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
//    print(sender.velocity(in: self.view))

    let point = sender.location(in: view)


    let navbarHeight = navigationController?.navigationBar.frame.height ?? 0

    topConstraint.constant = point.y - navbarHeight

    UIView.animate(withDuration: 0.1, animations: {
      self.view.layoutIfNeeded()
    })



  }

}
