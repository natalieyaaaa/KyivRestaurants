//
//  CircleImage.swift
//  KyivRestaurants
//
//  Created by Наташа Яковчук on 07.12.2023.
//

import Foundation
import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
       
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay{
                Circle()
                    .stroke(.white, lineWidth: 4)
            } .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("Guramma"))
}
