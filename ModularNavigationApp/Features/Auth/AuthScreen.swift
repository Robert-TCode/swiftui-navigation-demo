//
//  AuthScreen.swift
//  ModularNavigationApp
//
//  Created by TCode on 24/6/25.
//
import SwiftUI

enum AuthScreen: AppScreen {
    case login

    var name: String {
        switch self {
        case .login:
            return "Login"
        }
    }
}

extension AuthScreen {
    func buildView(navigator: AuthNavigationHandling) -> some View {
        switch self {
        case .login:
            return LoginView(viewModel: LoginViewModel(navigator: navigator))
        }
    }
}
