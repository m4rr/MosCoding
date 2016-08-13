//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func sum(_ num1: Int, _ num2: Int, _ num3: Int) -> Int {
  return num1 + num2 + num3
}

func вычитание(num1: Int, num2: Int) -> Int {
  return num1 - num2
}

func умножить(num1: Int, num2: Int) -> Int {
  return num1 * num2
}

func поделить(num1: Double, num2: Double) -> Double {
  return num1 / num2
}

let div1 = поделить(num1: 1, num2: 2)
let div2 = поделить(num1: 10, num2: 20)


умножить(num1: 4, num2: 7)

let txt = "текст"

func объединитьТекст(name: String, loves: String) -> String {
  return "на самом деле " + String(format: "%@ ❤️ %@", name, loves)
}

let addedText = объединитьТекст(name: "Марат", loves: "Swift")

addedText.characters.count

addedText.uppercased()

let image = #imageLiteral(resourceName: "Mickey-mouse-image-hd-disney.jpg")

image.size



