// function

// DRY - не повторяй себя
// KISS -
// YAGNI -

let capitals = ["Kazakhstan":"Astana", "France":"Paris", "Japan":"Tokio"]

var newDict: [String:String] = [:]

for (key, value) in capitals {
    newDict[value] = key
}

print("newDict -> \(newDict)")




// 4 типа функции

// 1 - простая функция - ничего не принимает и ничего не возвращает

func randomElement(){
    print(Int.random(in: 0...100))
}

randomElement()


// ------------ 2 - принимает данные, но ничего не возвращает

//let login: String = "login"
//let password:String = "qwerty"

func loginUser ( login:String, password:String ) {
    if login == "admin" &&  password == "qwerty" {
        print("It` is Admin")
    } else {
        print("Error")
    }
}

loginUser ( login: "admin", password: "qwerty" )



func changeKeys (dict: [String:String]) {
    var newDict: [String:String] = [:]
    
    for (key, value) in dict {
        newDict[value] = key
    }
    
    print(newDict)
}

let capitalsTwo = ["Kazakhstan":"Astana", "France":"Paris", "Japan":"Tokio"]

changeKeys(dict: capitalsTwo)



// ------- 3 - функция принимает и возвращает данные

func validatePassword (password: String) -> Bool {
    // >8
    // 1
    // -> true/false
    
    if password.count >= 8 && password.contains("1") {
        return true
    } else {
        return false
    }
}


let isValid = validatePassword( password: "12345678" )
if isValid {
    print("isValid -> \(isValid)")
}




// -------- 4 - ничего не принимает но что то возвращает


func randomInt () -> Int {
    return Int.random(in: 0..<10)
}

let res = randomInt()
print("res -> \(res)")



var isUserOnline = true
func isLogin () -> Bool {
    
    return !isUserOnline
}


let r = isLogin()
print("r -> \(r)")



// Создай метод который возвращает что - то 
