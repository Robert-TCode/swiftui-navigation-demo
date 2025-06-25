//
//  ModularNavigationAppApp.swift
//  ModularNavigationApp
//
//  Created by TCode on 20/6/25.
//

import SwiftUI

/// What do we need?
/// - Flexibility/Ease of use
/// - Isolation
/// - Scalability
/// - Testability

@main
struct ModularNavigationAppApp: App {
    @StateObject var rootRouter = RootRouter()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(rootRouter)
        }
    }
}

struct RootView: View {
    @EnvironmentObject var rootRouter: RootRouter

    var body: some View {
        switch rootRouter.route {
        case .auth:
            AuthRootView(coordinator: AuthCoordinator(rootRouter: rootRouter))
        case .main:
            MainTabView()
        }
    }
}
