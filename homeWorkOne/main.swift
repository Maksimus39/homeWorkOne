// closure замыкания лямбда функции

func doSome(){
    print("Hello")
}

let a = doSome
a()


//

func calc(num: Int) -> Int {
    return num + num
}

var a2 = calc(num: 4)
print(a2)


// v1
var calVal: (Int) -> Int = { num in
    return num * 100
}

// v2
var calVal2: (Int) -> Int = { num in
    num * 100
}

// 3

var calVal3: (Int) -> Int = { $0 * $0 }


//print(calVal(5))

// 4

var calVal4: (Int) -> Int = { $0 * $0 }

func test(closure: (Int) -> Int){
    print(closure(200))
}

test(closure: calVal3)

test { num in
    let random = Int.random(in: 1...100)
    return num * random
}

func closureName(name: String, closure: (Int) -> Int){
    let random = Int.random(in: 0...100)
    print(name.uppercased(), closure(random))
}

closureName(name: "Maksim") { num in
    return num * 2
}



// primer

func chesIsOdd(number: [Int], completionHandler: (Int) -> Bool) -> [Int] {
    var numPlus: [Int] = []
    
    number.forEach { i in
        if completionHandler(i) {
            numPlus.append(i)
        }
    }
    return numPlus
}

var numArr = [1,2,3,4,5,6,7,8,9,10]
numArr.sort { $0 > $1 }

let resultPlusArray = chesIsOdd(number: numArr, completionHandler: { $0 % 2 == 0 })
let resultMinusArray = chesIsOdd(number: numArr, completionHandler: { $0 % 2 != 0 })


print("resultPlusArray -> \(resultPlusArray)")
print("resultMinusArray -> \(resultMinusArray)")
print(numArr)
