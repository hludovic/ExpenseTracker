//
//  CategoryIncomeView.swift
//  ExpenseTracker
//
//  Created by Ludovic HENRY on 11/08/2023.
//

import SwiftUI

struct CategoryIncomeView: View {
    @State private var incomeCategories = ["Youtube", "Freelancing", "Instagram"]

    var body: some View {
        List(incomeCategories, id: \.self) { category in
            Text(category)
        }
        .navigationTitle("Income Categories")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    print("Add income category")
                } label: {
                    Label("Add", systemImage: "plus.square")
                }

            }
        }
    }
}

struct CategoryIncomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CategoryIncomeView()
        }
    }
}
