//
//  Detail.swift
//  EcomApp
//
//  Created by Andy Lochan on 4/4/21.
//

import SwiftUI

struct Detail: View {
    @Binding var selectedItem: Item
    @Binding var show: Bool
    var animation: Namespace.ID
    
    var body: some View {
        
        VStack {
            
            HStack(spacing: 25) {
                
                Button(action: {
                    // closing view...
                    withAnimation(.spring()){show.toggle()}
                }) {
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.black)
                }
                
                Button(action: {}) {
                    Image(systemName: "bag")
                        .font(.title)
                        .foregroundColor(.black)
                }
                
            }
            .padding()
            
            VStack(spacing: 10) {
                
                Image(selectedItem.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 240)
                    // since id is common...
                    .matchedGeometryEffect(id: "image\(selectedItem.id)", in: animation)
                    .padding()
                
                Text(selectedItem.title)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
                Text(selectedItem.subTitle)
                    .foregroundColor(.gray)
                    .padding(.top, 4)
                
                HStack {
                    
                    Text(selectedItem.rating)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .matchedGeometryEffect(id: "rating\(selectedItem.id)", in: animation)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        
                        Image(systemName: "suit.heart")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    .matchedGeometryEffect(id: "heart\(selectedItem.id)", in: animation)
                }
                .padding()
            }
            .padding(.top, 35)
            .background(
                Color(selectedItem.image)
                    .clipShape(CustomShape())
                    .matchedGeometryEffect(id: "color\(selectedItem.id)", in: animation)
            )
            .cornerRadius(15)
            .padding()
            
            // delay 
            
            Spacer()
        }
    }
}

