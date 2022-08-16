//
//  E-Mail Confirmation screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 16/08/2022.
//

import SwiftUI

struct E_Mail_Confirmation_screen: View {
    var body: some View {
        VStack(alignment: .leading){
           
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
                Text("E-mail Verified Successfully")
                    .font(AppFonts.SemiBold_20)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("E-mail Verified Successfully")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding()
            
            
            Text("Thankyou! Your Email has verified and updated \nsuccessfully")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
                .padding()
            
            HStack{
                Spacer()
          Image("ant-design_check-circle-filled")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                Spacer()
            }
            
            HStack{
                Spacer()
            Button(action: {}, label: {
                Text("Proceed to Home")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 70)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            .padding(.top,30)
             
                Spacer()
            }
            
            
                Spacer()
        }
        .padding(.leading)
        .padding(.trailing)
        .navigationBarHidden(true)
    }
}

struct E_Mail_Confirmation_screen_Previews: PreviewProvider {
    static var previews: some View {
        E_Mail_Confirmation_screen()
    }
}
