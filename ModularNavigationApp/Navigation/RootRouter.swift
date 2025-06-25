//
//  RootRouter.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

/// An enum representing the high-level navigation routes for the app.
///
/// `RootRoute` is used by the `RootRouter` to determine which major flow should be active:
/// - `.auth`: The authentication flow (e.g., login or registration).
/// - `.main`: The main app content (e.g., after successful login).
enum RootRoute {
    case auth
    case main
}

/// A shared router that controls the root-level navigation of the app.
///
/// `RootRouter` is typically used in the top-level `App` to decide whether
/// the user should see the authentication flow or the main content flow. It publishes
/// changes to the `route` property, allowing SwiftUI views to respond reactively.
final class RootRouter: ObservableObject {
    /// The current top-level route of the app, determining which flow is presented.
    @Published var route: RootRoute = .auth
}
