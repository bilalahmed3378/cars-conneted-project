//
//  Login Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI

struct Login_Screen: View {
    @State  var email = ""
    @State  var password = ""
    @State  var isSecured = false
    var body: some View {
        ZStack{
          
            VStack{
                Image("Login Screen background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.widthBlockSize*102, height: UIScreen.heightBlockSize*70)
                
                Spacer()
            }
                
           
            
                   Spacer()
                    VStack(alignment: .leading){
                        HStack{
                        Text("Login")
                            .font(AppFonts.semiBold_22)
                            .fontWeight(.semibold)
                            .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                            .mask( Text("Login")
                                .font(AppFonts.semiBold_22)
                                .fontWeight(.semibold))
                            .padding(.bottom)
                            Spacer()
                            
                        }
                        
                  
                        
                        HStack{
                            Text("Provide your registered email and password to login to Cars Connected!")
                                .font(AppFonts.regular_14)
                        }
                       
                        
                        
                        
                        Text("E-Mail")
                          .padding(.top,20)
                          .frame(maxWidth: .infinity, alignment: .leading)
                        
                          
                        TextField("Email",text:$email)
                          .padding(.vertical, 10)
                          .autocapitalization(.none)
                          .background(Rectangle().frame(height: 1).padding(.top, 40))
                          .foregroundColor(.black)
                          
                      Text("Password")
                        .padding(.top,20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                      if isSecured {
                        SecureField("Enter Your Password", text: $password)
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
                        TextField("Enter Your Password", text: $password)
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
                        
                        HStack{
                            Spacer()
                            
                            Text("Forget Password?")
                                .font(AppFonts.regular_12)
                            
                            Text("Reset")
                                .font(AppFonts.medium_14)
                                .foregroundColor(AppColors.redGradientColor1)
                        }.padding(.top)
                        
                      
                        Group{
                        HStack{
                            Spacer()
                        Button(action: {}, label: {
                            Text("Login")
                                .font(AppFonts.semiBold_16)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: UIScreen.widthBlockSize*85, height: 70)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        })
                        .padding(.top)
                        .padding(.bottom)
                            
                            Spacer()
                        }
                        
                        
                        HStack{
                            Spacer()
                            Text("Don't have an account?")
                                .font(AppFonts.regular_12)
                                
                            
                            Text("Register")
                                .font(AppFonts.medium_14)
                                .foregroundColor(AppColors.redGradientColor1)
                            
                            Spacer()
                            
                        }
                        
                        HStack{
                      Spacer()
                            Image("google icons")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .padding(.trailing)
                            
                          Text("Continue With Google")
                                .font(AppFonts.medium_14)
                            .foregroundColor(AppColors.redGradientColor1)
                    Spacer()
                        }
                        .padding(20)
                        .background(RoundedRectangle(cornerRadius: 100).strokeBorder(Color.red, lineWidth: 1).frame(width: UIScreen.widthBlockSize*80, height: 70))
                        .padding(.top,20)
                            
                            HStack{
                          Spacer()
                                Image("facebook icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .padding(.trailing)
                                
                              Text("Continue With Facebook")
                                    .font(AppFonts.medium_14)
                                .foregroundColor(AppColors.redGradientColor1)
                        Spacer()
                            }
                            .padding(20)
                            .background(RoundedRectangle(cornerRadius: 100).strokeBorder(Color.red, lineWidth: 1).frame(width: UIScreen.widthBlockSize*80, height: 70))
                            .padding(.top,20)
                            
                            
                            
                        }
                        
                        
                    }.padding()
                        .padding(.bottom,30)
                        .padding(.top,30)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white).shadow(radius: 10))
                        .padding()
                        .padding(.leading)
                        .padding(.trailing)
            
                      
                 
                    Spacer()
                    
                    
                
            
            
            
           
        }.edgesIgnoringSafeArea(.top)
    }
}

struct Login_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Login_Screen()
    }
}
