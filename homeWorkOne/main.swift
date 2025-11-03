// -------------------------------------- Вычисляемые свойства -----------------------------------------------------

// task_1

struct Temperature {
    var celsius: Int
    var fahrenheit: Int {
        get {
            (celsius * 9 / 5 ) + 32
        }
    }
}

let temperaturaFahrenheit: Temperature = Temperature(celsius: 20)
print("Если температура \(temperaturaFahrenheit.celsius) градусов Цельсия, то в Фаренгейтах: \(temperaturaFahrenheit.fahrenheit) градусов")


// task_2

struct Rectangle {
    var width: Int
    var height: Int
    
    var perimeter: Int {
        get {
            2 * (width + height)
        }
    }
}

let rectangle: Rectangle = Rectangle(width: 5, height: 3)
print("Периметр прямоугольника: \(rectangle.perimeter)")


// task_3


struct BancAccount {
    var balance: Double
    
    var formattedBalance: String {
        get {
            return String("Ваш балланс: \(balance)")
        }
    }
    
    var isOverdrawn: Bool {
        get {
            return balance < 0
        }
    }
}

// v1
let money: BancAccount = BancAccount(balance: 1000)
print(money.formattedBalance)
print(money.isOverdrawn)

// v2
let moneyDecrement: BancAccount = BancAccount(balance: -1)
print(moneyDecrement.formattedBalance)
print(moneyDecrement.isOverdrawn)


// task_4

struct CartItem {
    var name: String
    var pricePerItem: Double
    var quantity: Int
    
    
    var totalPrice: Double {
        get {
            return pricePerItem * Double(quantity)
        }
    }
}

let product: CartItem = CartItem(name: "coffee", pricePerItem: 450.99, quantity: 4)
print("Цена за упаковку кофе составила: \(product.totalPrice) рублей")



// --------------------------------------- Наблюдатели свойств -------------------------------------------------------------

// task_1

struct Post {
    var likes: Int {
        didSet {
            print("Лайков стало \(likes) после каждого изменения")
        }
    }
}

var likeCounter: Post = Post(likes: 1)
likeCounter.likes += 1
likeCounter.likes *= 2
likeCounter.likes *= 3
likeCounter.likes *= 4
likeCounter.likes *= 5


// task_2


struct StepTracker {
    var steeps: Int {
        didSet {
            if steeps >= 10_000 {
                print("цель достигнута")
            } else {
                print("Сегодня пройдено \(steeps) шагов")
            }
        }
    }
}

// мы недошли ))
var steepsMan: StepTracker = StepTracker(steeps: 0)
steepsMan.steeps = 1000


// мы дошли ))
var steepsManForever: StepTracker = StepTracker(steeps: 0)
steepsMan.steeps = 10_0001


// task_3

struct Wallet {
    var money: Double {
        didSet {
            if money < 0 {
                print("У вас долг")
            } else if money > oldValue {
                print("Поступление: \(money - oldValue)")
            } else if money < oldValue {
                print("Трата: \(oldValue - money)")
            }
        }
    }
}

var currentMoney: Wallet = Wallet(money: 0)
currentMoney.money = 100
currentMoney.money = 150
currentMoney.money = 80


// task_4

struct UserAccount {
    var password: String {
        willSet {
            if newValue.count < 6 {
                print("Пароль слишком короткий")
            }
        }
        didSet {
            if !password.isEmpty {
                print("Пароль обновлен")
            }
        }
    }
}

var password: UserAccount = UserAccount(password: "123")
password.password = "qwerty"
