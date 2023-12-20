//
//  KyivRestaurantsApp.swift
//  KyivRestaurants
//
//  Created by Наташа Яковчук on 07.12.2023.
//

import SwiftUI

@main
struct KyivRestaurantsApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.light)
                .environment(modelData)

        }
    }
}
