//
//  Calculator.swift
//  Converter
//
//  Created by Marat S. on 20/08/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import Foundation

class Calculator {

  func convert(celsius tc: Double) -> Double {
    return (9.0 / 5.0) * tc + 32
  }

  func convert(fahrenheit tf: Double) -> Double {
    return (5.0 / 9.0) * (tf - 32)
  }

}
