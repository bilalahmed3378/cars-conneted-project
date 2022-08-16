//
//  Login Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 04/08/2022.
//

import SwiftUI

struct Login_Screen: View {
    
    @State var email = "syedbabermehmood26@gmail.com"
      @State var password = "12345678"
   
    @ObservedObject var loginApi : LoginApi = LoginApi()
    
    @State var showToast : Bool = false
    
    @State var toastMessage : String = ""
    
    @Binding var toHomeScreen : Bool
    
    
    
    
  
    
    
    
    var body: some View {
       
        ZStack{
            NavigationLink(destination: MainTabContainer(), isActive: $toHomeScreen) { EmptyView() }
            VStack{
                Image("Group 4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 420, height: 800)
                Spacer()
            }
            
            VStack{
                HStack{
                Text("Login")
                    .font(AppFonts.semiBold_24)
                    .foregroundColor(AppColors.redGradientColor1)
                    .padding()
                    
                    Spacer()
                }
                
                HStack{
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.gray)
                    .padding()
                    
                    Spacer()

                }
                
                Text("E-Mail")
                    .font(AppFonts.regular_12)
                          .padding(.top,28)
                          .frame(maxWidth: .infinity, alignment: .leading)
                          .foregroundColor(.gray)
                          .padding(.leading)
                          .padding(.trailing)
                        
                
                TextField("jhondoe@gmail.com",text:$email)
                    .font(AppFonts.regular_14)
                          .padding(.vertical, 10)
                          .autocapitalization(.none)
                          .background(Rectangle().frame(height: 1).padding(.top, 42))
                          .foregroundColor(.gray)
                          .padding(.leading)
                          .padding(.trailing)
                
                
                Text("Password")
                    .font(AppFonts.regular_12)
                          .padding(.top,28)
                          .frame(maxWidth: .infinity, alignment: .leading)
                          .foregroundColor(.gray)
                          .padding(.leading)
                          .padding(.trailing)
                       
                
                TextField("**********",text:$password)
                    .font(AppFonts.regular_14)
                          .padding(.vertical, 10)
                          .autocapitalization(.none)
                          .background(Rectangle().frame(height: 1).padding(.top, 42))
                          .foregroundColor(.gray)
                          .padding(.leading)
                          .padding(.trailing)
                
                HStack{
                    Spacer()
                    Text("Forget Password")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                    Text("Reset")
                        .font(AppFonts.medium_14)
                        .foregroundColor(AppColors.redGradientColor1)
                    
                }.padding()
                Group{
                HStack{
                    Spacer()
                    
                    if(self.loginApi.isloading){
                        
                        ProgressView()
                    }
                    
                    else{
                        Button(action: {
                            if (self.email.isEmpty) {
                                self.toastMessage = "Please enter Email"
                                self.showToast = true
                            }
                            
                            if (self.password.isEmpty) {
                                self.toastMessage = "Please enter Password"
                                self.showToast = true
                            }
                            
                            else{
                                self.loginApi.login(email: self.email, password: self.password)
                            }
                            
                          
                        }, label: {
                            
                            Text("Login")
                                .font(AppFonts.semiBold_16)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: 350, height: 70)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                .onAppear{
                                    if (self.loginApi.isApiCallDone && self.loginApi.isApiCallSuccessful) {
                                        if(self.loginApi.loginSuccessful){
                                            if (self.loginApi.ApiResponse!.data!.user!.user_type == "user" ) {
                                                AppData().userLoggedIn()
                                                AppData().saveUserDetails(user: self.loginApi.ApiResponse!.data!.user!)
                                               
                                                self.toHomeScreen = true
                                            }
                                            else{
                                                self.toastMessage = "Email or password incorrent"
                                                self.showToast = true
                                            }
                                        }
                                        else{
                                            self.toastMessage = "Email or password incorrent"
                                            self.showToast = true
                                        }
                                    }
                        }
                                    
                                })
                    }
                   
                    }
                  
                    
            
                HStack{
                    Spacer()
                    Text("Don't Have an account?")
                        .font(AppFonts.regular_12)
                    Text("Register")
                        .font(AppFonts.medium_14)
                        .foregroundColor(AppColors.redGradientColor1)
                    Spacer()
                }.padding()
                
                }
                Group{
                HStack{
                    Spacer()
                    HStack{
                Text("Login with Google")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.semiBold_16)
                   
                        Image("flat-color-icons_google")
                            .padding()
                            .frame(width: 30, height: 30)
                    } .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor2).frame(width: 350, height: 70))
                        .padding()
                    
                   Spacer()
                }.padding()
                
                HStack{
                   
                    HStack{
                Text("Login with Google")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.semiBold_16)
                   
                        Image("ant-design_facebook-filled")
                            .padding()
                            .frame(width: 30, height: 30)
                    } .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor2).frame(width: 350, height: 70))
                        .padding()
                    
                 
                }.padding()
                        .padding(.top,-15)
                    
                }
                
                
                
                Spacer()
            }
            .padding()
            .frame(width: 350, height: 700)
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).fill(.white).shadow(color: .black .opacity(0.5), radius: 3, y: 1 ))
            
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        
    }
}


