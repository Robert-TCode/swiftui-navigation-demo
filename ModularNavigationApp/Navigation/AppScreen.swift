//
//  AppScreen.swift
//  ModularNavigationApp
//
//  Created by TCode on 24/6/25.
//

import SwiftUI

/// A base protocol for all screens used in the app.
///
/// It allows for easier navigation stack identification and management.
/// The `name` property is used for user-friendly naming and tracking events.
protocol AppScreen: Hashable {
    var name: String { get }
}

/// A protocol that defines an app screen capable of building its associated SwiftUI `View` with navigation context.
///
/// `AppScreenBuildable` extends `AppScreen` and adds the ability for a screen type (typically an enum case)
/// to generate its corresponding SwiftUI view using an external navigation handler or coordinator.
///
/// This protocol supports modular, strongly-typed navigation flows by tightly coupling each screen
/// with the view it represents and the coordinator it needs for navigation actions.
///
/// ### Associated Types:
/// - `Navigator`: A type that represents the navigation handler for this screen (usually a protocol like `LiveNavigationHandling`).
/// - `Body`: The SwiftUI view type that this screen produces. Must conform to `View`.
///
/// - Note: The `buildView` method must return a `View` using SwiftUI's `@ViewBuilder`, enabling flexible composition.
protocol AppScreenBuildable: AppScreen {
    /// The type of the navigation handler used to construct this screen's view.
    associatedtype Navigator

    /// The type of the SwiftUI view produced by this screen.
    associatedtype Body: View

    /// Constructs the view for this screen using the provided navigation handler.
    ///
    /// - Parameter navigator: An instance that conforms to the required `Navigator` type,
    ///   used to coordinate navigation from within the view.
    /// - Returns: A SwiftUI view representing the content of the screen.
    @ViewBuilder
    func buildView(navigator: Navigator) -> Body
}
