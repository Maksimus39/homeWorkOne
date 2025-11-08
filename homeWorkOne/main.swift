// Абстракции (ООП)

import Foundation


// DI

protocol DataNetworkProtocol: AnyObject {
    func fetchData(url: String)
}

protocol FileStorageDataNetworkProtocol: DataNetworkProtocol {
    func uploadData(to url: String)
}

protocol CachDataNetworkProtocol: FileStorageDataNetworkProtocol {
    func getCacheData(for url: String)
}


class Network: DataNetworkProtocol {
    
    var text: String = "Hello world"
    func fetchData(url: String) {
        print("Fetching data from \(url)")
    }
}


class FileStorage: FileStorageDataNetworkProtocol {
    func uploadData(to url: String) {
        print("Hello data to \(url)")
    }
    
    func fetchData(url: String) {
        print("Hy i`am is company file storage to \(url)")
    }
}

// 1
var someData: FileStorageDataNetworkProtocol = FileStorage()
someData.uploadData(to: "www.google.com")
someData.fetchData(url: "www.microsoft.com")


// 2

var datas: [DataNetworkProtocol] = [Network(), FileStorage()]
//print("datas -> \(datas)")

for data in datas {
    data.fetchData(url: "www.apple.com ->")
}


class Model {
    
    var network: DataNetworkProtocol?
    
    init(network: DataNetworkProtocol) {
        self.network = network
    }
    
    func sendRequest() {
        network?.fetchData(url: "https://example.com")
    }
}


let network = Network()
let mockModel = Model(network: network)
mockModel.sendRequest()



// primer iz ui

protocol ReloadTableProtocolo {
    func reloadTable()
}

protocol SetConstraintProtocol {
    func setConstraint()
}

typealias CombinedProtocol = ReloadTableProtocolo & SetConstraintProtocol

class ViewController: CombinedProtocol {
   
    func reloadTable() {
        print("reloadTable")
    }
    
    func setConstraint() {
        print("setConstraint")
    }
}

let res: CombinedProtocol = ViewController()
res.reloadTable()
res.setConstraint()


// VIPER
// V - View
// I - iteractor
// P - Presenter
// E - Entities
// R - Router




// -------------------- EXTENSION -----------------------------

protocol ConnnectProtocol {
    func startConnection()
}

extension ConnnectProtocol {
    func startConnection() {
        print("startConnection protocol!!!")
    }
}

class User: ConnnectProtocol {
    func startConnection() {
        print("startConnection protocol!!! from class!!!")
    }
}

let user = User()
user.startConnection()



// -------------- standart protocol -------------

struct UserEquitable: Equatable, Comparable {
    static func < (lhs: UserEquitable, rhs: UserEquitable) -> Bool {
        lhs.age < rhs.age
    }
    
   
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var userOne = UserEquitable(name: "Maksim", age: 42)
var userTwo = UserEquitable(name: "Maksim", age: 39)


print(userOne == userTwo)
print(userOne > userTwo)


// Hachable

struct KeyType: Hashable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var soveDic: [KeyType: String]



// protocol Identifiable

struct Item: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var age: String
}


var item = Item(name: "Maksim", age: "42")
print("item -> \(item)")



// guard

class NetworkManager {
    func fetchData(url: String?, data: Data?){
        
        guard url != nil else {return}
        //
        //
        //
        //
        //
        guard data != nil else {return}
        //
        //
        //
        //
    }
}


// primer

func calculate(number: Int?) -> Int {
    if let number {
        return number * 2
    }
    return 0
}

print(calculate(number: 4))


func calculate2(number: Int?) -> Int {
    guard let number else {return 0}
    return number * 2
}


print(calculate2(number: 4))
