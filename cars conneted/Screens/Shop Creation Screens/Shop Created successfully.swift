//
//  Shop Created successfully.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 13/09/2022.
//

import SwiftUI

struct Shop_Created_successfully: View {
    var body: some View {
        VStack{
           
            Spacer()
            
            HStack{
                Text("Shop Created Successfully")
                    .font(AppFonts.SemiBold_20)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Shop Created Successfully")
                        .font(AppFonts.SemiBold_20)
                        )
                
                Spacer()
            }
            .padding()
            
            
            
            LottieView(name: LottieAnimations.successAnimation)
                .frame(width: 300, height: 300)
            
            
            NavigationLink(destination: {
                My_Shop_My_View()
            }, label: {
                Text("View Shop")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
           
            .padding(.top,30)
            })
              
                
            
            
                Spacer()
        }
        .padding(.leading)
        .padding(.trailing)
        .navigationBarHidden(true)
    }
}

struct Shop_Created_successfully_Previews: PreviewProvider {
    static var previews: some View {
        Shop_Created_successfully()
    }
}
