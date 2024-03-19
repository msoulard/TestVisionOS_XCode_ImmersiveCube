//
//  ImmersiveView.swift
//  TestVisionOS_XCode_ImmersiveCube
//
//  Created by Maëva Soulard on 19/03/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    @Environment(\.dismissWindow) var dismissWindow
    var body: some View {
        RealityView{ content in
            if let scene = try? await Entity(named:"Cube", in: realityKitContentBundle){
                content.add(scene)
            }
        }
        .onAppear{
            dismissWindow(id: "Main")
        }
    }
}

#Preview(immersionStyle: .full) {
    ImmersiveView()
}
