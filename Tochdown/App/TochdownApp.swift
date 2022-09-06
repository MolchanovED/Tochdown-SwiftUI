//
//  TochdownApp.swift
//  Shared
//
//  Created by Egor Molchanov on 07.08.2022.
//

import SwiftUI

@main
struct TochdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
