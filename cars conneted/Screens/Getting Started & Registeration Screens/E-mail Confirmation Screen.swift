//
//  E-mail Confirmation Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI

struct E_mail_Confirmation_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
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
                Text("E-mail Confirmation")
                    .font(AppFonts.semiBold_24)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("E-mail Confirmation")
                        .font(AppFonts.semiBold_24)
                        )
                
                Spacer()
            }
            .padding()
            
            VStack(alignment: .leading){
                HStack{
            Text("Thankyou! Your email has verified successfully. Now you can proceed to setup your profile.")
                .font(AppFonts.regular_14)
                    Spacer()
                }
            }.padding(.leading)
                .padding(.trailing)
            
          Image("ant-design_check-circle-filled")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.widthBlockSize*70, height: UIScreen.heightBlockSize*40)
            
            Button(action: {}, label: {
                Text("Profile Completion")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            .padding(.top)
                
            
            
                Spacer()
        }
        
        .navigationBarHidden(true)
    }
}

struct E_mail_Confirmation_Screen_Previews: PreviewProvider {
    static var previews: some View {
        E_mail_Confirmation_Screen()
    }
}
