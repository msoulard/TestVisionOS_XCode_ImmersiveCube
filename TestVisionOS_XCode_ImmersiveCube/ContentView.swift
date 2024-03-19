//
//  ContentView.swift
//  TestVisionOS_XCode_ImmersiveCube
//
//  Created by Maëva Soulard on 19/03/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    var body: some View {
            VStack{
                /*Button("Open Cube"){
                    Task{
                        await openImmersiveSpace(id: "ImmersiveSpace")
                    }
                }*/
            }
            //.navigationTitle("Content")
            //.padding()
            .onAppear{
                Task{
                    await openImmersiveSpace(id: "ImmersiveSpace")
                }
            }
        /*RealityView{content in
                Text("")
        }
        .onAppear{
            openImmersiveSpace(id: "ImmersiveSpace")
        }*/
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
