//
//  ContentView.swift
//  Landmarks
//
//  Created by Caleb R on 12/14/20.
//

import SwiftUI

//This is the new master branch. If a future version of me is reading this feel free to delete this comment.

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

