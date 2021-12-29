//
//  ContentView.swift
//  Landmarks
//
//  Created by Caleb R on 12/14/20.
//

import SwiftUI

//The New Master Branch! Hopefully I'm seeing this instead of the weird old master comment.

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}

