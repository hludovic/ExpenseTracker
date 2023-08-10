//
//  ContentView.swift
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

struct ContentView: View {
    @State private var menuItems: [MenuItem] = MenuItem.allCases
    @State private var selection: MenuItem?
    var body: some View {
        NavigationSplitView {
            List(menuItems, selection: $selection) { item in
                NavigationLink(value: item){
                    Label(item.title, systemImage: item.image)
                }
            }
        } detail: {
            if let selected = selection {
                selected.view
            } else {
                Text("Select an item")
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
