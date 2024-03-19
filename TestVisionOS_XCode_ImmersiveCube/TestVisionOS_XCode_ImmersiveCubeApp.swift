//
//  TestVisionOS_XCode_ImmersiveCubeApp.swift
//  TestVisionOS_XCode_ImmersiveCube
//
//  Created by Maëva Soulard on 19/03/2024.
//

import SwiftUI

@main
struct TestVisionOS_XCode_ImmersiveCubeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
