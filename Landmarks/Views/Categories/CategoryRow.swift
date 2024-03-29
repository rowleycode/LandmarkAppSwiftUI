//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Caleb R on 12/22/20.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        
        
        
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.top, 5)
                .padding(.leading, 15)
                        
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        CategoryItem(landmark: landmark)
                    }
                }
                .frame(height: 185)
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(categoryName: landmarks[0].category.rawValue, items: Array(landmarks.prefix(4)))
    }
}
