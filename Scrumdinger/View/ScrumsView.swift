//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Tanveer Ashraf on 02/11/2024.
//

import SwiftUI

struct ScrumsView: View {
    let scrums = DailyScrum.sampleData
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
        }
    }
}

#Preview {
    ScrumsView()
}
