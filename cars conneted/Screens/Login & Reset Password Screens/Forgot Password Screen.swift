//
//  Forgot Password.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI


struct Forgot_Password_Screen: View {
    
    @StateObject var SendOtpApi = sendOtpApi()
    @State  var email = ""
    @Environment(\.presentationMode) var presentaionMode
    
    @State var toSendOTP = false
    
    @State var showToast = false
    @State var toastMessage = ""
    
    var body: some View {
        ZStack{
            
            NavigationLink(destination: verifyOtpPasswordScreen(email: self.email), isActive: $toSendOTP){
                EmptyView()
            }
            
            VStack{
                HStack{
                    
                    
                    Image("Group 2-2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.widthBlockSize*50, height: UIScreen.heightBlockSize*50)
                    
                    Spacer()
                    
                    
                }
                
                Spacer()
                
            }.edgesIgnoringSafeArea(.top)
            
            
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
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Dont remember your password? We have made it easier to recover your account password.")
                            .font(AppFonts.regular_14)
                        
                        
                        Spacer()
                    }.padding(.leading)
                        .padding(.trailing)
                }
                
                Text("E-Mail")
                    .padding(.top)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.trailing)
                
                
                TextField("Email",text:$email)
                    .foregroundColor(AppColors.redGradientColor1)
                    .padding(.vertical, 10)
                    .autocapitalization(.none)
                    .background(Rectangle().frame(height: 1).padding(.top, 30))
                    .foregroundColor(.black)
                    .padding(.leading)
                    .padding(.trailing)
                
                
                if(self.SendOtpApi.isLoading){
                    
                    HStack{
                        
                        Spacer()
                        
                        ProgressView()
                            .padding()
                        
                        Spacer()
                        
                    }.padding(.top,30)
                        .onDisappear {
                            
                            if(self.SendOtpApi.isApiCallDone && self.SendOtpApi.isApiCallSuccessful){
                                
                                if(self.SendOtpApi.dataRetrivedSuccessfully){
                                    
                                    self.toSendOTP = true
                                    
                                }
                                
                                else{
                                    
                                    self.showToast = true
                                    self.toastMessage = "failed to send otp"
                                    
                                    
                                }
                                
                            }
                            
                            else if(self.SendOtpApi.isApiCallDone && (!self.SendOtpApi.isApiCallSuccessful)){
                                
                                self.showToast = true
                                self.toastMessage = "Unable to access internet. Please check you internet connection and try again."
                                
                            }
                        }
                }
                
                else{
                    
                    Button(action: {
                        
                        if !(self.email.isEmpty){
                            
                            self.SendOtpApi.sendOtp(email: self.email)
                            
                        }
                        
                        else{
                            
                            self.showToast = true
                            self.toastMessage = "Please enter your email"
                            
                        }
                        
                    }, label: {
                        Text("Send OTP")
                            .font(AppFonts.semiBold_16)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    })
                    .padding(.top,30)
                    
                }
                
                
                Spacer()
            }
            
            if(showToast){
                Toast(isShowing: self.$showToast, message: self.toastMessage)
            }
            
            
        } .navigationBarHidden(true)
        
    }
}

//struct Forgot_Password_Screen_Previews: PreviewProvider {
//    static var previews: some View {
//        Forgot_Password_Screen()
//    }
//}

