//
//  ProfileCoordinator.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

final class ProfileCoordinator: Coordinator, ProfileNavigationHandling {
    @Published var navigationPath = [ProfileScreen]()

    func presentPreferencesScreen() {
        navigationPath.append(ProfileScreen.preferences)
    }
}
