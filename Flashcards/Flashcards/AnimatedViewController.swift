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
  // @IBOutlet weak var topConstraint

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
  }

}
