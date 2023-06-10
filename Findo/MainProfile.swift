//
//  MainProfile.swift
//  Findo
//
//  Created by Anita Saragih on 10/06/23.
//

import SwiftUI

struct MainProfile: View {
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
                
//                HStack{
//                    ScrollView(.horizontal, showsIndicators: true){
//                        HStack (alignment: .center, spacing: 10){
//                            Text("Karate")
//                                .padding()
//                                .background(background3).cornerRadius(30)
//                                .font(.headline)
//                                .foregroundColor(.black)
////                                    .frame(width: 80, height: 35)
//
//                            Text("Shopping")
//                                .padding()
//                                .background(background3).cornerRadius(30)
//                                .font(.headline)
//                                .foregroundColor(.black)
////                                    .frame(width: 120, height: 35)
//
//                            Text("ayam bakar")
//                                .padding()
//                                .background(background3).cornerRadius(30)
//                                .font(.headline)
//                                .foregroundColor(.black)
////                                    .frame(width: 180, height: 35)
//
//                        }
//
//                    }
//
//                }
//                .position(x: 190, y: -210)
//
                Text("Halo, aku Kaesang, asal Depok, Jawa Barat. Aku berkuliah di Oxford University dan sekarang sedang magang di Seattle, United State. Aku into banget sama tech dan juga senang olah raga, kaya voli dan basketball. Kangen rumah banget, makanya pake aplikasi ini buat nyari orang-orang Indo biar bisa nongki.")
                    .multilineTextAlignment(.center)
                    .baselineOffset(1)
                    .frame(width: 300, height: 300)
                    .position(x: 185, y: -120)
                
                Button(action: {
                    
                }, label: {
                    Text("Ubah Profil")
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

struct MainProfile_Previews: PreviewProvider {
    static var previews: some View {
        MainProfile()
    }
}
