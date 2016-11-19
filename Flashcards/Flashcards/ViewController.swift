//
//  ViewController.swift
//  Flashcards
//
//  Created by Marat S. on 19/11/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit
import SFProgressCircle

class ViewController: UIViewController {

  let deck = Deck()

  @IBOutlet weak var termLabel: UILabel!

  @IBOutlet weak var textField: UITextField!

  let progressView = SFCircleGradientView()

  override func viewDidLoad() {
    super.viewDidLoad()

    let flashcard = deck.randomCard()

    termLabel.text = flashcard?.term

    progressView.lineWidth = 10
    progressView.progress = 0

    progressView.frame = CGRect(x: 0, y: 0, width: 240, height: 240)
    progressView.center = view.center
    view.addSubview(progressView)
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    progressView.setProgress(1, animateWithDuration: 2.3)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

