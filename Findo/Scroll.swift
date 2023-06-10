//
//  Scroll.swift
//  Findo
//
//  Created by Anita Saragih on 09/06/23.
//

import SwiftUI

struct Scroll: View {
    var background2: Color = Color(.white)
    var size: CGSize
    var safeArea: EdgeInsets
    
    @State private var offsetY: CGFloat = 0
    
    var body: some View {
        
            VStack {
                HeaderView()
                
                    .zIndex(1000)
                ScrollView(.vertical, showsIndicators: false){
                
                CardsView()
            }
            .id("SCROLLVIEW")
            .background{
                ScrollDetector { offset in offsetY = -offset
                    
                } onDraggingEnd: { offset, velocity in
                    let headerHeight = (size.height * 0.3) + safeArea.top
                    let minimumHeaderHight = 65 + safeArea.top
                    let targetEnd = offset + (velocity * 45)
                    if targetEnd < (headerHeight - minimumHeaderHight) && targetEnd > 0 {
                        withAnimation(.interactiveSpring(response: 0.55, dampingFraction: 0.65, blendDuration: 0.65)) {
                           
                        }
                    }
                }
            }
        }
    }
    @ViewBuilder
    func HeaderView() -> some View {
        let headerHeight = (size.height * 0.3) + safeArea.top
        let minimumHeaderHight = 65 + safeArea.top
        let progress = max(min (-offsetY / (headerHeight - minimumHeaderHight), 1), 0)
        GeometryReader { _ in
            ZStack(alignment: .center){
                //                Rectangle()
                //                    .fill(Color("AccentColor"))
                HStack(spacing: 30){
                    Text("Find Friends")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .position(x: 100, y: 60)
                        
                        
                    VStack{
                        GeometryReader {
                            let rect = $0.frame(in: .global)
                            let halfScaledHeight = (rect.height * 0.3) * 0.5
                            let midY = rect.midY
                            let bottomPadding: CGFloat = 15
                            let resizedOffsetY = (midY - (minimumHeaderHight - halfScaledHeight - bottomPadding))
                            //                        Text("Find Friends")
                            //                            .blackColor()
                            Button(action: {}, label: {
                                Image("GambarContoh")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: rect.width, height: rect.height)
                                    .clipShape(Circle())
                                    .scaleEffect(1 - (progress * 0.7), anchor: .leading)
                                    .offset(x: -(rect.minX - 15) * progress, y: -resizedOffsetY * progress)
                                    .position(x: 70, y: 60)
                            })
                            
                            //                                .frame(width: 200.0, height: 200.0)
                            //                                .position(x: 200, y: 140)
                        }
                        .frame(width: headerHeight * 0.5, height: headerHeight * 0.5)
                        
                        Text("Kaesang Purba")
                            .font(.title2)
                            .fontWeight(.bold)
                            .blackColor()
                            .scaleEffect(1 - (progress * 0.15))
                            .offset(y: -4.5 * progress)
                            .position(x: 90, y: 10)
                    }
                    
                }
                
                .padding(.top, safeArea.top)
                .padding(.bottom, 15)
                
            }
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(spacing: 10){
                    Button(action: {
                        
                    }, label: {
                        Text("Volley")
                            .padding()
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(width: 80, height: 35)
                            .clipShape(Capsule())
                            .background(RoundedRectangle(cornerRadius: 20, style: .continuous) .stroke())
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("KPop")
                            .padding()
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(width: 80, height: 35)
                            .clipShape(Capsule())
                            .background(RoundedRectangle(cornerRadius: 20, style: .continuous) .stroke())
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Anime")
                            .padding()
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .frame(width: 85, height: 35)
                            .clipShape(Capsule())
                            .background(RoundedRectangle(cornerRadius: 20, style: .continuous) .stroke())
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Sport")
                            .padding()
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .frame(width: 85, height: 35)
                            .clipShape(Capsule())
                            .background(RoundedRectangle(cornerRadius: 20, style: .continuous) .stroke())
                    })
                    
                    
                    Image(systemName: "line.3.horizontal.decrease.circle")
                        .font(.largeTitle)
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color("Yellow"))
    //                    .frame(width: 200, height: 200)
                }
            }
            
            
            .frame(height: (headerHeight + offsetY) < minimumHeaderHight ? minimumHeaderHight : (headerHeight + offsetY), alignment: .bottom)
            .offset(y: -offsetY)
        }
        .frame(height: headerHeight)
    }
        
    @ViewBuilder
    func CardsView() -> some View {
        VStack(spacing: 15) {
            ForEach(0 ... 10, id: \.self) {
                _ in FindRowView()
            }
        }
        .padding(15)
    }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
