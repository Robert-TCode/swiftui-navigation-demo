//
//  ProfileView.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

struct ProfileView: View {
    @ObservedObject var viewModel: ProfileViewModel

    var body: some View {
        VStack(spacing: 16) {
            Text("Profile")
                .font(.largeTitle)
                .padding()

            Button("Preferences") {
                viewModel.onPreferencesTapped()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
