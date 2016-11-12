//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

2 + 2 * 2

let адрес = URL(string: "3456789*&^%$")
let адрес2 = URL(string: "ya.ru")

let массив: [Int] = [6, 5, 89]
var словарь: [String: Any] = [
  1: "",
  "apple": "яблоко",
  "ключ-строка": [ 1, 1, 1 ],
  "адрес": URL(string: "строка"),
]

словарь["pear"]
словарь["яблоко"] = "apple"
словарь["apple"]

массив[0]

func name() {

}

массив.enumerated().forEach { (key: Int, value: Int) in
  print(value)
}

for item in массив {
  print(item)
}

Set(массив)




