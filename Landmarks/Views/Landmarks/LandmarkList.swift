//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Caleb R on 12/15/20.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State public var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites Only")   
                })
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: Detail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)

                    }
                }
                
            }
            .navigationTitle("Landmarks")
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone 12 Pro Max"], id: \.self) { deviceName in
            LandmarkList()
                .environmentObject(ModelData())
        }
        
    }
}
