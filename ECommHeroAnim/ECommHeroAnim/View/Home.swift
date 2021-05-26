//
//  Home.swift
//  ECommHeroAnim
//
//  Created by Siddharth on 08/05/21.
//

import SwiftUI

struct Home: View {
    
    @State var selected = tabs[0]
    @Namespace var animation
    
    @State var show = false
    @State var selectedItem: Item = Items[0]
    
    var body: some View {
        ZStack{
            VStack{
                //Menu Header Area
                HStack{
                    
                    Button(action: {}, label: {
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 25, weight: .heavy))
                            .foregroundColor(.black)
                    })
                    Spacer(minLength: 0 )
                    
                    Button(action: {}, label: {
                        Image("profile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 45, height: 45)
                            .cornerRadius(15.0)
                    })
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                //Scrollable Area with Title
                ScrollView{
                    VStack{
                        HStack{
                            VStack(alignment: .leading, spacing: 5, content: {
                                Text("Let's")
                                    .font(.title)
                                    .foregroundColor(.black)
                                Text("Get Started")
                                    .font(.largeTitle)
                                    .fontWeight(.heavy )
                                    .foregroundColor(.black)
                            })
                            .padding(.horizontal)
                            Spacer(minLength: 0)
                        }
                        //Selectors Tab
                        HStack{
                            ForEach(tabs, id: \.self) { tab in
                                //Code for Tab Button
                                TabButton(title: tab, selected: $selected, animation: animation)
                                
                                //Spacing to be made even
                                if tabs.last !=
                                    tab{Spacer(minLength: 0)}
                                
                            }
                        }
                        .padding()
                        .padding(.top,5)
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 25), count: 2),spacing: 20, content: {
                            ForEach(Items) { item in
                                //Card View
                                CardView(item: item, animation: animation)
                                    .onTapGesture(perform: {
                                        withAnimation(.spring()) {
                                            selectedItem = item
                                            show.toggle()
                                        }
                                    })
                            }
                        })
                        
                    }
                }
                
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
            }
            .opacity(show ? 0 : 1)
            
            if show{
                Detail(selectedItem: $selectedItem, show: $show, animation: animation)
            }
            
        }.background(Color.white.ignoresSafeArea() )
        
    }
}
// Tabs:

var tabs = ["Glasses","Watches","Shoes","Perfume"]

