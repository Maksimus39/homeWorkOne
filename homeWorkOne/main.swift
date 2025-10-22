// task_1

var numberArray: [Int] = [10, 20, 30, 40, 50]

for element in numberArray {
    print(element)
}



// task_2

numberArray.append(60)
numberArray.insert(5, at: 0)
print(numberArray)



// task_3

let lastElement = numberArray.popLast()
if let lastElement {
    print("lastElement -> \(lastElement)")
}
print(numberArray) // -> Да, мы видим что последний элемент удалён



// task_4

print(numberArray[0])
print(numberArray[numberArray.count - 1])


// task_5

var sum = 0
for number in numberArray {
    sum += number
    print(sum)
}


// task_6

let isNumberArray = numberArray.contains(10)
print(isNumberArray)                           // true



// task_7

print(numberArray.count)



// task_8

print("numberArray -> \(numberArray)")
numberArray[2] = 999
print("numberArray -> \(numberArray)")



// -------------------------------------------- PARTH TWO ---------------------------


// task_1

let fruits = ["banana", "orange", "apple", "kiwi"]

fruits.contains("apple")
? print("YES")
: print("NO")


// task_2

print(fruits.sorted(by: <))

/*
 
 sorted() возвращает новый массив, исходный не изменяется
 Если нужна сортировка на месте, используйте sort() (без возвращаемого значения)
 
 */



// task_3

let filterFruitsArray = fruits.filter{ $0.count > 5 }
print("Фрукты длиной более 5ти символов -> \(filterFruitsArray)")



// task_4

var str = "Hello World!"

let chars = Array(str.lowercased())
let reversedChars = chars.reversed()

print(chars == Array(reversedChars))



// task_5

let numArray = [1, 3, 2, 5, 6, 7, 8, 3, 4, 5, 6, 7, 9, 0, 1, 2, 3, 5, 7, 3]
let countOfThree = numArray.filter{ $0 == 3 }.count
print("Число 3 встречается в массиве \(countOfThree) раз")



// task_6

let filterArray = numArray.filter{ $0 > 5}
print(filterArray)


// task_7

let arr = [1, 2, 4, 10, 8, 16]

var temp = 0
for number in arr {
    temp += number
    print(temp)
}
