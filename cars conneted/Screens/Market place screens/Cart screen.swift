//
//  Cart.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/07/2022.
//

import SwiftUI

struct Cart: View {
    var body: some View {
        ZStack{
            
            VStack{
                // top bar
        VStack{
            
           
            HStack{
                Image("back icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                
               Spacer()
                
                Text("Cart")
                    .foregroundColor(.white)
                    .font(.title)
                
                Spacer()
                
                Image("doted icons-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
                
            }.padding(.leading,24)
                .padding(.trailing,24)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
                
                ScrollView(.vertical, showsIndicators: false){
                    
                HStack{
                    Text("Total 8 Items")
                        .foregroundColor(AppColors.redGradientColor1)
                    Spacer()
                }
                .frame(width: 377, height: 20)
                .padding(.top,15)
                .padding(.bottom,15)
                
               
                    LazyVStack{
                        ForEach(0...3 , id: \.self){ index in
                            marketPlaceCart()
                    }
                        
                }
           
                Image("Line 13")
                    .padding()
                
                HStack{
                    Text("Total Products")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("25")
                }
                .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                HStack{
                    Text("Sub Total")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("$2500")
                }
                .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                HStack{
                    Text("Taxes")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("$20")
                }
                .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                    HStack{
                        Text("$2520")
                            .font(.title)
                            .foregroundColor(AppColors.redGradientColor2)
                        Spacer()
                        
                        Button(action: {}, label: {
                            Text("Check out")
                                .foregroundColor(.white)
                                .frame(width: 200, height: 50)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        })
                      
                          
                        
                    }.padding()
                    
                }
          
                
                
            
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart()
    }
}

struct marketPlaceCart : View {
    
    var body: some View {
        
        HStack{
            Image("Rectangle 1268")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
            
            VStack(alignment: .leading){
                Text("BBS Double Alloy Rims")
                Spacer()
                Text("Spare Parts")
                    .font(.caption)
                    .foregroundColor(.gray)
                Spacer()

                Text("$500")
                    .font(.caption)
                    .foregroundColor(AppColors.redGradientColor1)
                
            }
            .frame(width: 190, height: 70)
            
            Text("5")
                .frame(width: 30, height: 30)
                .background(RoundedRectangle(cornerRadius: 5).fill(.white))
            
            VStack{
                Button(action: {}, label: {
                    Image("bxs_minus-square")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                })
               
                Button(action: {}, label: {
                    Image("bxs_minus-square-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                })
             
            }
            
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.2))
    }
}
