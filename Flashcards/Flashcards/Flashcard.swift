//
//  Flashcard.swift
//  Flashcards
//
//  Created by Marat S. on 19/11/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import Foundation
import UIKit

class Flashcard {

  let term: String
  let definition: String
  let color: UIColor

  convenience init(term: String, definition: String) {

    self.init(term: term, definition: definition, color: .black)
  }

  init(term: String, definition: String, color: UIColor) {
    self.term = term
    self.definition = definition

    self.color = color
  }

   convenience init() {
//    self.term = "Default term"
//    self.definition = "Default definiton."

    self.init(term: "Default term", definition: "Default definiton.")
  }

}
