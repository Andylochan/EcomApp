//
//  Home.swift
//  EcomApp
//
//  Created by Andy Lochan on 3/29/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        VStack {
            HStack {
                Button(action: {}) {
                    Image(systemName: "line.horizontal.3.decrease")
                        .font(.system(size: 25, weight: .heavy))
                        .foregroundColor(.black)
                }
                
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    Image("profileS1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 45, height: 45)
                        .cornerRadius(15)
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                   
                    HStack {
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("The Ultimate")
                                .font(.title)
                                .foregroundColor(.black)
                            
                            Text("Driving Machine")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                        }
                        .padding(.horizontal)
                        
                        Spacer(minLength: 0)
                    }

                }
            }
            
            Spacer(minLength: 0)
        }
        .background(Color.white.ignoresSafeArea())
    }
}

// MARK:-  Tabs



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}