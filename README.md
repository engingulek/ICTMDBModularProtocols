# ICTMDBModularProtocols
A Swift package providing a modular architecture for building TV show apps in iOS. This package defines protocols for creating and assembling feature modules like Home, TV show lists, and TV show details. It allows developers to build apps with clean, reusable, and testable modules.

## Module Protocols

### HomeModuleProtocol
Used to assemble and return the main screen of the application.
```swift
public protocol HomeModuleProtocol {
    func createHomeModule() -> UIViewController
}
```

### All List Module
Displays TV shows based on the selected list type (.popular or .airingToday).
```swift
public enum AllListType {
    case popular
    case airingToday
}

public protocol AllListModuleProtocol {
    func createAllListModule(type: AllListType) -> UIViewController
}

```

### TV Show Detail Module
Displays detailed information about a selected TV show.
```swift
public protocol TvShowDetailProtocol {
    func createTvShowDetailModule(id: Int?) -> UIViewController
}
```

### Installation

```swift
dependencies: [
    .package(url: "https://github.com/your-username/ModularTVShowPackage.git", from: "0.0.1")
]
```

### Base App

https://github.com/engingulek/ICTMDBApp






