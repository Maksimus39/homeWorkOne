// task_1

enum Diection {
    case north
    case south
    case east
    case west
}

func move(direction: Diection){
    switch direction {
    case .north:
        print("Go up")
    case .south:
        print("Go down")
    case .east:
        print("Go right")
    case .west:
        print("Go left")
    }
}

move(direction: .north)
move(direction: .south)
move(direction: .east)
move(direction: .west)



// task_2

enum Gamelevel: String {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

func startGame( level: String ){
    if let gameLwl = Gamelevel(rawValue: level){
        switch gameLwl {
        case .easy:
            print("Это лёгкий уровень")
        case .medium:
            print("Это средний уровень")
        case .hard:
            print("Это сложный уровень")
        }
    } else {
        print("Unknown lewel")
    }
}

startGame(level: "Easy")
startGame(level: "Medium")
startGame(level: "Hard")

startGame(level: "Advanced lewel")



// task_3

enum Payment {
    case cash(Double)
    case card(number: String, amount: Double)
    case crypto(wallet: String, amount: Double)
}


func process(payment: Payment){
    switch payment {
    case .cash(let double):
        print("У тебя наличными \(double)$ долларов ")
    case .card(let number, let amount):
        print("У тебя номер карты \(number), и на ней \(amount)$ долларов ")
    case .crypto(let wallet, let amount):
        print("У тебя на цифровом активе \(wallet), капитализация составляет \(amount)$ долларов ")
    }
}

process(payment: .cash(100_000))
process(payment: .card(number: "12345", amount: 150_000))
process(payment: .crypto(wallet: "холодный кошелёк", amount: 200_000))



// task_4

enum AppEvent {
    case login(user: String)
    case logout(user: String)
    case error(message: String)
    case purchase(user: String, amount: Double)
}

func autentification(input: AppEvent){
    switch input {
    case .login(let user):
        print("Пользователь \(user) вошёл в приложение")
    case .logout(let user):
        print("Пользователь \(user) вышел из приложения")
    case .error(let message):
        print("Внимание! \(message)")
    case .purchase(_, let amount) where amount > 1000:
        print("Big spender")
    case .purchase(let user, let amount):
        print("Пользователь \(user), произвёл покупку на сумму \(amount) рублей")
    }
}

autentification(input: .login(user: "Джон"))
autentification(input: .logout(user: "Майкл"))
autentification(input: .error(message: "Завершило работу экстренно"))
autentification(input: .purchase(user: "Inna", amount: 999))
autentification(input: .purchase(user: "Inna", amount: 10_000))


// task_5

enum Notification {
    case message(user: String, text: String)
    case friendRequest(user: String)
    case system(message: String)
}

func handle(notification: Notification){
    switch notification {
    case .message(let user, let text):
        print("Пользователь \(user) введите \(text)")
    case .friendRequest(let user):
        print("Пользователю \(user) пришло сообщение")
    case .system(let message):
        print("Вам \(message)")
    }
}

handle(notification: .message(user: "Ivan", text: "Пароль"))
handle(notification: .friendRequest(user: "Marina"))
handle(notification: .system(message: "уведомление"))



// task_6

enum DownloadResult {
    case success(filePath: String, size: Int)
    case failure(error: String)
}

func downloadFile(complection: DownloadResult){
    switch complection {
    case .success(let filePath, let size):
        print("Путь к файлу \(filePath), и его размер составляет \(size) kb")
    case .failure(let error):
        print("\(error) загрузки")
    }
}

downloadFile(complection: .success(filePath: "/../../book", size: 3))
downloadFile(complection: .failure(error: "Ошибка"))
