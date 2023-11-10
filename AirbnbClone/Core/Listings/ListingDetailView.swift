import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    var body: some View {
        ScrollView {
            ListingImageCarouselView()
                .frame(height: 320)
            
            listingInfo
            
            Divider()
            
            hostInfoView
            
            Divider()
            
            Group {
                listingFeatures
                
                Divider()
                
                bedroomList
                
                Divider()
                
                listingAmenities
                
                Divider()
                
                listingMap
            }
        }
        .padding(.bottom, 64)
        .overlay(alignment: .bottom) {
            reserveButton
        }
    }
}

struct ListingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetailView()
    }
}

extension ListingDetailView {
    private var listingInfo: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Miami Villa")
                .font(.title2)
                .fontWeight(.semibold)
            
            VStack(alignment: .leading) {
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                    
                    Text(" - ")
                    
                    Text("28 reviews")
                        .underline()
                        .fontWeight(.semibold)
                }
                .font(.caption)
                .foregroundColor(.black)
                
                Text("Miami Florida")
            }
            .font(.caption)
        }
        .padding(.leading)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    private var hostInfoView: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Entire Villa hosted by \nJonh Smith")
                    .font(.headline)
                
                HStack(spacing: 2) {
                    Text("4 guests -")
                    Text("4 bedrooms -")
                    Text("4 beds -")
                    Text("2 baths -")
                }
                .font(.caption)
            }
            
            Spacer()
            
            Image("1lox")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
        }
        .padding()
    }
    private var listingFeatures: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(0..<2) { feature in
                HStack(spacing: 12) {
                    Image(systemName: "medal")
                    
                    VStack(alignment: .leading) {
                        Text("Superhost")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Superhost are experience, highly rated host who are commited to providing great stars for guests")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                }
            }
        }
        .padding()
    }
    private var bedroomList: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll sleep")
                .font(.headline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(0..<6, id: \.self) { bedroom in
                        VStack {
                            Image(systemName: "bed.double")
                            
                            Text("Bedroom \(bedroom)")
                        }
                        .frame(width: 132, height: 100)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 1)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
        }
        .padding()
    }
    private var listingAmenities: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("What this place offers")
                .font(.headline)
            
            ForEach(0..<5 , id: \.self) { feature in
                HStack {
                    Image(systemName: "wifi")
                        .frame(width: 32)
                    
                    Text("Wifi")
                        .font(.footnote)
                    
                    Spacer()
                }
            }
        }
        .padding()
    }
    private var listingMap: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll be")
                .font(.headline)
            
            Map()
                .frame(height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding()
    }
    private var reserveButton: some View {
        VStack {
            Divider()
                .padding(.bottom)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("500$")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Total before taxes")
                        .font(.footnote)
                    
                    Text("Oct 15 - 20")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .underline()
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Reserve")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 140, height: 40)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            }
            .padding(.horizontal, 32)
        }
        .background(.white)
    }
}
