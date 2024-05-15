//
//  MainNavigationView.swift
//  Budget Voyage
//
//  Created by Asif on 5/15/24.
//

import SwiftUI

struct MainNavigationView: View {
    var body: some View {
        
            TabView {
                TripsView()
                    .tabItem {
                        Label("Trips", systemImage: "airplane")
                    }

                BudgetView()
                    .tabItem {
                        Label("Budget", systemImage: "dollarsign.square")
                    }

                ListsTripsView()
                    .tabItem {
                        Label("Lists", systemImage: "list.bullet")
                    }
            }
        }
    }



#Preview {
    MainNavigationView()
}
