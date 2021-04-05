//
//  TabButton.swift
//  EcomApp
//
//  Created by Andy Lochan on 3/30/21.
//

import SwiftUI

struct TabButton: View {
    @Binding var selected: String
    var title: String
    var animation: Namespace.ID
    
    var body: some View {
        
        Button(action: {
            withAnimation(.spring()){ selected = title }
        }) {
            Text(title)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .foregroundColor(selected == title ? .white : .black)
                .padding(.vertical, 10)
                .padding(.horizontal, selected == title ? 20 : 0)
                .background(
                    // For Slide Effect Animation
                    ZStack {
                        if selected == title {
                            Color.black
                                .clipShape(Capsule())
                                .matchedGeometryEffect(id: "Tab", in: animation)
                        }
                    }
                )
        }
    }
}
