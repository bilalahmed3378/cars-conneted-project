//
//  Reset Password.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI

struct Reset_Password: View {
    @State  var password = ""
    @State  var confirmPassword = ""
    @State var isSecured = false
    @State var isSecured2 = false
    
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
                Text("Reset Credentials")
                    .font(AppFonts.semiBold_24)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Reset Credentials")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding(.bottom)
            .padding(.top)
            
            
            
            Text("A strong password is recommended. Dont use a password that you have already used.")
                .font(AppFonts.regular_14)
               
               
                
            
            Text("Password")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
             
            
            HStack{
            if isSecured {
              SecureField("***********", text: $password)
                .autocapitalization(.none)
                .padding(.vertical, 10)
                .background(Rectangle().frame(height: 1).padding(.top, 40))
                .overlay(HStack{
                  Spacer()
                  Button(action: {
                    isSecured = !isSecured
                  }) {
                    Image(systemName: self.isSecured ? "eye.slash" : "eye")
                      .accentColor(.gray)
                  }
                })
            }
            else {
              TextField("************", text: $password)
                .autocapitalization(.none)
                .padding(.vertical, 10)
                .background(Rectangle().frame(height: 1).padding(.top, 40))
                .overlay(HStack{
                  Spacer()
                  Button(action: {
                    isSecured = !isSecured
                  }) {
                    Image(systemName: self.isSecured ? "eye.slash" : "eye")
                      .accentColor(.gray)
                  }
                })
            }
                
        }
            
            Text("Confirm Password")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
              
            if isSecured2 {
              SecureField("***********", text: $confirmPassword)
                .autocapitalization(.none)
                .padding(.vertical, 15)
                .background(Rectangle().frame(height: 1).padding(.top, 40))
                
                .overlay(HStack{
                  Spacer()
                  Button(action: {
                    isSecured2 = !isSecured2
                  }) {
                    Image(systemName: self.isSecured2 ? "eye.slash" : "eye")
                      .accentColor(.gray)
                  }
                })
            } else {
              TextField("**********", text: $confirmPassword)
                .autocapitalization(.none)
                .padding(.vertical, 10)
                .background(Rectangle().frame(height: 1).padding(.top, 40))
                .overlay(HStack{
                  Spacer()
                  Button(action: {
                    isSecured2 = !isSecured2
                  }) {
                    Image(systemName: self.isSecured2 ? "eye.slash" : "eye")
                      .accentColor(.gray)
                  }
                })
            }
           
            Button(action: {}, label: {
                Text("Save Password")
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
        .navigationBarHidden(true)
    }
}

struct Reset_Password_Previews: PreviewProvider {
    static var previews: some View {
        Reset_Password()
    }
}
