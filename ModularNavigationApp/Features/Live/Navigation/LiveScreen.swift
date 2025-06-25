//
//  LiveScreen.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

enum LiveScreen: AppScreenBuildable {
    case dashboard
    case timeTracker

    var name: String {
        switch self {
        case .dashboard:
            return "Dashboard"
        case .timeTracker:
            return "TimeTracker"
        }
    }
}

extension LiveScreen {
    @ViewBuilder
    func buildView(navigator: LiveNavigationHandling) -> some View {
        switch self {
        case .dashboard:
            DashboardView(viewModel: DashboardViewModel(navigator: navigator))
        case .timeTracker:
            TimeTrackerView()
        }
    }
}
