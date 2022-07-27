//
//  Checkout Screen 2.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 26/07/2022.
//

import SwiftUI

struct Checkout_Screen_2: View {
    var body: some View {
        ZStack{
            
            VStack{
                // top bar
        VStack{
            
           
            HStack{
                Button(action: {}, label: {
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 26, height: 30)
                })
              
                
               Spacer()
                
                Text("Checkout")
                    .foregroundColor(.white)
                    .font(.title)
                
                Spacer()
                
                Button(action: {}, label: {
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 26, height: 30)
                    
                })
               
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
                
                VStack{
                    
                    HStack{
                    Text("Purchase Successful!")
                            .font(.title)
                        .foregroundColor(AppColors.redGradientColor1)
                        Spacer()
                    }
                    
                    HStack{
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Auctor sagittis sed lobortis pretium sagittis porta.")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.top,10)
                    
                    Image("amico")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 300)
                        .padding()
                    
                    Button(action: {}, label: {
                        Text("View Recipt")
                            .foregroundColor(.white)
                            .frame(width: 370, height: 60)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    })
                    
                    Button(action: {}, label: {
                        Text("Add Payment Method")
                            .foregroundColor(AppColors.redGradientColor1)
                            .frame(width: 377, height: 60)
                            .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor2))
                    })
                    .padding()
                        
                    
                       
                    
                }
                .padding()
                .padding(.leading,7)
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct Checkout_Screen_2_Previews: PreviewProvider {
    static var previews: some View {
        Checkout_Screen_2()
    }
}
