//
//  ContentView.swift
//  Findo
//
//  Created by Anita Saragih on 09/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{
            let size = $0.size
            let safeArea = $0.safeAreaInsets
            
            Scroll(size: size, safeArea: safeArea)
                .ignoresSafeArea(.all, edges: .top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
