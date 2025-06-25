//
//  MainTabView.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

struct MainTabView: View {
    @StateObject var liveCoordinator = LiveCoordinator()
    @StateObject var crewCoordinator = CrewCoordinator()
    @StateObject var profileCoordinator = ProfileCoordinator()

    var body: some View {
        TabView {
            NavigationStack(path: $liveCoordinator.navigationPath) {
                LiveScreen.dashboard.buildView(navigator: liveCoordinator)
                    .navigationDestination(for: LiveScreen.self) { $0.buildView(navigator: liveCoordinator) }
            }
            .tabItem { Tabs.live.label }

            NavigationStack(path: $crewCoordinator.navigationPath) {
                CrewScreen.crew.buildView(navigator: crewCoordinator)
                    .navigationDestination(for: CrewScreen.self) { $0.buildView(navigator: crewCoordinator) }
            }
            .tabItem { Tabs.crew.label }

            NavigationStack(path: $profileCoordinator.navigationPath) {
                ProfileScreen.profile.buildView(navigator: profileCoordinator)
                    .navigationDestination(for: ProfileScreen.self) { $0.buildView(navigator: profileCoordinator) }
            }
            .tabItem { Tabs.profile.label }
        }
    }
}

// MARK: - Private Helpers

private extension MainTabView {
    enum Tabs {
        case live
        case crew
        case profile

        var name: String {
            switch self {
            case .live:
                return "Live"
            case .crew:
                return "Crew"
            case .profile:
                return "Profile"
            }
        }

        var imageName: String {
            switch self {
            case .live:
                return "dot.radiowaves.left.and.right"
            case .crew:
                return "person.3.fill"
            case .profile:
                return "person.circle"
            }
        }

        var label: some View {
            Label(name, systemImage: imageName)
        }
    }
}
