//
//  AuthRootView.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

struct AuthRootView: View {
    @StateObject var coordinator: AuthCoordinator

    var body: some View {
        NavigationStack(path: $coordinator.navigationPath) {
            AuthScreen.login.buildView(navigator: coordinator)
        }
    }
}
