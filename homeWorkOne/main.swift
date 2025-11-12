// ARC - работает с reference type class closure function


class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("person deinit")
    }
}

// strong
// weak

var user: Person? = Person(name: "John") // link 1
weak var user2: Person? = user
weak var user3 = user2                        // link2 == link1
user = nil                               // delete link1
//user2 = nil                            // delete link2
//user3 = nil

// ARC - если на экзземпляр не ведёт ни одна СИЛЬНАЯ ссылка, то объект удаляется из памяти
// Если на экземпляр ведёт хотябы одна сильная ссылка то объект не удаляется



// ----------------------------------------------------------------


class Owner {
    var name: String
    var car: Car?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("owner deinit")
    }
}


class Car {
    var model: String
    weak var owner: Owner?
    
    init(model: String) {
        self.model = model
    }
    
    deinit {
        print("car deinit")
    }
}

var owner:Owner? = Owner(name: "John")
var car:Car? = Car(model: "X5")

owner?.car = car
car?.owner = owner

owner = nil
car = nil



// --------------------------------------------------------------------


class ViewController {
    var name: String = "Maksim"
    var printName: (()->Void)?
    
    func setup() {
        printName = { [weak self] in
            guard let self else {return}
            print(self.name)
        } // heap
    }
    
    deinit {
        print("deinit ViewController")
    }
}

var view:ViewController? = ViewController() // 1
view?.setup()                               // 2
view?.printName?()

view = nil


// ------------------------------------------------------

class Network {
    func sendReq(completion: (String) -> Void ){
        completion("some data")
    }
}

class ViewModel {
    var network = Network()
    var data: String = ""
    
    func reg(){
        network.sendReq { data in
            self.data = data
        }
    }
    
    deinit {
        print("ViewModel deinit  ----->")
    }
}

var vm: ViewModel? = ViewModel()
vm?.reg()
print(vm?.data ?? "")
vm = nil


