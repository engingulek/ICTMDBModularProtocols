// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

// MARK: - Home Module Protocol
/// Defines the contract for creating the Home module's view.
/// Used to assemble and return the primary entry point of the application.
public protocol HomeModuleProtocol {
    
    /// Creates and returns the main view of the Home module.
    /// - Returns: A configured SwiftUI `AnyView` representing the Home screen.
    func createHomeModule() -> AnyView
}

// MARK: - All List Module Protocol
/// Represents the type of list to be displayed in the All List module.
/// For example, popular TV shows or shows airing today.
public enum AllListType {
    case popular
    case airingToday
}

/// A protocol that defines how to create the All List module
/// based on a specific list type (e.g., popular or airing today).
public protocol AllListModuleProtocol {
    
    /// Creates and returns a configured All List view for the given type.
    /// - Parameter type: The list category (e.g., `.popular` or `.airingToday`).
    /// - Returns: A SwiftUI `AnyView` configured to display the corresponding list.
    func createAllListModule(type: AllListType) -> AnyView
}

// MARK: - TV Show Detail Module Protocol
/// A protocol responsible for creating and returning
/// the detail view for a specific TV show.
public protocol TvShowDetailProtocol {
    
    /// Creates and returns the detail view for a TV show.
    /// - Parameter id: The unique identifier of the TV show (optional).
    /// - Returns: A configured SwiftUI `AnyView` displaying the TV show details.
    func createTvShowDetailModule(id: Int?) -> AnyView
}
