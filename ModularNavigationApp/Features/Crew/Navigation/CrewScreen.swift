//
//  CrewScreen.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

enum CrewScreen: AppScreenBuildable {
    case crew
    case members
    case shifts(date: Date)
    case memberDetails(id: String)

    var name: String {
        switch self {
        case .crew:
            return "Crew"
        case .members:
            return "Members"
        case .shifts:
            return "Crew Shifts"
        case .memberDetails:
            return "Member Details"
        }
    }
}

extension CrewScreen {
    @ViewBuilder
    func buildView(navigator: CrewNavigationHandling) -> some View {
        switch self {
        case .crew:
            CrewView(viewModel: CrewViewModel(navigator: navigator))
        case .members:
            CrewMembersView(viewModel: CrewMembersViewModel(navigator: navigator))
        case let .shifts(date):
            CrewShiftsView(viewModel: CrewShiftsViewModel(date: date))
        case let .memberDetails(id):
            CrewMemberDetailsView(viewModel: CrewMemberDetailsViewModel(id: id, navigator: navigator))
        }
    }
}
