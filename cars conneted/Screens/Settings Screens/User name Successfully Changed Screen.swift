//
//  User name Successfully Changed Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 16/08/2022.
//

import SwiftUI

struct User_name_Successfully_Changed_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        VStack{
           
               Spacer()
            
            HStack{
                Text("Username Successfully Changed")
                    .font(AppFonts.SemiBold_20)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Username Successfully Changed")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding()
            .padding(.top,-20)
            
            VStack(alignment: .leading){
            HStack{
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
                Spacer()
            }
            }.padding(.leading)
                .padding(.trailing)
            
            HStack{
                Spacer()
                
                LottieView(name: LottieAnimations.successAnimation)
                    .frame(width: 300, height: 300)
                
                Spacer()
            }
            
            NavigationLink(destination: MainTabContainer(), label: {
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
        
        .navigationBarHidden(true)
    }
}

struct User_name_Successfully_Changed_Screen_Previews: PreviewProvider {
    static var previews: some View {
        User_name_Successfully_Changed_Screen()
    }
}
