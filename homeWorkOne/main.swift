// Struct -> value type
// Память

var age: Int

func someFunc(){
    let _: String = "User"
}

someFunc()

// struct -> является объектом

struct User {
    // свойства
    
    var name: String
    var surname: String
    var age: UInt8
    var hp: Int
    
    // методы
    
    func run(speed: Float) {
        print("User \(name) бежит со скоростью \(speed) км/ч")
    }
    
    func fight(damage: Int) {
        if hp < 90 {
            print("Удар был вполсилы \(damage / 2)")
        } else {
            print("Удар был со всей силы \(damage)")
        }
    }
    
    func speak(str: String) -> [Character] {
        var char: [Character] = []
        for it in str{
            char.append(it)
        }
        return char
    }
    
    func getFullName() -> String {
        return name + " " + surname
    }
    
    mutating func setNewName(newName: String){
        self.name = newName
    }
}

// экземпляр User
var admin: User = User(name: "Maksim", surname: "Minakov", age: 42, hp: 80)
print("admin -> \(admin)")
admin.run(speed: 10)
admin.fight(damage: 10)
let fullName =  admin.getFullName()
print("fullName -> \(fullName)")
admin.age = 43
print("admin -> \(admin)")
admin.setNewName(newName: "Max")
print(admin)


// --------
let manager: User = User(name: "Larisa", surname: "Suslova", age: 39, hp: 100)
print("manager -> \(manager)")
manager.run(speed: 11)
manager.fight(damage: 10)
let speak = manager.speak(str: "Hello")
print("speak -> \(speak)")
let fullNameLarisa = manager.getFullName()
print("fullNameLarisa -> \(fullNameLarisa)")


// -----------

var users: [User] = [admin, manager]
print("users -> \(users.count)")

for user in users {
    print(user.getFullName())
}





func someFunction() {
    defer {
        // Этот код выполнится перед выходом из функции
        print("Выполняем cleanup")
    }
    
    // Основной код функции
    print("Выполняем основную работу")
}

someFunction()
