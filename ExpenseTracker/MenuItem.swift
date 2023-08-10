//
//  MenuItem.swift
//  ExpenseTracker
//
//  Created by Ludovic HENRY on 09/08/2023.
//

import SwiftUI

enum MenuItem: Identifiable, CaseIterable {
    case dashboard, income, expense, settings

    var id: UUID {
        UUID()
    }

    var title: String {
        switch self {
        case .dashboard:
            return "Dashboard"
        case .income:
            return "Income"
        case .expense:
            return "Expenses"
        case .settings:
            return "Settings"
        }
    }

    var image: String {
        switch self {
        case .dashboard:
            return "chart.xyaxis.line"
        case .income:
            return "chart.pie"
        case .expense:
            return "chart.line.downtrend.xyaxis"
        case .settings:
            return "gear"
        }
    }

    var view: some View {
        switch self {
        case .dashboard:
            return Text("Dashboard")
        case .income:
            return Text("Income")
        case .expense:
            return Text("Expenses")
        case .settings:
            return Text("Settings")
        }

    }
}
