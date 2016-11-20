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

  @IBOutlet weak var termLabel: UILabel!

  let progressView = SFCircleGradientView()

  private let deck = Deck()
  private lazy var flashcard: Flashcard? = self.deck.randomCard()

  override func viewDidLoad() {
    super.viewDidLoad()

    termLabel.text = nil

    progressView.lineWidth = 5
    progressView.progress = 0
    view.addSubview(progressView)
    progressView.frame = CGRect(x: 0, y: 0, width: 240, height: 240)
    progressView.center = view.center
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    progressView.alpha = 0
    progressView.progress = 0

    UIView.animate(withDuration: 0.2, animations: {
      self.progressView.alpha = 1
    }, completion: { _ in
      self.progressView.setProgress(1, animateWithDuration: 1.8)
    })

    UIView.animate(withDuration: 0.2, delay: 2, options: [], animations: {
      self.progressView.alpha = 0
    }, completion: { _ in

      UIView.transition(with: self.termLabel, duration: 0.5, options: .transitionCrossDissolve, animations: {
        self.termLabel.text = self.flashcard?.term
      }, completion: nil)

    })

  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "to-the-list", let destinationViewController = segue.destination as? ListViewController {
      destinationViewController.deck = deck
    } else if let destinationViewController = segue.destination as? AnimatedViewController {
      destinationViewController.flashcard = flashcard
    }
  }

}

