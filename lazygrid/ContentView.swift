//
//  ContentView.swift
//  lazygrid
//
//  Created by Vipin on 18/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns:
                    Array(repeating: .init(.flexible(minimum: 80), spacing: 16), count: 4)
            ) {
                ForEach(0 ..< 15) { item in
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height:100)
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
