//
//  ProfileScreen.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

enum ProfileScreen: AppScreenBuildable {
    case profile
    case preferences

    var name: String {
        switch self {
        case .profile:
            return "Profile"
        case .preferences:
            return "Preferences"
        }
    }
}

extension ProfileScreen {
    @ViewBuilder
    func buildView(navigator: ProfileNavigationHandling) -> some View {
        switch self {
        case .profile:
            ProfileView(viewModel: ProfileViewModel(navigator: navigator))
        case .preferences:
            PreferencesView()
        }
    }
}
