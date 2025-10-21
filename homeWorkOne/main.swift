// ------------------------------- optional types -------------

// task_1

var name: String? = nil
name = "Максим"
print(name)


// task_2

var age: Int? = nil

if let userAge = age {
    print(userAge)
} else {
    print("Dозраст не указан")
}


// task_3

var nickname: String? = "ErrorNil"

if let errorNillNickName = nickname {
    print("Твой ник: \(errorNillNickName)")
} else {
    print("Ника нет")
}


// task_4

var email: String? = nil

if let emailOptional = email {
    print("Твой email: \(emailOptional)")
} else {
    print("email не задан")
}


// task_5

var nameFive: String? = "Boris"
var ageFive: Int? = 23
var cityFive: String? = "Rom"

print("Имя: \(nameFive ?? "Имя не указано")")
print("Возраст: \(ageFive ?? 0 )")
print("Город: \(cityFive ?? "Город не указан")")



// task_6

var score: Int? = 85

if let userScore = score {
    if userScore >= 80 {
        print("Отлично")
    } else if userScore >= 50 {
        print("Хорошо")
    } else {
        print("Нужно подтянуть")
    }
} else {
    print("Нет данных")
}


// task_7

var numberString: String? = "42"

if let numberStringInt = Int(numberString ?? "") {
    print("Число: \(numberStringInt)")
    print(type(of: numberStringInt))
} else {
    print("Некоректное значение")
}


// task_8

var day = 10

switch day {
case 1: print("Понедельник")
case 2: print("Вторник")
case 3: print("Среда")
default : print("День не распознан")
}


// task_9

var color = "ыва"

switch color {
case "red": print("Стой")
case "yellow": print("Жди")
case "green": print("Иди")
default: print("Неизвестный цвет")
}


// ----------------------------- Доп --------------------------

// task_1

var numberStringTwo: String? = "123"

if let numInt = Int(numberStringTwo ?? "") {
    print("Число: \(numInt)")
    print(type(of: numInt))
} else {
    print("Не удалось преобразовать")
}



// task_2

var userName: String? = "Alice"
var password: String? = nil


if let name = userName , let _ = password {  // я тут опустил переменную т.к она не используется и горит предупреждение
    print("Добро пожаловать, \(name)")
} else {
    print("Введите имя и пароль")
}


// task_3

var nameTwo: String? = "Bob"
var emailTwo: String? = nil
var country: String? = "Kazahstan"


if let nameOptional = nameTwo, let emailOptionalTwo = emailTwo, let countryOptional = country {
    print("Профиль: \(nameOptional), \(emailOptionalTwo), \(countryOptional)")
} else {
    print("Заполните все поля.")
}



