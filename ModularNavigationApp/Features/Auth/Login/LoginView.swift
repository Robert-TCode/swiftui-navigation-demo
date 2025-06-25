//
//  LoginView.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

struct LoginView: View {
    @StateObject var viewModel: LoginViewModel

    var body: some View {
        VStack(spacing: 32) {
            Text("Welcome to Hilti!")
            Button("Login") {
                viewModel.login(username: "test", password: "1234")
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
