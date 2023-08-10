//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Ludovic HENRY on 09/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var menuItems: [MenuItem] = MenuItem.allCases
    @State private var selection: MenuItem?
    var body: some View {
        NavigationSplitView {
            List(menuItems, selection: $selection) { item in
                NavigationLink(value: item) {
                    Label(item.title, systemImage: item.systemImage)
                }
            }
            .navigationTitle("Title")
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
