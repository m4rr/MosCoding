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



var name: String? = "Yes"

name = nil

//print(name?.characters.count)

let aNum1 = 3
let aNum2: Int? = nil
let aNum3 = Optional(3)

//Int.max

//print(aNum1.advanced(by: 5))
//print(aNum2?.advanced(by: 5))
//print(aNum3?.advanced(by: 5))

name == nil
name != ""

aNum2 == nil
//aNum1 == nil

name = "Marat"

if name == nil {
  //print("not a name")
} else {
  //print(name)
}

if let innerName = name {
  //  print(1, name)
  //  print(2, innerName)
} else {
  //  print(3, "not a name")
}


var array = [1, 2, 3, 4, 5]

for number in array {
  //  print(number)
}

//print(array.first)

array = []

//print(array.first)



typealias CityType = (cityName: String, temp: Int, pressure: Int)

var cities: [CityType] = [

  ("Moscow",    20, 751),
  ("London",    30, 752),
  ("Berlin",     0, 752),
  ("Amsterdam", 15, 750),

]

cities.first
cities.last

cities[0]
cities[1...3]

let capitals = [
  "Moscow": "Russia",
  "London": "UK",
  "Berlin": "Germany",
  "Amsterdam": "The Netherlands"
]


for city in cities {
  print(city.cityName, " \t ",
        capitals[city.cityName] ?? "not found")
}

print()

for (key, value) in capitals {
  print(value)
}

typealias СityType = (cityName: String, temp: Int, pressure: Int)

var сities: [CityType] = [

  ("Moscow",    20, 751),
  ("London",    30, 752),
  ("Berlin",     0, 752),
  ("Amsterdam", 15, 750),

]


let filtered =

  cities.filter { (t: CityType) -> Bool in

    return t.cityName.contains("e")

    return t.pressure >= 752 && t.temp >= 20
}

func nameCriteria(t: CityType) -> Bool {
  return t.cityName.contains("e")
}

func weatherCriteria(t: CityType) -> Bool {
  return t.pressure >= 752 && t.temp >= 20
}

cities
  .filter(nameCriteria)
  .filter(weatherCriteria)

cities.map { (t: CityType) -> String in
  return t.cityName
}

func nameExtractor(t: CityType) -> String {
  return t.cityName
}

cities.map(nameExtractor)


//let something = criteria()

true && true
true || false
!true
true != true
true == true
!(true != true) && false

(1 + 1) * 0

print(filtered)






