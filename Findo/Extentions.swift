//
//  Extentions.swift
//  Findo
//
//  Created by Anita Saragih on 09/06/23.
//

import Foundation
import SwiftUI

extension Text {
    func blueTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
    
    func blackColor() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("Black"))
    }
    
    func yellowTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("Yellow"))
    }
}
