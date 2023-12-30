//
//  RestaurantDetail.swift
//  KyivRestaurants
//
//  Created by Наташа Яковчук on 09.12.2023.
//

import Foundation
import SwiftUI

struct RestaurantDetail: View {
    
    @Environment(ModelData.self) var modelData
    var restaurant: Restaurants
    var restaurantIndex: Int {
            modelData.restaurants.firstIndex(where: { $0.id == restaurant.id })!
        }
    
    var body: some View {
        
        @Bindable var modelData = modelData

        ScrollView(showsIndicators: false) {
                MapView(coordinate: restaurant.locationCoordinate)
                    .frame(height: 300)
                
                CircleImage(image: restaurant.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
            
            VStack(alignment: .leading)  {
                HStack {
                    Text(restaurant.name)
                        .font(.title)
                        .bold()
                    FavouriteButton(isSet: $modelData.restaurants[restaurantIndex].isFavorite)

                    Spacer()
                    
                    VStack(alignment: .trailing){
                        Text(restaurant.adress)
                    }.font(.subheadline)
                        .foregroundStyle(.white)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(.black.opacity(0.5)))
                }
                    
                    Divider()
                 
                    Text(restaurant.cuisine)
                    
                    Divider()
                    
                    Text(restaurant.description)
            }
            .padding()
            }
        }
    }

#Preview {
    RestaurantDetail(restaurant: ModelData().restaurants[0])
}
