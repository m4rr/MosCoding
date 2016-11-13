//: Playground - noun: a place where people can play


true

false

let odin = 8

odin == 1
   1 == 1

odin == 2
   1 == 2

if odin == 1 {
  print("действительно")
} else {
  print("неправда")
}

// &&    // оператор И   (×)
// ||    // оператор ИЛИ (+)
// ==    // проверка на равенство
// !=    // проверка на неравенство
// !     // логическое отрицание

if (odin != 1) && !(1 == 1) && 3 == 3 || 1 != 2 {

}

if odin == 1 || 1 != 1 {

}

let peremennaya = "111"

switch odin == 1 || 1 != 1 {

case true:
  print("это был true")

case false:
  print("это был false")

case 10 == 10:
  print("тоже true")

case odin == 1 || 1 != 1:
  print("сложно")

default:
  print("ничего не было определено")
}

switch 100_000 {
case 0...110_000, 0...100_000:
  print("меньше 110 000")
  // fallthrough // прокидывает выполнение дальше

case 0...150_000:
  print("меньше 150 000")

default:
  print("больше 150 000")
}

if 100_000 > 0 && 100_000 < 110_000 {
  print("меньше 110 000")
} else {
  // ...
}


for элемент in 0..<10 {
  print(элемент)
}
print("----")

var a = 0

while a < 10 {
  print(a)
  a += 1 // a = a + 1
}

// print(0)
// print(1)
// print(2)
// ...

print("----")

let погода = [
  "Москва":          "-3",
  "Санкт-Петербург": "-5",
  "Екатеринбург":     "4",
]

for (город, температура) in погода {
  print(город, температура)
}

for город in погода.keys {
  print(погода[город])
}

погода.keys.forEach { (город: String) -> Void in
  print(город)
}

func распечататьСтроку(название: String) -> Void {
  print(название)
}

print("----")

погода.keys.forEach(распечататьСтроку)
погода.keys.forEach(распечататьСтроку)

print("----")

погода.values.forEach(распечататьСтроку)

let b = 1

let f😂 = { (город: String) -> Void in
  print(город, "←")
}

f😂("stroka")

погода.keys.forEach(f😂)


let числа = Array(1...5)

func возвестиВКвадрат(наВходе: Int) -> Int {
  return наВходе * наВходе
}

let newArray3 =
  числа
    .map(возвестиВКвадрат)
    .map { $0 - 1 }
    .filter { $0 > 10 }


let x = [1,2,3].contains(3)

//let s = Set(x)












