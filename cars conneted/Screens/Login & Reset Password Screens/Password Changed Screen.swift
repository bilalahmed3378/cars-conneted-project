//
//  Password Changed Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI

struct Password_Changed_Screen: View {
    var body: some View {
        VStack{
           
                HStack{
                    Button(action: {}, label: {
                        
                        Image("Icons-2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                    })
                   
                    
                    Spacer()
                    
                   
                   
                }
                .padding()
            
            HStack{
                Text("Password Changed")
                    .font(AppFonts.semiBold_24)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Password Changed")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding()
            
            
            Text("You have changed your password successfully. You can login now by pressing login button.")
                .font(AppFonts.regular_14)
                .padding(.leading,10)
                .padding(.trailing,10)
                
            
          Image("ant-design_check-circle-filled")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            Button(action: {}, label: {
                Text("Back to Login")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: 70)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            .padding(.top,30)
                
            
            
                Spacer()
        }
        .padding(.leading)
        .padding(.trailing)
    }
}

struct Password_Changed_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Password_Changed_Screen()
    }
}
