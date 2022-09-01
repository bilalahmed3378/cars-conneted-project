//
//  SignUp Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct SignUp_Screen: View {
    @State  var email = ""
    @State  var password = ""
    @State  var confirmPassword = ""
    @State  var isSecured = false
    @State  var isSecured2 = false
    var body: some View {
        ZStack{
          
           VStack{
               Spacer()
                
            Image("bilal2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.widthBlockSize*100, height: UIScreen.heightBlockSize*70)}
            
                VStack{
                   
                    VStack(alignment: .leading){
                        HStack{
                        Text("Signup")
                            .font(AppFonts.semiBold_22)
                            .fontWeight(.semibold)
                            .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                            .mask( Text("Signup")
                                .font(AppFonts.semiBold_22)
                                .fontWeight(.semibold))
                            .padding(.bottom,10)
                            Spacer()
                            
                        }
                        
                  
                        
                        HStack{
                            Text("Welcome to Cars Connected.")
                                .font(AppFonts.regular_12)
                        }
                       
                        Text("E-Mail")
                            .font(AppFonts.regular_12)
                          .padding(.top,10)
                          .frame(maxWidth: .infinity, alignment: .leading)
                         
                        
                          
                        TextField("Email",text:$email)
                            .font(AppFonts.regular_14)
                          .padding(.vertical, 10)
                          .autocapitalization(.none)
                          .background(Rectangle().frame(height: 1).padding(.top, 30))
                          .foregroundColor(.black)
                          
                      Text("Password")
                            .font(AppFonts.regular_12)
                        .padding(.top,10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                      if isSecured {
                        SecureField("Enter Your Password", text: $password)
                          .autocapitalization(.none)
                          .font(AppFonts.regular_14)
                          .padding(.vertical, 10)
                          .background(Rectangle().frame(height: 1).padding(.top, 30))
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
                          .font(AppFonts.regular_14)
                          .padding(.vertical, 10)
                          .background(Rectangle().frame(height: 1).padding(.top, 30))
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
                        
                        Text("Confirm Password")
                            .font(AppFonts.regular_14)
                          .padding(.top,10)
                          .frame(maxWidth: .infinity, alignment: .leading)
                        if isSecured2 {
                          SecureField("Set Password", text: $confirmPassword)
                                .font(AppFonts.regular_14)
                            .autocapitalization(.none)
                            .padding(.vertical, 10)
                            .background(Rectangle().frame(height: 1).padding(.top, 30))
                            .overlay(HStack{
                              Spacer()
                              Button(action: {
                                isSecured2 = !isSecured2
                              }) {
                                Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                  .accentColor(.gray)
                              }
                            })
                        } else {
                          TextField("Re-Enter Your Password", text: $confirmPassword)
                                .font(AppFonts.regular_14)
                            .autocapitalization(.none)
                            .padding(.vertical, 10)
                            .background(Rectangle().frame(height: 1).padding(.top, 30))
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
                        Group{
                        HStack{
                            Spacer()
                        Button(action: {}, label: {
                            Text("SignUp")
                                .font(AppFonts.semiBold_16)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*6)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        })
                        .padding(.top)
                        .padding(.bottom)
                            
                            Spacer()
                        }
                        
                        
                        HStack{
                            Spacer()
                            Text("Already have an account?")
                                .font(AppFonts.regular_12)
                                
                            Button(action: {}, label: {
                                Text("Login")
                                    .font(AppFonts.medium_14)
                                    .foregroundColor(AppColors.redGradientColor1)
                            })
                          
                            
                            Spacer()
                            
                        }
                        
                            Button(action: {}, label: {
                                HStack{
                              Spacer()
                                    Image("google icons")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        .padding(.trailing)
                                    
                                  Text("Login With Google")
                                        .font(AppFonts.medium_14)
                                    .foregroundColor(AppColors.redGradientColor1)
                            Spacer()
                                }
                                .padding(20)
                                .background(RoundedRectangle(cornerRadius: 100).strokeBorder(Color.red, lineWidth: 1).frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*6))
                               
                            })
                      
                            Button(action: {}, label: {
                                HStack{
                              Spacer()
                                    Image("facebook icon")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        .padding(.trailing)
                                    
                                  Text("Login With Facebook")
                                        .font(AppFonts.medium_14)
                                    .foregroundColor(AppColors.redGradientColor1)
                            Spacer()
                                }
                                .padding(20)
                                .background(RoundedRectangle(cornerRadius: 100).strokeBorder(Color.red, lineWidth: 1).frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*6))
                            })
                           
                            
                            
                            
                           
                        }
                        
                        
                    }.padding()
                        .padding(.top,20)
                        .padding(.bottom,20)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white).shadow(radius: 10))
                        .padding()
                    
                }
            
        }.edgesIgnoringSafeArea(.bottom)
            .navigationBarHidden(true)
    }
}

struct SignUp_Screen_Previews: PreviewProvider {
    static var previews: some View {
        SignUp_Screen()
    }
}
