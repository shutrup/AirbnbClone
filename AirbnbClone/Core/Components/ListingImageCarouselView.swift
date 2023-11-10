//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Шарап Бамматов on 26.10.2023.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var listing = [
        "image1",
        "image2",
        "image3",
        "image4"
    ]
    
    var body: some View {
        TabView {
            ForEach(listing, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

struct ListingImageCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        ListingImageCarouselView()
    }
}
