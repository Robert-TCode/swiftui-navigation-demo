//
//  CrewViewModel.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

final class CrewViewModel: ObservableObject {
    private let navigator: CrewNavigationHandling

    init(navigator: CrewNavigationHandling) {
        self.navigator = navigator
    }

    func onMembersTapped() {
        navigator.presentMembersScreen()
    }

    func onShiftsTapped() {
        // Date represents some user-input data that can be used to create the next view in stack
        navigator.presentShiftsScreen(for: Date())
    }
}
