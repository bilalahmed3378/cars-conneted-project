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
    @State var toHome = false
    @State var toResetPassword = false
   
    var body: some View {
        ZStack{
            
            NavigationLink(destination: MainTabContainer(), isActive: $toHome){
                EmptyView()
            }
            
            NavigationLink(destination: Forgot_Password_Screen(), isActive: $toResetPassword){
                EmptyView()
            }
          
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
                                .foregroundColor(AppColors.FixBlackColor)
                        }
                       
                        Text("E-Mail")
                        .foregroundColor(AppColors.FixBlackColor)
                          .padding(.top,10)
                          .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                          
                        TextField("Email",text:$email)
                        .foregroundColor(AppColors.FixBlackColor)
                          .padding(.vertical, 10)
                          .autocapitalization(.none)
                          .background(Rectangle().frame(height: 1).padding(.top, 30).foregroundColor(AppColors.FixBlackColor))
                          
                          
                      Text("Password")
                            .foregroundColor(AppColors.FixBlackColor)
                        .padding(.top,10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                      if isSecured {
                        SecureField("Enter Your Password", text: $password)
                              .foregroundColor(AppColors.FixBlackColor)
                          .autocapitalization(.none)
                          .padding(.vertical, 10)
                          .background(Rectangle().frame(height: 1).padding(.top, 30).foregroundColor(AppColors.FixBlackColor))
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
                        .foregroundColor(AppColors.FixBlackColor)
                          .autocapitalization(.none)
                          .padding(.vertical, 10)
                          .background(Rectangle().frame(height: 1).padding(.top, 30).foregroundColor(AppColors.FixBlackColor))
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
                                .foregroundColor(AppColors.FixBlackColor)
                                .font(AppFonts.regular_12)
                            
                            Button(action: {
                                self.toResetPassword = true
                            }, label: {
                                Text("Reset")
                                    .font(AppFonts.medium_14)
                                    .foregroundColor(AppColors.redGradientColor1)
                            
                            })
                                
                          
                        }
                        
                      
                        Group{
                        HStack{
                            Spacer()
                        Button(action: {
                            self.toHome = true
                        }, label: {
                            Text("Login")
                                .font(AppFonts.semiBold_16)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*7)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        })
                        .padding(.top,10)
                        .padding(.bottom,10)
                        
                            
                            Spacer()
                        }
                        
                        
                        HStack{
                            Spacer()
                            Text("Don't have an account?")
                                .foregroundColor(AppColors.FixBlackColor)
                                .font(AppFonts.regular_12)
                                
                            NavigationLink(destination: SignUp_Screen(), label: {
                                Text("Register")
                                    .font(AppFonts.medium_14)
                                    .foregroundColor(AppColors.redGradientColor1)
                                
                            })
                          
                            Spacer()
                            
                        }.padding(.bottom)
                        
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
                        .background(RoundedRectangle(cornerRadius: 100).strokeBorder(Color.red, lineWidth: 1).frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*7))
                       
                            
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
                            .background(RoundedRectangle(cornerRadius: 100).strokeBorder(Color.red, lineWidth: 1).frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*7))
                           
                            
                            
                            
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
            .navigationBarHidden(true)
    }
}


