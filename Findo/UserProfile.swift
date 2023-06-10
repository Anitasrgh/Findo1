//
//  UserProfile.swift
//  Findo
//
//  Created by Anita Saragih on 10/06/23.
//

import SwiftUI

struct UserProfile: View {
    var background3: Color = Color("AccentColor")
    var body: some View {
        VStack(alignment: .center){
            Image("GambarContoh")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: 150, height: 150)
//                .padding(.bottom)
                .position(x:185, y: 80)
                
            VStack(alignment: .center, spacing: 4){
                Text("Kaesang Purba")
                    .font(.system(size: 25))
                    .font(.headline).bold()
//                    .padding(.bottom, 5)
                    .position(x: 185, y: -180)
                
                Text("Harvard University")
                    .font(.system(size: 20))
//                    .padding(.bottom)
                    .position(x: 185, y: -210)
                    
                    HStack{
                        ScrollView(.horizontal, showsIndicators: true){
                            HStack (alignment: .center, spacing: 10){
                                Text("Volley")
                                    .padding()
                                    .background(background3).cornerRadius(30)
                                    .font(.headline)
                                    .foregroundColor(.black)
//                                    .frame(width: 80, height: 35)
                                    
                                Text("Basketball")
                                    .padding()
                                    .background(background3).cornerRadius(30)
                                    .font(.headline)
                                    .foregroundColor(.black)
//                                    .frame(width: 120, height: 35)
                                    
                                Text("Nasi Padang")
                                    .padding()
                                    .background(background3).cornerRadius(30)
                                    .font(.headline)
                                    .foregroundColor(.black)
//                                    .frame(width: 180, height: 35)
                                    
                            }
                    
                        }

                    }
                    .position(x: 185, y: -210)
                
                HStack{
                    ScrollView(.horizontal, showsIndicators: true){
                        HStack (alignment: .center, spacing: 10){
                            Text("Karate")
                                .padding()
                                .background(background3).cornerRadius(30)
                                .font(.headline)
                                .foregroundColor(.black)
//                                    .frame(width: 80, height: 35)
                                
                            Text("Shopping")
                                .padding()
                                .background(background3).cornerRadius(30)
                                .font(.headline)
                                .foregroundColor(.black)
//                                    .frame(width: 120, height: 35)
                                
                            Text("ayam bakar")
                                .padding()
                                .background(background3).cornerRadius(30)
                                .font(.headline)
                                .foregroundColor(.black)
//                                    .frame(width: 180, height: 35)
                                
                        }

                    }

                }
                .position(x: 190, y: -210)
                
                Text("Halo, gue Ariel asal Medan! Gue seneng banget dalam kegiatan olahraga terutama voli! Selain itu, gue juga mantan atlit silat hehe :D ")
                    .multilineTextAlignment(.center)
                    .baselineOffset(1)
                    .frame(width: 300, height: 300)
                    .position(x: 185, y: -120)
                
                Button(action: {
                    
                }, label: {
                    Text("Lanjutkan di WhatsApp")
                        .padding()
                        .font(.system(size: 23))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width: 300, height: 45)
                        .clipShape(Capsule())
                        .background(RoundedRectangle(cornerRadius: 20, style: .continuous) .stroke())
                })
                
                }
        }
        .padding(.all)
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
