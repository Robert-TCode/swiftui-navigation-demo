//
//  CrewMemberDetailsView.swift
//  ModularNavigationApp
//
//  Created by TCode on 25/6/25.
//
import SwiftUI

struct CrewMemberDetailsView: View {
    @ObservedObject var viewModel: CrewMemberDetailsViewModel

    var body: some View {
        VStack(spacing: 16) {
            Text("Crew Member Details")
                .font(.largeTitle)
                .padding()

            Text("ID: \(viewModel.memberId)")
                .padding()

            Button("Pop to Root") {
                viewModel.onPopToRootTapped()
            }
            .buttonStyle(.borderedProminent)

            Button("Pop to Crew Members") {
                viewModel.onPopCrewMembersTapped()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
