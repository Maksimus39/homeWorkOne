// jeneric


var arrString: [String] = []
var arrInt: [Int] = []


// String
func printItem(item: String){
    print("Item",item )
}

printItem(item: "Maksim")


// Int
func printItem(item: Int){
    print("Item",item )
}

printItem(item: 10)


// Jeneric

func printItem<T>(item: T){
    print( "itemJeneric , \(item)" )
}

printItem(item: 22)
printItem(item: "Larisa")


// struct

struct Person {}


let p = Person()

printItem(item: p)



//

// 1
func isEqual<T: Equatable>(a: T, b: T) -> Bool {
    a == b
}

// 2

func isEqualTwo<T>(a: T, b: T) -> Bool where T: Comparable {
    a == b
}

let res = isEqual(a: 22, b: 12)
print("res -> \(res)")
 
let resTwo = isEqualTwo(a: 22, b: 12)
print("resTwo -> \(resTwo)")


//

struct Box<T>{
    var item: T
}

let boxInt = Box(item: 42)
let boxString = Box(item: "Maksim")

print(boxInt.item)
print(boxString.item)


struct Pair<T>{
    var first: T
    var second: T
    
    func swapped() -> Pair<T> {
        Pair(first: second, second: first)
    }
}

let pairInt = Pair(first: "42", second: "39")
print(pairInt.swapped())



// class

class Stack<Element> {
    var item: [Element]
    
    init(item: [Element]) {
        self.item = item
    }
    
    func push(_ newItem: Element) {
        item.append(newItem)
    }
    
    func pop() -> Element? {
        item.popLast()
    }
}

let intStack = Stack(item: [1,2,3])
intStack.push(4)
print(intStack.item)

let stringStack = Stack(item: ["a", "b", "d"])
stringStack.push("c")
print(stringStack.item)
stringStack.pop()
stringStack.pop()
stringStack.pop()
print(stringStack.item)


// Ассоциативный тип

protocol Storage {
    associatedtype T
    
    func add(_ item: T)
    func remove(_ item: T) -> Bool
    func contains(_ item: T) -> Bool
}

class MemoryStorage: Storage {
    func remove(_ item: Int) -> Bool {
        <#code#>
    }
    
    func contains(_ item: Int) -> Bool {
        <#code#>
    }
    
   
    func add(_ item: Int) {
        <#code#>
    }
}





