//
//  CrewMembersView.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

struct CrewMembersView: View {
    @ObservedObject var viewModel: CrewMembersViewModel

    var body: some View {
        VStack(spacing: 16) {
            Text("Crew Members")
                .font(.largeTitle)
                .padding()

            Button("See Member Details") {
                viewModel.onMemberDetailsTapped(id: "id-1")
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
final class CrewMembersViewModel: ObservableObject {
    private let navigator: CrewNavigationHandling

    init(navigator: CrewNavigationHandling) {
        self.navigator = navigator
    }

    func onMemberDetailsTapped(id: String) {
        navigator.presentMemberDetailsScreen(memberId: id)
    }
}
