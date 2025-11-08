// task_1

protocol Plugin {
    func execute()
}

class LoggerPlus: Plugin{
    func execute() {
        print("Действие выполнено")
    }
}

class AnalysticsPlugin: Plugin{
    func execute() {
        print("Событие отправлено")
    }
}


class App{
   private var plugins: [Plugin] = []
    
    func addPlugin(_ plugin: Plugin) {
        plugins.append(plugin)
    }
    
    func start() {
        for plugin in plugins {
            plugin.execute()
        }
    }
}

let app = App()

// add plugin
app.addPlugin(LoggerPlus())
app.addPlugin(AnalysticsPlugin())

// plugin start
app.start()


// task_2

protocol NetworkServiceProtocol {
    func fetchData() -> String
}

class RealNetworkService: NetworkServiceProtocol {
    func fetchData() -> String {
        return "Data from network"
    }
}

class MockNetworkService: NetworkServiceProtocol {
    func fetchData() -> String {
        return "Data from mock"
    }
}


class ViewModel {
    private var networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
    
    func loadData() -> String {
        return networkService.fetchData()
    }
}


let realService = RealNetworkService()
let mockService = MockNetworkService()

let viewModelWithRealService = ViewModel(networkService: realService)
let viewModelWithMockService = ViewModel(networkService: mockService)

print(viewModelWithRealService.loadData())
print(viewModelWithMockService.loadData())


// task_3

protocol Movable {
    func moveForward()
    func moveBackward()
}

protocol Flyable: Movable {
    func fly()
}

typealias Combyne = Movable & Flyable

class Bird: Combyne {
    func moveForward() {
        print("Птица пошла вперёд")
    }
    func moveBackward() {
        print("Птица пошла назад")
    }
    func fly() {
        print("Птица полетела")
    }
}

let bird = Bird()
bird.moveForward()
bird.moveBackward()
bird.fly()
