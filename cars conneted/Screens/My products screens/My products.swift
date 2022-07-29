//
//  My products.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 27/07/2022.
//

import SwiftUI

struct My_products: View {
    var body: some View {
        VStack{
            
            VStack{
                
                // top bar
                HStack{
                    
                    Image("side menu icon white")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                    Spacer()
                    
                    Text("My Products")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                    
                    
                }.padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.top,20)
              
            }
            .padding(.top,40)
                .padding(.bottom,30)
                .background(
                    Image("home screen background")
                        .resizable())
            
            ScrollView{
                HStack{
                    Text("45 Total Results")
                        .font(AppFonts.medium_16)
                        .foregroundColor(AppColors.redGradientColor1)
                    Spacer()
                }.padding()
                    .padding(.leading,5)
                
                LazyVStack{
                    ForEach(0...5 , id: \.self ){ index in
                        myProductsCards()
                }
              
            }
            
        }
           
        
    } .edgesIgnoringSafeArea(.all)
}

struct My_products_Previews: PreviewProvider {
    static var previews: some View {
        My_products()
    }
}

struct myProductsCards : View {
    
   
    
    var body: some View {
       
        ZStack(alignment: .leading){
            Image("Rectangle 1265")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 375, height: 220)
                .cornerRadius(10)
            
            VStack(alignment: .leading){
                HStack{
                    Image("Rectangle 1266")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                    
                    VStack(alignment: .leading){
                        Text("Jhon Deo Smith")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_12)
                            .fontWeight(.medium)
                            .padding(.bottom,3)
                        Text("Tot. Sales 13")
                            .foregroundColor(.white)
                            .font(AppFonts.regular_12)
                    }
                    Spacer()
                    Text("$50")
                        .foregroundColor(.white)
                        .font(AppFonts.semiBold_18)
                    
                }.padding()
                    .padding(.bottom,-5)
                    .padding(.top,5)
                
                HStack{
                Text("BMW Lazer Head Lights")
                        .font(AppFonts.semiBold_16)
                    .foregroundColor(.white)
                }.padding(.leading)
                
                HStack{
                    Text("Spare Parts")
                        .foregroundColor(.white)
                        .font(.caption)
                }.padding(.leading)
                    .padding(.top,-3)
                
                HStack{
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                }
                .padding(.leading)
                .padding(.top,1)
                .padding(.bottom,5)
                
                HStack{
                    Text("$500")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.white)
                        .frame(width: 60, height: 35)
                        .background(RoundedRectangle(cornerRadius: 50).fill(.gray))
                    
                    Spacer()
                    Button(action: {
                        
                      
                        
                    }, label: {
                        Text("View Details")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.white)
                            .frame(width: 250, height: 35)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    })
                  
                       
                }
                .padding(.leading)
                .padding(.trailing)
                
                Spacer()
                
              
               
            }
            
        }
        .frame(width: 375, height: 200)
        .padding(.bottom,20)
        .padding(.top,10)
    }
}
}
