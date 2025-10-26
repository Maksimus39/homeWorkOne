// task_1

let numbers = [1, 2, 3, 2, 4, 1, 5]
print("numbers -> \(numbers)")

let uniqueNumbers = Set(numbers)
print("uniqueNumbers -> \(uniqueNumbers)")



// task_2

let a = [1, 2, 3, 4]
let b = [3, 4, 5, 6]

let combinedArray = a + b

let uniqueElementsSet = Set(combinedArray)
print("uniqueElementsSet -> \(uniqueElementsSet)")



// task_3

let first:Set = [1, 2, 3, 4]
let second:Set = [3, 4, 5, 6]

let symmetricDifference = first.symmetricDifference(second)
print("symmetricDifference -> \(symmetricDifference)")


// task_4

let text = "Hello, world!"
let uniqueLetters = Set(text.lowercased().filter{ $0.isLetter })
print("uniqueLetters -> \(uniqueLetters)")



// ----------------------- Dictionary ---------------------------------

// task_1

let capitals = ["Kazakhstan":"Astana", "France":"Paris", "Japan":"Tokio"]

var newDictionary: [String: String] = [:]

for (key, value) in capitals {
    newDictionary[value] = key
}

print("newDictionary -> \(newDictionary)")


// task_2


let words = ["apple", "banana", "avocado", "blueberry", "cherry", "apricot"]

let groupDict = Dictionary(grouping: words, by: { $0.first! })
print("groupDict -> \(groupDict)")



// task_3

let textTwo = "banana"

var charCount: [Character: Int] = [:]

for char in textTwo {
    charCount[char, default: 0] += 1
}

print("charCount -> \(charCount)")



// task_4

let votes = ["Alice", "Bob", "Alice", "Charlie", "Bob", "Alice"]

var voteCount: [String: Int] = [:]

for vote in votes {
    voteCount[vote, default: 0] += 1
}

print("voteCount -> \(voteCount)")


// task_5

let wordsTwo = ["cat", "dog", "elephant", "bat", "apple"]

var letterCount: [Int: [String]] = [:]

letterCount = Dictionary(grouping: wordsTwo) { $0.count }
print("letterCount -> \(letterCount)")
