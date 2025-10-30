// свой тип и задать определённые значения

enum Operation: Character {
    case plus = "+"
    case minus = "-"
    case multiply = "*"
    case divide = "/"
}


func calculator(a: Int, b: Int, operating: Operation) -> Int {
    switch operating {
    case .plus:
        return a + b
    case .minus:
        return a - b
    case .multiply:
        return a * b
    case .divide:
        return a / b
    }
}

let res = calculator(a: 1, b: 2, operating: .plus)
print("res -> \(res)")




enum Screen {
    case register, login
}


func showScreen(screen: Screen) -> String {
    switch screen {
    case .register:
        return "Введите ваши данные"
    case .login:
        return "Спасибо, мы обрабатываем результат!"
    }
}

let output = showScreen(screen: .login)
print("output -> \(output)")



// rowValue


enum NetworkError: Int {
    case success = 200
    case notFound = 404
    case forbidden = 201
    case unknownError = 500
}


//let error: NetworkError = .success
//print("error.rawValue -> \(error.rawValue)")
//print("error.hashValue -> \(error.hashValue)")


func errorCheck(error: NetworkError){
    print("Error: \(error.rawValue)")
}

errorCheck(error: .unknownError)



enum CompassPoint: CaseIterable {
    case north, south, east, west
}

let allValue: [CompassPoint] = CompassPoint.allCases
print("allValue -> \(allValue)")



// ассоциированные значения

enum ScreenState {
    case loading
    case loaded(data: [String])
    case error(message: [String])
}


func renderScreen(state: ScreenState) {
    switch state {
    case .loading:
        print("Loading...")
    case .loaded(data: let data):
        print("Data loaded: \(data)")
    case .error(message: let message):
        print("Error: \(message)")
    }
}

renderScreen(state: .loaded(data: ["Maksim"]))


enum Page {
    case main
    case details (image: [String], tags: [String], description: [String])
}

let firstPage: Page = .details(image: ["img1", "img2"], tags: ["tag1", "tag2"], description: ["lorem ipsum"])
let secondPage: Page = .details(image: ["img3", "img4"], tags: ["tag3", "tag4"], description: ["lorem ipsum - 2"])


func showPage(page: Page) {
    switch page {
    case .main:
        print("Main page")
    case .details(image: let images, tags: let tags, description: let descriptions):
        print("Images: \(images)")
        print("Tags: \(tags)")
        print("Descriptions: \(descriptions)")
    }
}

showPage(page: .details(image: ["img1", "img2"], tags: ["tags1", "tags2"], description: ["Lorem ipsum - 2"]))


showPage(page: secondPage)



// -------------------------

enum Temperature {
    case celsius(Double)
    case fahrenheit(Double)
}


func convertToCelsius( temperatura: Temperature ) {
    switch temperatura {
    case .celsius(let value) where value > 35:
        print("Это слишком высокая температура")
        
    case .celsius(let value):
        print("температура \(value) градусов цельсия")
        
    case .fahrenheit(let value):
        print("температура \(value) градусов фаренгейт")
        
    }
}

let temp:Temperature = .celsius(36)
let faren:Temperature = .fahrenheit(40)


convertToCelsius(temperatura: temp)
convertToCelsius(temperatura: faren)

//convertToCelsius(fahrenheit: .celsius(30))



indirect enum State {
    case ok
    case err
    case stateValue(State)
}


let state:State = .stateValue(.stateValue(.err))


// Вложенный enum

enum Transport {
    enum CarType {
        case electric
        case petrol
    }
    
    case car (type: CarType)
    case bicycle
}


let transport: Transport = .car(type: .electric)


switch transport {
case .car(type: .electric):
    // code
    print("Эта машина электричка")
case .car(type: .petrol):
    // code
    print("Эта машина бензиновая")
case .bicycle:
    //
    print("Эта велосипед")
}

