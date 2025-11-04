// task_1

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sayHello(){
        print("Привет, меня зовут \(name)")
    }
    
    
    // task_3
    func celebrateBirthday() {
        age += 1
        print("С днем рождения, \(name)! Теперь у меня \(age) лет.")
    }
}

// person - 1
let personIvan: Person = Person(name: "Ivan", age: 20)
personIvan.sayHello()

// person - 2
let personPetr: Person = Person(name: "Petr", age: 25)
personPetr.sayHello()

// person - 3
let personOleg: Person = Person(name: "Oleg", age: 30)
personOleg.sayHello()


// task_2

class Car {
    var model: String
    var owner: Person?
    
    init(model: String, owner: Person? = nil) {
        self.model = model
        self.owner = owner
    }
    
    func assignOwner(_ newOwner: Person) {
        self.owner = newOwner
        print("Новый хозяин автомобиля \(model) - \(newOwner.name)")
    }
}

// первый владелец - тут создан автомобиль и позже присвоен владелец
let toyota = Car(model: "Toyota")
toyota.assignOwner(personIvan)


// второй владелец сразу присвоен экземпляру автомобиль и владелец и машина
let bmw = Car(model: "BMW", owner: personPetr)
bmw.assignOwner(personPetr)


// ---- task_3 --- этот метод celebrateBirthday я реализовал в классе Person т.к т.з мне было не совсем ясно
// и я его реализовал в классе Person без реализации наследования в класс Car, хотя если подумать по
// названию то этот метод по логике там и не нужен ведь класс отвечает за реализацию автомобиля, наверно так

personIvan.celebrateBirthday()
personPetr.celebrateBirthday()
personOleg.celebrateBirthday()



// task_4

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeSound() {}
}

class Dog: Animal {
    // task_5
    var breed: String?
    
    init(name: String, breed: String? = nil){
        self.breed = breed
        super.init(name: name)
    }
    
    override func makeSound() {
        print("Собака \(name) умеет лаить")
    }
}

class Cat: Animal {
    
    override func makeSound() {
        print("Кот \(name) умеет мяукать")
    }
}


let myDog = Dog(name: "Rex")
let myCat = Cat(name: "Murzic")
myDog.makeSound()
myCat.makeSound()


// task_5

let dogGermanShepherd: Dog = Dog(name: "Red", breed: "German Shepherd")
let dogPoodle: Dog = Dog(name: "Марсель", breed: "Poodle")


// task_6

class Product {
    var name: String
    var price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

class Store {
    var products: [Product] = []
    
    init(products: [Product]) {
        self.products = products
    }
    
    func printCatalog() {
        for (index, product) in products.enumerated(){
            print("\(index + 1). \(product.name) - \(product.price) руб")
        }
    }
    
    func cell(productName: Product){
        for i in 0..<products.count {
            if products[i].name == productName.name {
                    let removedProduct = products.remove(at: i)
                    print("Товар \(removedProduct.name) удален из корзины")
                    return
                }
            }
        print("Товар \(productName.name) не найден в корзине")
    }
}

// create product
let milk = Product(name: "milk", price: 90)
let bread = Product(name: "bread", price: 50)
let eggs = Product(name: "eggs", price: 89.90)

// add store product
let store = Store(products: [milk, bread, eggs])

// print product price and index
store.printCatalog()

// remove product
store.cell(productName: milk)
store.cell(productName: milk)

// final store
store.printCatalog()
