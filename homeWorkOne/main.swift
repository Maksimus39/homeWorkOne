// task_1

// version_1
let hello = {print("Hello, world!")}
hello()


// version_2 модифицировал задание
let closure:(_ str: String) -> String = {$0}
print(closure("Hello, world!"))


// task_2

let greet:(String) -> Void = {print("Hello, \($0)!")}
greet("Maksim")



// task_3

let add:(Int, Int) -> Int = {$0 + $1}
print(add(2, 3))


// task_4

func doSomething(completionHandler: ()->Void){
    completionHandler()
}

doSomething {
    print("Действие выполнено")
}


// task_5

func squareClosure(to number: Int, completionHandler:(Int) -> Int){
    print(completionHandler(number))
}

squareClosure(to: 3, completionHandler: {$0 * $0})
squareClosure(to: 9, completionHandler: {$0 * $0})
squareClosure(to: 12, completionHandler: {$0 * $0})

