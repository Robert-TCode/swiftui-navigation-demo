//
//  CrewNavigationHandling.swift
//  ModularNavigationApp
//
//  Created by TCode on 23/6/25.
//
import Foundation

protocol CrewNavigationHandling {
    func presentMembersScreen()
    func presentShiftsScreen(for date: Date)
    func presentMemberDetailsScreen(memberId: String)
    func popToRootScreen()
    func popToMembersScreen()
}
