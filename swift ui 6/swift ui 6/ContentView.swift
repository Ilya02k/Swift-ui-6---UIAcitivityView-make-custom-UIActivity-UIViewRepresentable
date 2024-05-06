//
//  ContentView.swift
//  swift ui 6
//
//  Created by Ann Dosova on 6.05.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSharePresented = false
    
    let customActivity = ActivityViewCustomActivity(title: "Telegram", imageName: "telegram") {
        print("Telegram was tapped")
    }
    
    var body: some View {
        Button("share") {
            self.isSharePresented = true
        }.sheet(isPresented: $isSharePresented, content: {
            ActivityView(activityItems: ["Telegram activity"], applicationActivities: [customActivity])
        })
    }
}

#Preview {
    ContentView()
}
