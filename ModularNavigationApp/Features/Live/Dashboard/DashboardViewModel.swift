//
//  DashboardViewModel.swift
//  ModularNavigationApp
//
//  Created by TCode on 25/6/25.
//

import SwiftUI

final class DashboardViewModel: ObservableObject {
    private let navigator: LiveNavigationHandling

    init(navigator: LiveNavigationHandling) {
        self.navigator = navigator
    }

    func onTimeTrackerTapped() {
        navigator.presentTimeTrackerScreen()
    }
}

