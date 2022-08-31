//
//  Forgot Password.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI

struct Forgot_Password_Screen: View {
    @State  var email = ""
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        ZStack{
            
            VStack{
                HStack{
                    
                Image("Group 2-2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.widthBlockSize*50, height: UIScreen.heightBlockSize*50)
                    
                    Spacer()
                    
                }.padding()
                
                Spacer()
            }.edgesIgnoringSafeArea(.top)
                
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
                Text("Forgot Password?")
                    .font(AppFonts.semiBold_24)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Forgot Password?")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding()
            
            
            Text("Dont remember your password? We have made it easier to recover your account password.")
                .font(AppFonts.regular_14)
                .padding(.leading,10)
                .padding(.trailing,10)
                
            Text("E-Mail")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.leading,10)
              .padding(.trailing,10)
            
              
            TextField("Email",text:$email)
                .foregroundColor(AppColors.redGradientColor1)
              .padding(.vertical, 10)
              .autocapitalization(.none)
              .background(Rectangle().frame(height: 1).padding(.top, 40))
              .foregroundColor(.black)
              .padding(.leading,10)
              .padding(.trailing,10)
       
            Button(action: {}, label: {
                Text("Send OTP")
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
                
           
        } .navigationBarHidden(true)
    }
}

struct Forgot_Password_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Forgot_Password_Screen()
    }
}
