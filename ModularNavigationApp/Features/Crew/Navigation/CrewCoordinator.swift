//
//  CrewCoordinator.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

final class CrewCoordinator: Coordinator, CrewNavigationHandling {
    @Published var navigationPath = [CrewScreen]()

    func presentMembersScreen() {
        navigationPath.append(CrewScreen.members)
    }

    func presentShiftsScreen(for date: Date) {
        navigationPath.append(CrewScreen.shifts(date: date))
    }

    func presentMemberDetailsScreen(memberId: String) {
        navigationPath.append(CrewScreen.memberDetails(id: memberId))
    }

    func popToRootScreen() {
        popToRoot()
    }

    func popToMembersScreen() {
        popToScreen(.members)
    }
}
