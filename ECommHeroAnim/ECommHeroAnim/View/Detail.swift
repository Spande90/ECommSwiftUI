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
    
    @State var loadcontent = false
    @State var selectedColor:Color = Color("p1")
    

     
    var body: some View {
        ScrollView(UIScreen.main.bounds.height < 750 ? .vertical: .init(), showsIndicators: false, content: {
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
                    HStack{
                        Text(selectedItem.rating)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                            .matchedGeometryEffect(id: "rating\(selectedItem.id)", in: animation)
                            .padding()
                        Spacer(minLength: 0)
                        Button(action: {}, label: {
                            Image(systemName: "suit.heart")
                                .font(.title2)
                                .foregroundColor(.black)
                        })
                        .matchedGeometryEffect(id: "heart\(selectedItem.id)", in: animation)
                        
                        
                        
                        
                    }.padding()
                }
                .padding(.top,35)
                .background(
                    Color(selectedItem.image)
                        .clipShape(CustomShape())
                        .matchedGeometryEffect(id: "color\(selectedItem.id)", in: animation)
                )
                .cornerRadius(15.0)
                .padding()
                
            // delay in content loading for animation purpose
                VStack{
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Exclusive Offer")
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                            
                        Text("Frame + Lens for $35(its 50% off!!)")
                            .foregroundColor(.gray)
                    })
                    .padding()
                    .frame(width: UIScreen.main.bounds.width - 30, alignment: .leading)
                    .background(Color("p3"))
                    .cornerRadius(15.0)
                    VStack(alignment: .leading, spacing: 10, content: {
                        Text("Color")
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                            //.fontweight(.heavy)
                            //.foregroundColor(.black)
                        
                        HStack(spacing:15){
                            ForEach(1...4,id:\.self){ i in
                                ZStack{
                                    Color("p\(i)")
                                        .clipShape(Circle())
                                        .frame(width: 45, height: 45)
                                        .onTapGesture(perform: {
                                            withAnimation {
                                                selectedColor = Color("p\(i)")
                                            }
                                        })
                                    if selectedColor == Color("p\(i)"){
                                        Image(systemName: "checkmark")
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                            Spacer(minLength: 0)
                        }
                        
                       
                    })
                    .padding()
                    Spacer(minLength: 15)
                    
                    Button(action: {}, label: {
                        Text("TRY FRAME IN 3D")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 100)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black,lineWidth: 1)
                            )
                        
                    })
                    Button(action: {}, label: {
                        Text("ADD TO CART")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 100)
                            .background(Color.black)
                            .cornerRadius(15)
                        
                    })
                    .padding(.vertical)
                    
                }
                .padding([.horizontal,.bottom])
                .frame(height: loadcontent ? nil:0)
                .opacity(loadcontent ? 1:0)
                Spacer(minLength: 0)
            }
        })
        .onAppear{
            withAnimation(.spring().delay(0.45)) {
                loadcontent.toggle()
            }
        }
    }
}
