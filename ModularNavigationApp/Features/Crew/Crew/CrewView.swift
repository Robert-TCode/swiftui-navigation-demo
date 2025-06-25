//
//  CrewView.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

struct CrewView: View {
    @ObservedObject var viewModel: CrewViewModel

    var body: some View {
        VStack(spacing: 16) {
            Text("Crew")
                .font(.largeTitle)
                .padding()

            Button("Members") {
                viewModel.onMembersTapped()
            }
            .buttonStyle(.borderedProminent)

            Button("Shifts") {
                viewModel.onShiftsTapped()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
