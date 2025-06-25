//
//  CrewMemberDetailsViewModel.swift
//  ModularNavigationApp
//
//  Created by TCode on 25/6/25.
//
import SwiftUI

final class CrewMemberDetailsViewModel: ObservableObject {
    private let navigator: CrewNavigationHandling
    private let id: String

    var memberId: String { id }

    init(id: String, navigator: CrewNavigationHandling) {
        self.id = id
        self.navigator = navigator
    }

    func onPopToRootTapped() {
        navigator.popToRootScreen()
    }

    func onPopCrewMembersTapped() {
        navigator.popToMembersScreen()
    }
}
