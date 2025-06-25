//
//  LoginViewModel.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

final class LoginViewModel: ObservableObject {
    private let navigator: AuthNavigationHandling

    init(navigator: AuthNavigationHandling) {
        self.navigator = navigator
    }

    func login(username: String, password: String) {
        navigator.handleLoginSuccess()
    }
}
