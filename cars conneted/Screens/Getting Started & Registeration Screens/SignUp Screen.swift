//
//  SignUp Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct SignUp_Screen: View {
    
    @StateObject var signupApi  = SignupApi()
        
    @State  var pushToOTP = false

    @State  var pushToLogin = false

    @State var showToast : Bool = false
    @State var toastMessage : String = ""

    @State  var email = ""
    @State  var password = ""
    @State  var confirmPassword = ""
    @State  var isSecured = false
    @State  var isSecured2 = false
    @State var toVerify = false
    @State var toLogin = false
    
//    init (pushToLogin : Binding<Bool>){
//        self._pushToLogin = pushToLogin
//
//    }
    var body: some View {
        ZStack{
            
            NavigationLink(destination: verifyOtpEmailScreen(email: self.email, otpId: self.signupApi.apiResponse?.data?.otp_id ?? ""), isActive: $pushToOTP){
                EmptyView()
            }
            
         
          
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
                                .foregroundColor(AppColors.BlackColor)
                                .font(AppFonts.regular_14)
                        }
                       
                        Text("E-Mail")
                            .foregroundColor(AppColors.BlackColor)
                            .font(AppFonts.regular_14)
                          .padding(.top,10)
                          .frame(maxWidth: .infinity, alignment: .leading)
                         
                        
                          
                        TextField("Email",text:$email)
                            .foregroundColor(AppColors.BlackColor)
                            .font(AppFonts.regular_14)
                          .padding(.vertical, 10)
                          .autocapitalization(.none)
                          .background(Rectangle().frame(height: 1).padding(.top, 30).foregroundColor(AppColors.BlackColor))
                          
                          
                      Text("Password")
                            .foregroundColor(AppColors.BlackColor)
                            .font(AppFonts.regular_14)
                        .padding(.top,10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                      if isSecured {
                        SecureField("Enter Your Password", text: $password)
                              .foregroundColor(AppColors.BlackColor)
                          .autocapitalization(.none)
                          .font(AppFonts.regular_14)
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
                          .font(AppFonts.regular_14)
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
                        
                        Text("Confirm Password")
                            .foregroundColor(AppColors.BlackColor)
                            .font(AppFonts.regular_14)
                          .padding(.top,10)
                          .frame(maxWidth: .infinity, alignment: .leading)
                        if isSecured2 {
                          SecureField("Re-Enter Your Password", text: $confirmPassword)
                                .foregroundColor(AppColors.BlackColor)
                                .font(AppFonts.regular_14)
                            .autocapitalization(.none)
                            .padding(.vertical, 10)
                            .background(Rectangle().frame(height: 1).padding(.top, 30).foregroundColor(AppColors.BlackColor))
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
                                .foregroundColor(AppColors.BlackColor)
                                .font(AppFonts.regular_14)
                            .autocapitalization(.none)
                            .padding(.vertical, 10)
                            .background(Rectangle().frame(height: 1).padding(.top, 30).foregroundColor(AppColors.BlackColor))
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
                            
                            if(self.signupApi.isLoading){
                                ProgressView()
                                    .padding(.bottom,5)
                                    .onDisappear{
                                        if(self.signupApi.isApiCallDone && self.signupApi.isApiCallSuccessful){
                                            
                                            if(self.signupApi.signupSuccessful){
                                                
                                                self.pushToOTP = true
                                            }
                                            else if (self.signupApi.emailAlreadyInUse){
                                                self.toastMessage = "This email already taken. Please try different email."
                                                self.showToast = true
                                            }
                                                                                        
                                        }
                                        else if(self.signupApi.isApiCallDone && (!self.signupApi.isApiCallSuccessful)){
                                            self.toastMessage = "Unable to access internet. Please check you internet connection and try again."
                                            self.showToast = true
                                        }
                                    }

                                
                            }
                            else{
                                Button(action: {
                                    //                            if(self.firstName.isEmpty){
                                    //                                self.toastMessage = "Please enter first name"
                                    //                                self.showToast = true
                                    //                            }
                                    
                                    if (self.email.isEmpty){
                                        self.toastMessage = "Please enter email"
                                        self.showToast = true
                                    }
                                    else if (self.isValidEmail(email: self.email)){
                                        self.toastMessage = "Email seems invalid. Please enter valid email address"
                                        self.showToast = true
                                    }
                                    else if (self.password.isEmpty){
                                        self.toastMessage = "Please enter password"
                                        self.showToast = true
                                    }
                                    else if !(self.isValidPassword()){
                                        self.toastMessage = "Password must be at least 8 characters long and must contains one special charater and number."
                                        self.showToast = true
                                    }
                                    else if (self.confirmPassword.isEmpty){
                                        self.toastMessage = "Please enter confirm password"
                                        self.showToast = true
                                    }
                                    else if (self.password != self.confirmPassword){
                                        self.toastMessage = "Password not matched."
                                        self.showToast = true
                                    }
                                    else{
                                        self.signupApi.signupUser(  email: self.email, password: self.password )
                                    }
                                    
                                }, label: {
                                    Text("SignUp")
                                        .font(AppFonts.semiBold_16)
                                        .fontWeight(.medium)
                                        .foregroundColor(.white)
                                        .frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*6)
                                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                })
                                .padding(.top)
                                .padding(.bottom)
                            }
                            
                            Spacer()
                        }
                        
                        
                        HStack{
                            Spacer()
                            Text("Already have an account?")
                                .foregroundColor(AppColors.BlackColor)
                                .font(AppFonts.regular_14)
                                
                            Button(action: {
                                self.pushToLogin.toggle()
                            }, label: {
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
                        .background(RoundedRectangle(cornerRadius: 15).fill(AppColors.whiteColor).shadow(radius: 10))
                        .padding()
                    
                }
            
            if(showToast){
                Toast(isShowing: self.$showToast, message: self.toastMessage)
            }
            
        }.edgesIgnoringSafeArea(.bottom)
            .navigationBarHidden(true)
        
    }
    
    func isValidPassword() -> Bool {
        // least one digit
        // least one lowercase
        // least one symbol
        //  min 8 characters total
        let password = self.password.trimmingCharacters(in: CharacterSet.whitespaces)
        let passwordRegx = "^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&<>*~:`-]).{8,}$"
        let passwordCheck = NSPredicate(format: "SELF MATCHES %@",passwordRegx)
        return passwordCheck.evaluate(with: password)

    }
    
    

    
    func isValidEmail(email: String) -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return !emailTest.evaluate(with: email)
        }
}


