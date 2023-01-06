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
    @StateObject var ResetPasswordApi = resetPasswordApi()
    
    @State var showToast = false
    @State var toastMessage = ""
    
    @State var email: String
    
    @State var otp : String
    
    @State var token: String
    
    @Environment(\.presentationMode) var presentaionMode
    
    @State var toPasswordChanged = false
    
    var body: some View {
        
        ZStack{
            
            VStack{
                
                NavigationLink(destination: Password_Changed_Screen(), isActive: $toPasswordChanged){
                    EmptyView()
                }
                
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
                    
                    
                    
                }
                .padding()
                
                HStack{
                    Text("Reset Credentials")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Reset Credentials")
                            .font(AppFonts.semiBold_24)
                        )
                    
                    Spacer()
                }
                .padding()
                
                
                VStack(alignment: .leading){
                    HStack{
                        Text("A strong password is recommended. Dont use a password that you have already used.")
                            .font(AppFonts.regular_14)
                        Spacer()
                    }
                }.padding(.leading)
                    .padding(.trailing)
                
                
                Text("Password")
                    .padding(.top,20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.trailing)
                
                
                HStack{
                    
                    if isSecured {
                        
                        SecureField("***********", text: $password)
                            .autocapitalization(.none)
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
                    
                    else {
                        TextField("************", text: $password)
                            .autocapitalization(.none)
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
                    
                } .padding(.leading)
                    .padding(.trailing)
                
                Text("Confirm Password")
                    .padding(.top,10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.trailing)
                
                HStack{
                    
                    if isSecured2 {
                        SecureField("***********", text: $confirmPassword)
                            .autocapitalization(.none)
                            .padding(.vertical, 15)
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
                    } else {
                        TextField("**********", text: $confirmPassword)
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
                    
                }
                .padding(.leading)
                .padding(.trailing)
                
                Button(action: {
                    
                    if (self.password.isEmpty){
                        
                        self.showToast = true
                        self.toastMessage = "Please enter password."
                        
                    }
                    
                    else if !(self.password == self.confirmPassword){
                        
                        self.showToast = true
                        self.toastMessage = "Passwords do not match."
                        
                        
                    }
                    
                    else if !(self.isValidPassword()){
                        self.toastMessage = "Password must be at least 8 characters long and must contains one special charater and number."
                        self.showToast = true
                    }
                    
                    else{
                        
                        self.ResetPasswordApi.resetPassword(password: self.password, token: self.token)
                        
                    }
                    
                }, label: {
                    
                    
                    if(self.ResetPasswordApi.isLoading){
                        
                        HStack{
                            
                            Spacer()
                            
                            ProgressView()
                                .padding()
                            
                            Spacer()
                            
                        }
                    }
                    
                    else{
                        
                        Text("Save Password")
                            .font(AppFonts.semiBold_16)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                            .onAppear{
                                if(self.ResetPasswordApi.isApiCallDone && self.ResetPasswordApi.isApiCallSuccessful){
                                    
                                    if(self.ResetPasswordApi.passwordChanged){
                                        
                                        self.toPasswordChanged = true
                                    }
                                    else{
                                        self.toastMessage = "Password could not be updated"
                                        self.showToast = true
                                    }
                                    
                                }
                                else if(self.ResetPasswordApi.isApiCallDone && (!self.ResetPasswordApi.isApiCallSuccessful)){
                                    self.toastMessage = "Unable to access internet. Please check you internet connection and try again."
                                    self.showToast = true
                                }
                            }
                        
                        
                    }
                })
                .padding(.top)
                
                
                
                Spacer()
            }
            
            if(self.showToast){
                Toast(isShowing: self.$showToast, message: self.toastMessage)
            }
            
        }.navigationBarHidden(true)
        
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
    }

//struct Reset_Password_Previews: PreviewProvider {
//    static var previews: some View {
//        Reset_Password()
//    }
//}
