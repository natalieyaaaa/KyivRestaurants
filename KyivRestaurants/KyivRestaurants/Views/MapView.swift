//
//  MapView.swift
//  KyivRestaurants
//
//  Created by Наташа Яковчук on 07.12.2023.
//

import Foundation
import SwiftUI
import MapKit



struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    private var region: MKCoordinateRegion {
                MKCoordinateRegion(
                    center: coordinate,
                    span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
                )
            }
    
    var body: some View {
      
        Map(position: .constant(.region(region))) {
            Marker("", coordinate: coordinate)
        }
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 50.440884470345104, longitude: 30.553135014439363))
}


