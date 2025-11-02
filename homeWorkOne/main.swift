import Foundation



struct User {
    var name: String
    var surname: String
}

var userIvan: User = User(name: "Ivan", surname: "Ivanov")
var userPetr = userIvan
//userIvan.name = "Petr"
//userPetr.name = "Petr"

print("userIvan -> \(userIvan)")
print("userPetr -> \(userPetr)")


// Вычисляемые значения


struct User2 {
    let firstName: String
    let lastName: String
    let birthDate: Date
    
    
    var fullName: String {
        get {
            firstName + " " + lastName
        }
        set {
            print("set value \(newValue)")
        }
    }
    
    // Вычисляемые значения
    var age: Int {
        get {
            Calendar.current.dateComponents([.year], from: birthDate, to: .now).year ?? 0
        }
        set {
            print("Сработал установщик даты set -> \(newValue)")
        }
    }
}

let correctBirthDate: Date = {
    var components = DateComponents()
    components.year = 1983
    components.month = 8
    components.day = 26
    return Calendar.current.date(from: components)!
}()


var user: User2 = User2(firstName: "Maksim", lastName: "Minakov", birthDate: correctBirthDate)
print("user -> \(user)")

print(user.fullName)

print(user.age)

user.fullName = "Petr Petrov"

user.age = 30
print(user.age)


// ------------------------

struct Database {
    var login: String
    var isRoot: Bool
    
    var isRootUser: Bool {
        get {
            isRoot
        }
        set {
            if newValue {
                if login == "admin", newValue {
                    isRoot = true
                } else {
                    isRoot = false
                }
            }
        }
    }
}

var db: Database = Database(login: "admin", isRoot: true)
db.isRootUser = true

print("db.isRoot -> \(db.isRoot)")



struct TodoItem {
    let title: String
    let isCompleted: Bool
    
    var textColor: String {
        if isCompleted {
            return "Gray"
        } else {
            return "Black"
        }
    }
}

var task = TodoItem(title: "New Book", isCompleted: true)
print(task.textColor)


// - ----------------- Наблюдатели свойств ----------------

struct LoginForm {
    var email: String = "" {
        
        willSet {
            print("Сейчас будет установлено значение \(newValue)")
        }
        
        didSet {
            print("Старое значение \(oldValue)")
            if !email.contains("@") {
                print("Некоректное значение email: \(email)")
                isError = true
            }
        }
    }
    var isError: Bool = false
}

var form: LoginForm = LoginForm()
form.email = "sdsd"
form.email = "maksim.minakov.83@mail.ru"




// 1.

struct Product {
    let price: Double
    let discont: Int
    
    var priceWithDiscont: Double {
        price * Double(100 - discont) / 100
    }
}

let res = Product(price: 453, discont: 67)
print(res.priceWithDiscont)



// 2.

struct Cart {
    var items: [String] = [] {
        didSet {
            totalCount = items.count
            print(totalCount)
        }
    }
    var totalCount: Int = 0
    
    static func doSome() -> Cart {
        Cart(items: ["1", "2", "3"])
    }
}

var count: Cart = Cart()
count.items = ["0", "1", "2"]


// 3. static

var cart: Cart = Cart()
print(cart)

print(Cart.doSome())


// extension

extension String {
    static let helloText = "Hello"
    static let appName = "Super app"
}

print(String.helloText)
print(String.appName)
