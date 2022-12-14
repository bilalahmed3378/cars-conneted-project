//
//  Club Created Successfully.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

struct Club_Created_Successfully: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        VStack{
           
           
              
            HStack{
                Text("Club Created Successfully")
                    .font(AppFonts.SemiBold_20)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Club Created Successfully")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold))
                
                Spacer()
            }.padding(.top)
            
            
            HStack{
                Text("Congratulations!")
                    .font(AppFonts.SemiBold_20)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Congratulations!")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding(.top)
            .padding(.bottom)
            
          
            LottieView(name: LottieAnimations.successAnimation)
                .frame(width: 300, height: 300)
            
            
           
            
            
            NavigationLink(destination: {
            }, label: {
                Text("Proceed to Home")
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

struct Club_Created_Successfully_Previews: PreviewProvider {
    static var previews: some View {
        Club_Created_Successfully()
    }
}
