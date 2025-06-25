//
//  AuthCoordinator.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

final class AuthCoordinator: Coordinator, AuthNavigationHandling {
    @Published var navigationPath = [AuthScreen]()
    weak var rootRouter: RootRouter?

    init(rootRouter: RootRouter?) {
        self.rootRouter = rootRouter
    }

    func handleLoginSuccess() {
        rootRouter?.route = .main
    }
}
