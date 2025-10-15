// ------------------ Concatenation --------------

// task_1

let firstName:String = "Максим"
let lastName:String = "Минаков"
let fullName:String = firstName + " " + lastName

print("fullName -> \(fullName)")



// task_2

let age:UInt8 = 42

let resultMessage = "Меня зовут " + firstName + ", и мне " + String(age) + " года."
print("resultMessage -> \(resultMessage)")


// task 3

print("Введите первое число.")
let firstNumber = Int(readLine()!)!

print("Введите второе число.")
let secondNumber = Int(readLine()!)!

let sumResult = firstNumber + secondNumber
let sumFirstandSecondNumber = "Сумма чисел " + String(firstNumber) + " и " + String(secondNumber) + " равна " + String(sumResult) + "."
print("sumFirstandSecondNumber -> \(sumFirstandSecondNumber)")




// --------------------- string interpolation ---------------

// task_1

let ageTestIntorpolation:UInt8 = 42

let resultMessageInterpolation = "Меня зовут \(firstName), и мне \(age) года."
print("resultMessageInterpolation -> \(resultMessageInterpolation)")


// task_2

print("Введите ваш вес в кг:")
let weight = Double(readLine()!)!

print("Введите ваш рост в см:")
let heightCm = Double(readLine()!)!

let heightM = heightCm / 100

let bmi = weight / (heightM * heightM)

print("Ваш ИМТ равен: \(bmi)")



// task_3

let productName:String = "MacBooK Air"
let price:Int = 54_000
let quantity:Int = 22

let totalPrice = "Вы добавили в корзину \(quantity) шт. Товара \(productName) на сумму \(price * quantity) руб"

print("totalPrice -> \(totalPrice)")



// ----------------- main data types ------------

// task_1

var minIntSixTeen:Int16 = -32_768
var numberUintEight:UInt8 = 200
var numberDouble:Double = 3.1415926535
var isBool:Bool = false
let message:String = "Боятся нужно только Бога"



// task_2

print("Пользователь, введите целое число?")

let inputNumber = Int(readLine()!)!

let squareNumber = inputNumber * inputNumber
print("Результат возведения числа в квадрат равен \(squareNumber)")


// task_3

let inputNumberTwo = 42
let isEven:Bool

isEven = inputNumberTwo % 2 == 0
print("Введённое число является \(isEven) значением.")




// --------------------- variable and constant -------------------------

// task_1

var temperature:Int8 = 7
temperature = 10


// task_2

let birthYear:Int16 = 1983          // Выбрал данный тип так как было время и до нашей эры а более чем 32 века у нас значительный запас
//birthYear = 1982                  // константа подразумевает объявление присвоенного значения в переменной единожды


// task_3

var count = 10
//count = "Mobile IOS developer"

/*
 Тут произошло следующее: я могу ошибаться но или компилятор
  или интерпритатор по умолчанию задаст переменной тип при
  объявлении без явного присвоения типа как type notation
  а потом я вмешиваюсь и явно пытаюсь изменить не только значение
  но и сам тип данных и язык это не допустит
 */



// ---------------------- if/else ------------------

// task_1

let testNumber = 345_123

if testNumber > 0 {
    print("Число \(testNumber), является положительным")
} else if testNumber < 0 {
    print("Число \(testNumber), является отрицательным")
} else {
    print("Число \(testNumber), является нулём")
}



// task_2

let userAge = 42

if userAge >= 18 {
    print("Доступ разрешён!")
} else {
    print("Доступ запрещён!")
}
