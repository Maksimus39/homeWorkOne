// task_1

extension String {
    
    func isPalindrome() -> Bool {
           let cleanedString = self.lowercased()
           return String(cleanedString.reversed()) == cleanedString
       }
}

let isPalindrome = "racecar".isPalindrome()
print("Эта строка является палиндромом? \(isPalindrome)")


// task_2

extension Int {
    
    func squared() -> Int {
        return self * self
    }
}


let squaredNumber = 5.squared()
print("Квадрат этого числа: \(squaredNumber)")


// task_3

extension Person {
    
    func introduce() -> String {
        return "Здравствуйте, меня зовут \(name). Я \(age)-летний(ая)."
    }
}


class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let user = Person(name: "Александр", age: 25)
print(user.introduce())



// task_4

protocol Drawable {
    func draw() -> String
}

class Circle: Drawable {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func draw() -> String {
         "Рисую круг радиусом \(radius)"
    }
}

class Square: Drawable {
    let side: Double
    
    init(side: Double) {
        self.side = side
    }
    
    func draw() -> String {
         "Рисую квадрат со стороной \(side)"
    }
}

let circle: Drawable = Circle(radius: 10)
let square: Drawable = Square(side: 5)

print(circle.draw())
print(square.draw())


// task_5

protocol Calculate {
    
    func calculate(a: Int, b: Int) -> Int
}


struct Adder : Calculate {
    
    func calculate(a: Int, b: Int) -> Int {
        return a + b
    }
}

struct Multiplier : Calculate {
    func calculate(a: Int, b: Int) -> Int {
        return a * b
    }
}

let adder = Adder()
let multiplier = Multiplier()

print("Сумма: \(adder.calculate(a: 5, b: 3))")
print("Произведение: \(multiplier.calculate(a: 5, b: 3))")


// task_6

protocol Printable {
     
    func printInfo() -> String
}

class Car: Printable {
    var model: String
    
    init(model: String) {
        self.model = model
    }
    
    func printInfo() -> String {
        "Модель автомобиля марки \(model)"
    }
}


class Phone: Printable {
    var brand: String
    
    init(brand: String) {
        self.brand = brand
    }
    
    func printInfo() -> String {
        "Марка модели телефона \(brand)"
    }
}

let car: Printable = Car(model: "BMW")
let phone: Printable = Phone(brand: "Samsung")

print(car.printInfo())
print(phone.printInfo())
    


// task_7

protocol Named {
    var name: String { get }
}

class Dog: Named {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


struct Book: Named {
    var name: String
}


var dogName = Dog(name: "Red")
print(dogName.name)

var bookName = Book(name: "Head First Swift")
print(bookName.name)
