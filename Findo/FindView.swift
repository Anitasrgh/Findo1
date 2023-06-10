//
//  FindView.swift
//  Findo
//
//  Created by Anita Saragih on 09/06/23.
//

import SwiftUI

struct FindView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0 ... 20, id: \.self) {
                    _ in FindRowView()
                }
            }
        }
    }
}

struct FindView_Previews: PreviewProvider {
    static var previews: some View {
        FindView()
    }
}
