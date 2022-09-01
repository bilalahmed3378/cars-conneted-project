//
//  Getting Started Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct Getting_Started_Screen: View {
    var body: some View {
        ZStack{
            
            
            
            VStack{
                Image("unsplash_tHI0IUmtbWQ")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.widthBlockSize*100, height: UIScreen.heightBlockSize*100)
                Spacer()
            }
            
            VStack{
                Spacer()
                
                VStack{
                    
                HStack{
                    Image("Ellipse 11")
                }.padding()
               
                HStack{
                    Text("Cars Connected")
                        .font(AppFonts.semiBold_22)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Cars Connected")
                            .font(AppFonts.semiBold_22)
                            .fontWeight(.semibold))
                    
                }.padding()
                
                HStack{
                    Text("Cars connected a social platform that connects people to post, buy and sell, create clubs and post events. ")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                }.padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                
                Button(action: {}, label: {
                    Text("SignUp")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*8)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top,10)
                
                Button(action: {}, label: {
                    Text("Login")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*8)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top,10)
                .padding(.bottom,30)
                    
                }.background(RoundedCorners(tl: 40, tr: 40, bl: 0, br: 0) .fill(.white).frame(width: UIScreen.widthBlockSize*100, height: UIScreen.heightBlockSize*65).overlay(VStack{
                    Spacer()
                    HStack{
                        Spacer()
                    Image("Group 8727")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*40)
                    }
                }.edgesIgnoringSafeArea(.bottom)))
                
            }
            
            
            
            
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        
    }
}

struct Getting_Started_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Getting_Started_Screen()
    }
}
