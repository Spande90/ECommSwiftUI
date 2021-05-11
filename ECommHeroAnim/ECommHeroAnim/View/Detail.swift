//
//  Detail.swift
//  ECommHeroAnim
//
//  Created by Siddharth on 11/05/21.
//

import SwiftUI

struct Detail: View {
    
    @Binding var selectedItem: Item
    @Binding var show: Bool
    
    var animation: Namespace.ID
     
    var body: some View {
        VStack{
            HStack{
                
                Button(action: {}, label: {
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .foregroundColor(.black)
                })
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.black)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "bag")
                        .font(.title)
                        .foregroundColor(.black)
                })
            }
            .padding()
            
            VStack(spacing:10){
                Image(selectedItem.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .matchedGeometryEffect(id: "image\(selectedItem.id)", in: animation)
                    .padding()
                
                Text(selectedItem.title)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
                Text(selectedItem.subTitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.top, 4
                    )
            }
        }
    }
}
