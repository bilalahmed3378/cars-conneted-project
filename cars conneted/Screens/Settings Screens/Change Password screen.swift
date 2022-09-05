//
//  Change Password.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 27/07/2022.
//

import SwiftUI

struct Change_Password: View {
    @State var isSecured = false
    @State var isSecured2 = false

    
    @Environment(\.presentationMode) var presentaionMode
    
    @State var password = ""
      @State var confirmPassword = ""
    var body: some View {
        
        VStack{
           
                HStack{
                    Button(action: {
                        
                        self.presentaionMode.wrappedValue.dismiss()
                        
                    }, label: {
                        
                        Image("Icons-2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                    })
                   
                    
                    Spacer()
                    
                    Text("Change Password")
                        .font(AppFonts.SemiBold_20)
                        .offset(x: -10, y: 0)
                    
                    Spacer()
                   
                }
                .padding(.top)
            
            HStack{
                Text("Change Password")
                    .font(AppFonts.semiBold_24)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Change Password")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding(.top)
            .padding(.bottom)
            
            
            VStack(alignment: .leading){
                HStack{
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
                    Spacer()
            }
            }
            
           
            
            Text("Password")
                .font(AppFonts.regular_12)
                      .padding(.top,28)
                      .frame(maxWidth: .infinity, alignment: .leading)
                      .foregroundColor(.gray)
                     
                    
          
            HStack{
            if isSecured {
                SecureField("Set Password", text: $password)
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
                
            } else {
                TextField("Set Password", text: $password)
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
                .font(AppFonts.regular_12)
                      .padding(.top,28)
                      .frame(maxWidth: .infinity, alignment: .leading)
                      .foregroundColor(.gray)
                     
                   
            HStack{
            if isSecured2 {
                SecureField("Set Password", text: $confirmPassword)
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
                
            } else {
                TextField("Set Password", text: $confirmPassword)
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
            }
            
            
            Button(action: {}, label: {
                Text("Submit New Password")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
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

struct Change_Password_Previews: PreviewProvider {
    static var previews: some View {
        Change_Password()
    }
}
