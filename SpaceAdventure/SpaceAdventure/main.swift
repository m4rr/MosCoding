//
//  main.swift
//  SpaceAdventure
//
//  Created by Marat S. on 05/11/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import Foundation

let numberOfPlanets: Int = 8
let diametrOfEarth: Double = 24_859.82 // In miles from pole to pole

//print("Welcome to our solar system!")
print("There are \(numberOfPlanets) planets to explore.")
print("You are currently on Earth, which has a circumference of \(diametrOfEarth) miles.")


print("What is your name?")

//let nonOptional: String = "Str"
let username: String? = readLine()

if var name = username {
  name = "----"
  print("Welcome to our solar system \(name)!")
} else {
  print("Access denied")
}


















