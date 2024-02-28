//
//  ContentView.swift
//  Spline3DDemo
//
//  Created by Thongchai Subsaidee on 27/2/24.
//

import SwiftUI
import SplineRuntime

struct ContentView: View {
    var body: some View {
        VStack {
            Onboard2DView()
                .foregroundColor(.secondary)
                .frame(height: 500)
                .ignoresSafeArea()
            
            VStack {
                Text("Build Your Brand")
                    .font(.title.bold())
                    
                Text("Stay up date with all your social media platforms in one simple app.")
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal)
            
            Button("Get Stated") {
                //
            }
            .buttonStyle(.borderedProminent)
            .tint(.pink)
    
            
            Spacer()
            
            
        }
        

    }
}

#Preview {
    ContentView()
}


struct Onboard2DView: View {
    var body: some View {
        
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/WjoaI4Cw2hW7FxY7uFuF/scene.splineswift")!

        // // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

        try? SplineView(sceneFileURL: url)
    }
}


