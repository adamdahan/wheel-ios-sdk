//
//  ContentView.swift
//  WheelUI_Example_iOS
//
//  Created by Adam Dahan on 2022-02-08.
//

import SwiftUI
import WheelUI

struct ContentView: View {
    var body: some View {
        Text(WheelUI().text)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
