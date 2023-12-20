//
//  RestaurantDetail.swift
//  KyivRestaurants
//
//  Created by Наташа Яковчук on 09.12.2023.
//

import Foundation
import SwiftUI

struct RestaurantDetail: View {
    
    var restaurant: Restaurants
    
    var body: some View {
        
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
