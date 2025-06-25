//
//  CrewShiftsViewModel.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//

import SwiftUI

final class CrewShiftsViewModel: ObservableObject {
    private let date: Date

    private var dateString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: date)
    }

    var title: String {
        "Crew Shifts on \(dateString)"
    }

    init(date: Date) {
        self.date = date
    }
}
