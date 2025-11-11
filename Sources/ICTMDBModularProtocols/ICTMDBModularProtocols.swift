// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

// MARK: - Home Module Protocol
/// Defines the contract for creating the Home module’s view controller.
/// Used to assemble and return the main screen of the application.
public protocol HomeModuleProtocol {
    
    /// Creates and returns the Home module’s main view controller.
    /// - Returns: A configured `UIViewController` representing the Home screen.
    func createHomeModule() -> UIViewController
}

// MARK: - All List Module Protocol
/// Represents the type of list to be displayed in the All List module.
/// For example, popular TV shows or shows airing today.
public enum AllListType {
    case popular
    case airingToday
}

/// A protocol that defines how to create the All List module
/// based on a given list type (e.g., popular or airing today).
public protocol AllListModuleProtocol {
    
    ///Creates and returns a configured All List module for the given type.
    /// - Parameter type: The list type (e.g., `.popular` or `.airingToday`).
    /// - Returns: A `UIViewController` configured to display the corresponding list.
    func createAllListModule(type: AllListType) -> UIViewController
}

// MARK: - TV Show Detail Module Protocol
/// A protocol responsible for creating and returning
/// the detail screen of a selected TV show.
public protocol TvShowDetailProtocol {
    
    /// Creates and returns the detail view controller for a TV show.
    /// - Parameter id: The unique identifier of the TV show (optional).
    /// - Returns: A configured `UIViewController` displaying the TV show details.
    func createTvShowDetailModule(id: Int?) -> UIViewController
}
