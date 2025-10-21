// Массивы
// Циклы

// Массив это упорядоченный набор данных

var user: String = "Oleg"

var users: [String] = ["Oleg", "Petya", "Sasha"]

print(users)

users.append("Ivan")
print(users)


var symbol: [Character] = ["O", "l", "e", "g"] // index = count - 1
print(type(of: symbol))


// add element

users.append("Islam")


// in index

users.insert("Diman", at: 1)
print(users)


//  delete index

users.remove(at: 2)
print("users -> \(users)")


// find and delete name Oleg

if let index = users.firstIndex(of: "Oleg") {
    users.remove(at: index)
}
print("users -> \(users)")


// reversed

let reversedArray = users.reversed()
print("reversedArray -> \(reversedArray.first!)")


// polindrom

let polindrom: [Character] = ["a", "n", "n", "a"]
 
if polindrom == polindrom.reversed(){
    print("Yes")
} else {
    print("No")
}




// ------------------------------- циклы ----------------------------

for us in users {
    print("us -> \(us)")
}


// while

let str:String = "A роза упала на лапу Азора"

// полиндром

let reversedStr = str.reversed()

var strArray: [Character] = []

for item in str {
    strArray.append(item)
}

print(strArray)
