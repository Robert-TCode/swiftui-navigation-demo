//
//  LiveCoordinator.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

final class LiveCoordinator: Coordinator, LiveNavigationHandling {
    @Published var navigationPath = [LiveScreen]()

    func push(_ screen: LiveScreen) {
        navigationPath.append(screen)
    }

    func presentTimeTrackerScreen() {
        navigationPath.append(LiveScreen.timeTracker)
    }
}
