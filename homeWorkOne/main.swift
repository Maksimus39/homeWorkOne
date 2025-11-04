import Foundation


class Product {
    var name: String
    var price: Double
    var isAvailable: Bool
    
    init(name: String, price: Double, isAvailable: Bool) {
        self.name = name
        self.price = price
        self.isAvailable = isAvailable
    }
}


var product = Product(name: "zxc", price: 10, isAvailable: true)


print(product.name)


var person: Product? = Product(name: "asd", price: 3, isAvailable: true)

if let person {
    print(person.name)
}

// ------------------------ extension ---------------------------------

extension Product {
    var description: String{
        return "\(name), \(price)"
    }
    
    func getPrice() -> Double {
        return price * 13
    }
}

var res = product.description
var res2 = product.getPrice()

print("res -> \(res)")
print("res2 -> \(res2)")


extension Product {
    // MARK: - в extension нельзя ставить свойства var let но можно вычисляемые get set
    
    // var count: Number
    
    
    
    // MARK: second parth
    func getPrice2() -> Double {
        return price * 3.0
    }
}

var priceProduct = product.getPrice2()

print("priceProduct -> \(priceProduct)")


// extension type

func sqrt(number: Int) -> Int {
    number * number
}


extension Int {
    func sqrt() -> Int {
        self * self
    }
    
    func random() -> Int {
        return Int.random(in: self...100)
    }
    
    func isOddValue() -> Bool {
        return self % 2 == 0
    }
}

var res10 = 10.sqrt()
print("res10 -> \(res10)")

var res1 = 1.random()
print("res1 -> \(res1)")


var res6 = 6.isOddValue()
print("res6 -> \(res6)")



// protocol -> SOLID вечером посмотреть и попробовать понять


protocol NetworkProtocol {
    // svoystvo
    var url: String { get set }
    
    
    // method
    func sendRequest() -> String
    func getData() -> String
}

// под protocol подпишутся class struct enum

class Network: NetworkProtocol {
    var url: String = ""
    
    func sendRequest() -> String {
        "sendRequest"
    }
    
    func getData() -> String {
        "getData"
    }
}

var sendRequest = Network()

print(sendRequest.sendRequest())
print(sendRequest.getData())


class MockServer: NetworkProtocol {
    var url: String = ""
    
    func sendRequest() -> String {
        "sendRequest mock"
    }
    
    func getData() -> String {
        "getData mock"
    }
}

var netWork = Network()
var mockServer = MockServer()
netWork.url = " -> www.google.com <- "

print(netWork.url)
print(netWork.getData() == mockServer.getData())
print(netWork.sendRequest() == mockServer.sendRequest())


class ViewModel {
    var service: NetworkProtocol
    
    init(service: NetworkProtocol) {
        self.service = service
    }
    
    func load() -> String {
        service.getData()
    }
}

var viewModel = ViewModel(service: MockServer())
print(viewModel.load())

