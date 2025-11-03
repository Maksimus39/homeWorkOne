class Netvork {
    var url: String
    
    func sendRequest() -> String {
        return "Data"
    }
    
    init(startUrl: String) {
        self.url = startUrl
    }
}


let classNetwork = Netvork(startUrl: "www.google.com")

let newNetwork = classNetwork
newNetwork.url = "apple.com"

print("newNetwork.url -> \(newNetwork.url)")
print("classNetwork.url -> \(classNetwork.url)")




// ------------------------------------

class LoginManager {
    var name: String
    var password: String
    var email: String
    
    init(name: String, password: String, email: String) {
        self.name = name
        self.password = password
        self.email = email
    }
    
    
    func registration(){
        //
    }
    
    func login(email: String, pswd: String) -> Bool {
        email == self.email && pswd == self.password
    }
}

class RegView {
    var loginManager = LoginManager(name: "1", password: "2", email: "3")
    
    
    func navToLogin(){
        _ = LoginView(loginManager: loginManager)
    }
}

class LoginView {
    var loginManager: LoginManager
    
    init(loginManager: LoginManager) {
        self.loginManager = loginManager
    }
    
    func checkLogin(email: String, pswd: String){
        print(loginManager.login(email: email, pswd: pswd))
    }
}

// -----------------------------------

enum TextFieldType {
    case normal, custom, fill
}

class UITextField {
    var text: String?
    var type: TextFieldType
    
    init(text: String?, type: TextFieldType) {
        self.text = text
        self.type = type
    }
    
    init(type: TextFieldType){
        self.type = type
    }
    
    func setupTextField(){
        switch type {
        case .normal:
            print("normall")
        case .custom:
            print("custom")
        case .fill:
            print("fill")
        }
    }
}

var textField = UITextField(type: .normal)
print("textField.type -> \(textField.type)")


// 1 - ссылочный тип - экземпляры не копируются а передаются по ссылке
// 2 - обязательный инит
// 3 - можем наследовать классы

import Foundation

class Session {
    var id: String
    var date: Date
    
    init(id: String, date: Date) {
        self.id = id
        self.date = date
    }
    
    func start(){
        print("start session \(date)")
    }
    
    func stop(){
        print("stop session \(date)")
    }
}

var mainSession = Session(id: "123", date: Date())
mainSession.start()
mainSession.stop()


final class CustomSession: Session {
    
    var pauseDate: Date
    
    init(pauseDate: Date, id: String, date: Date) {
        // 1. сначала проинициализировать свойства дочернего а потом родителя
        self.pauseDate = pauseDate
        
        // 2. вызови init родителя (id: String, date: Date)
        super.init(id: id, date: date)
    }
    
    override  func start(){            // переопределение функции в дочернем классе с помощью ключевого слова ovveride
        print("start session override \(date)")
    }
    
    func pause() {
        print("pause")
    }
}

let customSession = CustomSession(pauseDate: Date(), id: "123", date: Date())
customSession.start()
customSession.stop()
customSession.pause()
