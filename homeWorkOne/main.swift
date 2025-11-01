// task_1

struct Point {
    let x: Int
    let y: Int
}

let dot: Point = Point(x: 5, y: 7)
print("Координаты точки - x:\(dot.x) y:\(dot.y)")


// task_2

struct Rectangle {
    let width: Int
    let height: Int
    
    func area() -> Int {
        return width * height
    }
}

let rect: Rectangle = Rectangle(width: 3, height: 4)
let resultSquare = rect.area()
print("resultSquare -> \(resultSquare)")


// task_3

struct Student {
    let name: String
    let grade: Int
    
    
    func isBetter(than: Student) -> Bool {
        return self.grade > than.grade
    }
}

let studentIvan: Student = Student(name: "Ivan", grade: 92)
let studentPetr: Student = Student(name: "Petr", grade: 91)

print("Первый студент: \(studentIvan.name), и его оценка: \(studentIvan.grade)")
print("Второй студент: \(studentPetr.name), и его оценка: \(studentPetr.grade)")


if studentIvan.isBetter(than: studentPetr){
    print("\(studentIvan.name) учится лучше чем \(studentPetr.name)")
} else if studentPetr.isBetter(than: studentIvan){
    print("\(studentPetr.name) учится лучше чем \(studentIvan.name)")
} else {
    print("Студенты учатся одинаково хорошо")
}


// task_4

struct User {
    var name: String
    var email:String?
}

var userNoEmail: User = User(name: "Ivan")
var userEmail: User = User(name: "Petr", email: "petr@example.com")

if let email = userEmail.email {
    print("Email: \(email)")
} else {
    print("Email не указан")
}

print("userNoEmail -> \(userNoEmail)")


