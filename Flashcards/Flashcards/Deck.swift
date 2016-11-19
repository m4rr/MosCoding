//
//  Deck.swift
//  Flashcards
//
//  Created by Marat S. on 19/11/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import Foundation

class Deck {

  private var cards: [Flashcard] = [ ]

  init() {
    let cardData = [
      "controller outlet" : "A controller view property, marked with IBOutlet",
      "controller action" : "A controller method, marked with IBAction, that is triggered by an interface event."
    ]

//    for (term, definition) in cardData {
//      cards.append(Flashcard(term: term, definition: definition))
//    }
//
//    cards = cardData.map { (key: String, value: String) -> Flashcard in
//      return Flashcard(term: key, definition: value)
//    }

    cards = cardData.map { Flashcard(term: $0, definition: $1) }

  }

  func randomCard() -> Optional<Flashcard> { // -> Flashcard?
    if cards.isEmpty {

      return nil

    } else {
      let randomIndex =
        Int(
          arc4random_uniform(
            UInt32(
              cards.count)))
      
      return cards[randomIndex]
    }
  }


}









