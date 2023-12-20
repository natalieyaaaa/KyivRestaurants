//
//  RestaurantsRow.swift
//  KyivRestaurants
//
//  Created by Наташа Яковчук on 08.12.2023.
//

import Foundation
import SwiftUI

struct RestaurantsRow: View {
    
    var restaurant: Restaurants
    
    var body: some View {
        
        HStack {
            
            restaurant.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 80, height: 80)
                .shadow(radius: 5)
            
            Text(restaurant.name)
                .font(.subheadline)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.black.opacity(0.06))
                )
            
            Spacer()
            
            if restaurant.isFavorite {
                Image(systemName: "star")
                    .foregroundColor(.yellow)
            }
            
        } .padding(.horizontal, 8)
            .padding(.vertical, -10)
    }
}

#Preview {
    let restaurants = ModelData().restaurants
    return Group {
        RestaurantsRow(restaurant: restaurants[0])
        RestaurantsRow(restaurant: restaurants[1])
    }
}
