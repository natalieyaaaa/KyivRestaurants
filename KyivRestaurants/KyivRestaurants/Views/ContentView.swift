//
//  ContentView.swift
//  KyivRestaurants
//
//  Created by Наташа Яковчук on 07.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
       RestaurantList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())

}
