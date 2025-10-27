// -------------- homeWorkFunction --------------


// Простой уровень

// task_1

func sumOfArray (arg: [Int]) -> Int {
    
    var res: Int = 0
    for item in arg {
        res += item
    }
    return res
    
}


let resultSumArray = sumOfArray(arg: [1, 2, 3])
print("resultSumArray -> \(resultSumArray)")



// task_2

func countEvenNumbers (arg: [Int]) -> Int {
    var item: Int = 0
    
    for i in arg {
        i % 2 == 0 ? item += 1 : nil // насчёт nill я не уверен, т.е сейчас это работает а как будет с интерфейсом я не знаю
    }
    return item
}

let evenNumbersCount = countEvenNumbers(arg: [1, 2, 3, 4])
print("evenNumbersCount -> \(evenNumbersCount)")


// task_3


func lenghtWord (arg: [String]) -> [String: Int] {
    
    var item: [String: Int] = [:]
    
    for i in arg {
        item[i] = i.count
    }
    return item
}


let resLenght = lenghtWord(arg: ["Swiwt", "IOS"])
print("resLenght -> \(resLenght)")




// -------------- Средний уровень ---------------


// task_1

func countRepeat (arg: [Int]) -> [Int:Int] {
    var item: [Int: Int] = [:]
    
    for i in arg {
        item[i] = (item[i] ?? 0) + 1
    }
    
    return item
}

let count = countRepeat(arg: [1, 2, 2, 3, 1])
print("count -> \(count)")



// task_2

func arrMerge (a: [String], b: [String]) -> [String] {
    var res: [String] = []
    res = a + b
    return Array(Set(res))
}


let merge = arrMerge(a: ["a", "b", "c"], b: ["b", "c", "d"])
print("merge -> \(merge)")



// task_3


func countWord(arg: [String]) -> String {
    var countDict: [String: Int] = [:]
    var item = ""
    

    for i in arg {
        if let currentCount = countDict[i] {
            countDict[i] = currentCount + 1
        } else {
            countDict[i] = 1
        }
    }
    
    var maxCount = 0
    for (word, count) in countDict {
        if count > maxCount {
            maxCount = count
            item = word
        }
    }
    
    return item
}

let word = countWord(arg: ["apple", "banana", "apple", "orange"])
print("word -> \(word)")
