//
//  Detail.swift
//  Landmarks
//
//  Created by Caleb R on 12/15/20.
//

import SwiftUI

struct Detail: View {
    
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            VStack {
                
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                    .ignoresSafeArea(edges: .top)
                
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    
                    HStack {
                        
                        Text(landmark.park)
                        
                        Spacer()
                        
                        Text(landmark.state)
      
                    }
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    
                    Divider()
                    
                    Text(landmark.description)
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .font(.body)
                    
                    Spacer()
                }
                .padding()
                
            }
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(landmark: ModelData().landmarks[0])
    }
}
