//
//  FindRowView.swift
//  Findo
//
//  Created by Anita Saragih on 09/06/23.
//

import SwiftUI

struct FindRowView: View {
    var background: Color = Color("AccentColor")
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color(.systemBlue))
                
                VStack(alignment: .leading, spacing: 4){
                    //user info
                    Text("Anita Saragih")
                        .font(.system(size: 25))
                        .font(.headline).bold()
                        
                    Text("Harvard University")
                        .font(.system(size: 20))
                    HStack{
                        ScrollView(.horizontal, showsIndicators: true){
                            HStack{
                                Text("Swimming")
                                    .padding()
                                    .background(background).cornerRadius(30)
                    
                                Text("Swimming")
                                    .padding()
                                    .background(background).cornerRadius(30)
                                Text("Swimming")
                                    .padding()
                                    .background(background).cornerRadius(30)
                                Text("Swimming")
                                    .padding()
                                    .background(background).cornerRadius(30)
                                Text("Swimming")
                                    .padding()
                                    .background(background).cornerRadius(30)
                                Text("Swimming")
                                    .padding()
                                    .background(background).cornerRadius(30)
                            }
                            
                        }
                            
                    }
                }
            }
            Divider()
            
        }
    }
}

struct FindRowView_Previews: PreviewProvider {
    static var previews: some View {
        FindRowView()
    }
}
