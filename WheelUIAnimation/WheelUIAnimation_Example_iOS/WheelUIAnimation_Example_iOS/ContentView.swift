//
//  ContentView.swift
//  WheelUIAnimation_Example_iOS
//
//  Created by Adam Dahan on 2022-02-08.
//

import SwiftUI
import WheelUIAnimation

struct ContentView: View {
    
    var body: some View {
        LottieView(animationName: "happy", loopMode: .loop)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
