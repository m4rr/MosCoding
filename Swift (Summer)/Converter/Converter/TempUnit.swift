//
//  TempUnit.swift
//  Converter
//
//  Created by Marat S. on 20/08/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import Foundation

struct TempUnit {

  let temp: Double

  func prettyRound() -> String {
    return "\(Int(round(temp)))"
  }

}
