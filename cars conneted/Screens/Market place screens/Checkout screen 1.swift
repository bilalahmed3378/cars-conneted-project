//
//  Checkout screen 1.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 26/07/2022.
//

import SwiftUI

struct Checkout_screen_1: View {
    var body: some View {
        ZStack{
            
            VStack{
                // top bar
        VStack{
            
           
            HStack{
                Button(action: {}, label: {
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                })
               
                
               Spacer()
                
                Text("Checkout")
                    .foregroundColor(.white)
                    .font(.title)
                
                Spacer()
                Button(action: {}, label: {
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                })
              
                
                
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
                    Text("Checkout")
                            .font(.title)
                        .foregroundColor(AppColors.redGradientColor1)
                        Spacer()
                    }.padding(.leading)
                        .padding(.top,10)
                    
                        HStack{
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Auctor sagittis sed lobortis pretium sagittis porta.")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(.top,10)
                        .padding(.leading)
                  
                    
                HStack{
                    Text("Total 4 Products")
                        .foregroundColor(AppColors.redGradientColor1)
                    Spacer()
                }
                .frame(width: 377, height: 20)
                .padding(.top,15)
                .padding(.bottom,15)
                
               
                    LazyVStack{
                        ForEach(0...3 , id: \.self){ index in
                            marketPlaceCart2()
                    }
                        
                }
           
                Image("Line 13")
                    .padding()
                
                HStack{
                    Text("Total Items")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("15")
                        .foregroundColor(AppColors.redGradientColor1)
                }
                .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                HStack{
                    Text("Total Amount")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("$7500")
                        .foregroundColor(AppColors.redGradientColor1)
                }
                .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                
                        Button(action: {}, label: {
                            Text("Pay $7500")
                                .foregroundColor(.white)
                                .frame(width: 370, height: 60)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        })
                    
                }
          
                
                
            
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct Checkout_screen_1_Previews: PreviewProvider {
    static var previews: some View {
        Checkout_screen_1()
    }
}
struct marketPlaceCart2 : View {
    
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
            Spacer()
            Text("5")
                .frame(width: 30, height: 30)
                .background(RoundedRectangle(cornerRadius: 5).fill(.white))
            
           
            
        }
        .padding()
        .frame(width: 377, height: 100)
        .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.2))
        
    }
}
