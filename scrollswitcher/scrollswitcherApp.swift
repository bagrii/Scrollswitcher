//
//  scrollswitcherApp.swift
//  scrollswitcher
//
//  Created by Petro Bagrii on 19.11.22.
//

import SwiftUI
import Foundation

@main
struct scrollswitcherApp: App {
    @State private var swipeScrollState = swipeScrollDirection()
    private let buttonLabel = "Switch to "
    private let naturalSybmolName = "computermouse"
    private let unNaturalSymbolName = "computermouse.fill"
    var body: some Scene {
        MenuBarExtra("Scroll mode switcher", systemImage: swipeScrollState ?  naturalSybmolName: unNaturalSymbolName) {
            Button(buttonLabel + (swipeScrollState ? "un-natural": "natural")) {
                swipeScrollState.toggle()
                setSwipeScrollDirection(swipeScrollState)
            }
            Divider()
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
        }
    }
}
