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
        case .dashboard: return "Dashboard"
        case .income: return "Income"
        case .expense: return "Expenses"
        case .settings: return "Settings"
        }
    }

    var systemImage: String {
        switch self {
        case .dashboard: return "chart.xyaxis.line"
        case .income: return "chart.pie"
        case .expense: return "chart.line.downtrend.xyaxis"
        case .settings: return "gear"
        }
    }

    @ViewBuilder var view: some View {
        switch self {
        case .dashboard: DashboardView()
        case .income: IncomeView()
        case .expense: ExpenseView()
        case .settings: SettingsView()
        }

    }
}
