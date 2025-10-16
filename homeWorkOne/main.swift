// ------------------------------- optional types -------------

// task_1

var numberString:String? = "123"

if let numInt = Int(numberString ?? "") {
    print("Число: \(numInt)")
    print(type(of: numInt))
} else {
    print("Не удалось преобразовать")
}



// task_2

var userName:String? = "Alice"
var password:String? = nil


if let name = userName , let _ = password {  // я тут опустил переменную т.к она не используется и горит предупреждение
    print("Добро пожаловать, \(name)")
} else {
    print("Введите имя и пароль")
}


// task_3

var name:String? = "Bob"
var email:String? = nil
var country:String? = "Kazahstan"


if let nameOptional = name, let emailOptional = email, let countryOptional = country {
    print("Профиль: \(nameOptional), \(emailOptional), \(countryOptional)")
} else {
    print("Заполните все поля.")
}



