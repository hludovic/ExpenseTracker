//
//  SettingsView.swift
//  ExpenseTracker
//
//  Created by Ludovic HENRY on 09/08/2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var isExpanded: Bool = true

    var body: some View {
        NavigationStack {
            Form {
                DisclosureGroup("Categories", isExpanded: $isExpanded) {
                    NavigationLink {
                        CategoryIncomeView()
                    } label: {
                        Text("Income")
                    }
                    NavigationLink {
                        CategoryExpenseView()
                    } label: {
                        Text("Expense")
                    }
                }
            }
            .navigationTitle("Categories")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
