//
//  CrewShiftsView.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import SwiftUI

struct CrewShiftsView: View {
    @ObservedObject var viewModel: CrewShiftsViewModel

    var body: some View {
        Text(viewModel.title)
    }
}

