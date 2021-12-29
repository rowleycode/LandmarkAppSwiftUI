//
//  ContentView.swift
//  Landmarks
//
//  Created by Caleb R on 12/14/20.
//

import SwiftUI

//The old master branch. This comment should be annihilated by my powerful command.

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

