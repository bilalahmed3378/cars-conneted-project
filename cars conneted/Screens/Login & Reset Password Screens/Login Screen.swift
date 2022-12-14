//
//  Login Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI

struct Login_Screen: View {
    
    @ObservedObject var loginApi : LoginApi = LoginApi()

    @State  var email = ""
    @State  var password = ""
    @State  var isSecured = false
    @State var toHome = false
    @State var toResetPassword = false
    
    @State var remmberMe : Bool = false
    
    @State var showToast : Bool = false
    @State var toastMessage : String = ""
    
    @Binding var pushToLogin : Bool
    
    @Binding var isUserLoggedIn : Bool
    
    @State var forgetPasswordActive : Bool = false
    
    @Binding var isProfileSetUp : Bool
    
    init (pushToLogin : Binding<Bool> , isUserLoggedIn : Binding<Bool>  , isProfileSetUp : Binding<Bool>){
        self._pushToLogin = pushToLogin
        self._isUserLoggedIn = isUserLoggedIn
        self._isProfileSetUp = isProfileSetUp
    }
   
    var body: some View {
        ZStack{
            
            NavigationLink(destination: MainTabContainer(isUserLoggedIn: self.$isUserLoggedIn), isActive: $isUserLoggedIn){
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
                                .foregroundColor(AppColors.BlackColor)
                        }
                       
                        Text("E-Mail")
                        .foregroundColor(AppColors.BlackColor)
                          .padding(.top,10)
                          .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                          
                        TextField("Email",text:$email)
                        .foregroundColor(AppColors.BlackColor)
                          .padding(.vertical, 10)
                          .autocapitalization(.none)
                          .background(Rectangle().frame(height: 1).padding(.top, 30).foregroundColor(AppColors.BlackColor))
                          
                          
                      Text("Password")
                            .foregroundColor(AppColors.BlackColor)
                        .padding(.top,10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                      if isSecured {
                        SecureField("Enter Your Password", text: $password)
                              .foregroundColor(AppColors.BlackColor)
                          .autocapitalization(.none)
                          .padding(.vertical, 10)
                          .background(Rectangle().frame(height: 1).padding(.top, 30).foregroundColor(AppColors.BlackColor))
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
                        .foregroundColor(AppColors.BlackColor)
                          .autocapitalization(.none)
                          .padding(.vertical, 10)
                          .background(Rectangle().frame(height: 1).padding(.top, 30).foregroundColor(AppColors.BlackColor))
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
                                .foregroundColor(AppColors.BlackColor)
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
                            if(self.loginApi.isLoading){
                                HStack{
                                    ProgressView()
                                }
                                .padding()
                            }else{
                                Button(action: {
                                    if(self.email.isEmpty){
                                        self.toastMessage = "Please enter email."
                                        self.showToast = true
                                    }
                                    else if(self.password.isEmpty){
                                        self.toastMessage = "Please enter password."
                                        self.showToast = true
                                    }
                                    else{
                                        
                                        self.loginApi.loginUser(email: self.email, password: self.password)

                                    }
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
                                .onAppear{
                                    if(self.loginApi.isApiCallDone && self.loginApi.isApiCallSuccessful){

                                        if(self.loginApi.loginSuccessful){
                                            
                                                
                                               
                                                    AppData().setRemeberMe(rememberMe: self.remmberMe)
                                                    if(self.remmberMe){
                                                        AppData().saveRememberMeData(email: self.email, password: self.password)
                                                    }
                                                    AppData().userLoggedIn()
                                                    AppData().saveUserDetails(user: self.loginApi.apiResponse!.data!.user!)
                                                    withAnimation{
                                                        self.isProfileSetUp = false
                                                        self.isUserLoggedIn = true
                                                    
                                                }
                                            
                                           
                                        }
                                        else{
                                            self.toastMessage = "Email or password incorrent"
                                            self.showToast = true
                                        }
                                    }
                                    else if(self.loginApi.isApiCallDone && (!self.loginApi.isApiCallSuccessful)){
                                        self.toastMessage = "Unable to access internet. Please check you internet connection and try again."
                                        self.showToast = true
                                    }
                                }
                                
                            }
                        
                            
                            Spacer()
                        }
                        
                        
                        HStack{
                            Spacer()
                            Text("Don't have an account?")
                                .foregroundColor(AppColors.BlackColor)
                                .font(AppFonts.regular_12)
                                
                            NavigationLink(destination: SignUp_Screen(pushToLogin: self.$pushToLogin), label: {
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
                        .background(RoundedRectangle(cornerRadius: 100).strokeBorder(Color.red, lineWidth: 1).frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*6))
                       
                            
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
                            .background(RoundedRectangle(cornerRadius: 100).strokeBorder(Color.red, lineWidth: 1).frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*6))
                           
                            
                            
                            
                        }
                        
                        
                    }.padding()
                        .padding(.bottom,30)
                        .padding(.top,30)
                        .background(RoundedRectangle(cornerRadius: 15).fill(AppColors.whiteColor).shadow(radius: 10))
                        .padding()
                        .padding(.leading)
                        .padding(.trailing)
            
                      
                 
                    Spacer()
                    
                    
               
            if(showToast){
                Toast(isShowing: self.$showToast, message: self.toastMessage)
            }
            
            
            
           
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
            .onAppear{
                let appData = AppData()
                self.remmberMe = appData.isRememberMe()
                if(self.remmberMe){
                    self.email = appData.getUserEmail()
                    self.password = appData.getUserPassword()
                }
                
            }
            
           
    }
}


