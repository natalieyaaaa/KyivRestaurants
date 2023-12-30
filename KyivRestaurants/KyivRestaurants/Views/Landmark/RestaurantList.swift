//
//  RestaurantList.swift
//  KyivRestaurants
//
//  Created by Наташа Яковчук on 09.12.2023.
//

import Foundation
import SwiftUI

struct RestaurantList: View {
    
    @Environment(ModelData.self) var md
    @State private var showFavoritesOnly = false
    
    var filteredRestaurants: [Restaurants] {
        md.restaurants.filter { restaurant in
            (!showFavoritesOnly || restaurant.isFavorite)
        }
    }
    
    
    var body: some View {
        
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredRestaurants) { restaurant in
                    NavigationLink {
                        RestaurantDetail(restaurant: restaurant)
                    } label: {
                        RestaurantsRow(restaurant: restaurant)
                    }
                }
            }
            .animation(.default, value: filteredRestaurants)
                .navigationTitle("Restaurants in Kyiv")
            } detail: {
                Text("Choose a restaurant")
            }
        }
    }

#Preview {
    RestaurantList()
        .environment(ModelData())

}
