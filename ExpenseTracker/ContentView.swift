//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Ludovic HENRY on 09/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var menuItems = ["Dashboard", "Incomes", "Expenses", "Settings"]
    @State private var selection: String?
    var body: some View {
        NavigationSplitView {
            List(menuItems, id: \.self, selection: $selection) { item in
                HStack {
                    Image(systemName: "person")
                    Text(item)
                }
            }
            .navigationTitle(Text("Title"))
        } detail: {
            if let selected = selection {
                Text(selected)
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
