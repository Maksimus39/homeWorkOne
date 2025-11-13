// task_1

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("person deinit --->>>")
    }
}

// weak - create strong link
var person: Person? = Person(name: "John")
var personCopy = person
var personCopyTwo = person


// delete strong link
person = nil
personCopy = nil
personCopyTwo = nil



// task_2

class PersonTwo {
    var name: String
    var pet: Dog?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("PersonTwo deinit --->>>")
    }
}

class Dog {
    var name: String
    // strong
    //var owner: PersonTwo?
    
    // weak
    weak   var owner: PersonTwo?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("dog deinit")
    }
}

// strong - при сильной ссылке мы не зачистили память
var personOwner: PersonTwo? = PersonTwo(name: "Wlad")
var dog: Dog? = Dog(name: "Red")

personOwner?.pet = dog
dog?.owner = personOwner

personOwner = nil     // закомментировать для теста
dog = nil             // тестирования weak ссылок
// ----------------------------------------------------------------------------------------------------------

// weak
var personOwnerCopy: PersonTwo? = PersonTwo(name: "Ivan")
var dogCopyName: Dog? = Dog(name: "Star")


personOwnerCopy?.pet = dogCopyName
dogCopyName?.owner = personOwnerCopy

personOwnerCopy = nil    // При создании слабой ссылки в двух связных
dogCopyName = nil        // классах мы можем вызвать deinit в классе и затереть ссылки

// ----------------------------------------------------------------------------------------------------------


// task_3


// с weak self
class Downloader {
    var status: Bool = true
    var onComplete: (()->Void)?
    func start(){
        onComplete = { [weak self] in
            guard let self else {return}
            print(self.status)
        }
    }
    
    deinit {
        print("downloader deinit")
    }
}

var dowload: Downloader? = Downloader()
dowload?.start()
dowload = nil


// без weak self , так как кложур тоже относится к референс тайп он не может вырваться без записи [weak self] in
// и поэтому объект имеет утечку памяти

class DownloaderVersionTwo {
    var status: Bool = true
    var onComplete: (()->Void)?
    func start(){
        onComplete = {
            print(self.status)
        }
    }
    
    deinit {
        print("downloader version two deinit")
    }
}

var dowloadVersionTwo: DownloaderVersionTwo? = DownloaderVersionTwo()
dowloadVersionTwo?.start()
dowloadVersionTwo = nil
