//
//  ProfileViewModel.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

final class ProfileViewModel: ObservableObject {
    private let navigator: ProfileNavigationHandling

    init(navigator: ProfileNavigationHandling) {
        self.navigator = navigator
    }

    func onPreferencesTapped() {
        navigator.presentPreferencesScreen()
    }
}
