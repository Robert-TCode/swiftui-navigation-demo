//
//  DashboardView.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

struct DashboardView: View {
    @ObservedObject var viewModel: DashboardViewModel

    var body: some View {
        VStack(spacing: 16) {
            Text("Dashboard")
                .font(.largeTitle)
                .padding()

            Button("Time Tracker") {
                viewModel.onTimeTrackerTapped()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
