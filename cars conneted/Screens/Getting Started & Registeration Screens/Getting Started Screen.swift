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
                    .frame(width: 420, height: 400)
                Spacer()
            }
            
           
            
            VStack{
                Spacer()
                
                VStack{
                    
                HStack{
                    Image("Ellipse 11")
                }
                
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
                }.padding()
                
                Button(action: {}, label: {
                    Text("SignUp")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 70)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top,30)
                
                Button(action: {}, label: {
                    Text("Login")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 70)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top)
                .padding(.bottom)
                    
                }.background(RoundedCorners(tl: 40, tr: 40, bl: 0, br: 0) .fill(.white).frame(width: 420, height: 520))
                
            }.padding()
            
            
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct Getting_Started_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Getting_Started_Screen()
    }
}
