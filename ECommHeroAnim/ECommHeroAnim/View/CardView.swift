//
//  CardView.swift
//  ECommHeroAnim
//
//  Created by Siddharth on 08/05/21.
//

import SwiftUI

struct CardView: View {
    
    var item: Item
    var animation : Namespace.ID
    
    var body: some View {
        
        VStack{
            HStack{
                
                Spacer(minLength: 0)
                
                Text(item.price)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.vertical,8)
                    .padding(.horizontal,10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10.0)
                
                
            }
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top, 30)
                .padding(.bottom)
                .padding(.horizontal, 10)
            
            
            Text(item.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text(item.subTitle)
                .font(.caption)
                .foregroundColor(.gray)
            
            HStack{
                Button(action: {}, label: {
                    Image(systemName: "suit.heart")
                        .font(.title2)
                        .foregroundColor(.black)
                })
                .matchedGeometryEffect(id: "heart\(item.id)", in: animation)
                
                Spacer(minLength: 0)
                
                Text(item.rating)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .matchedGeometryEffect(id: "rating\(item.id)", in: animation)
                    .padding()
            }
            
        }
        .background(
            Color(item.image)
                .matchedGeometryEffect(id: "color\(item.id)", in: animation)
        )
        .cornerRadius(15.0)

    }
}


