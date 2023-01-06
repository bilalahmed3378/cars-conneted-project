////
////  verifyOtpScreen.swift
////  cars connected
////
////  Created by Sohaib Sajjad on 19/07/2022.
////
//
//import SwiftUI
//

import SwiftUI
import UIKit




struct verifyOtpEmailScreen: View {
    
    @StateObject var viewModel = ViewModel()
    
    @State var isFocused = false
    
    @StateObject var VerifyEmailOtpApi = verifyEmailOtpApi()
    
    @StateObject var resendOtpApi = resendEmailVerificationOtpApi()
    
    @State var toEmailConfirmationScreen = false
    
    @State var timeRemaining = 10
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    @Environment(\.presentationMode) var presentaionMode
    
    let textBoxWidth = UIScreen.main.bounds.width / 8
    let textBoxHeight = UIScreen.main.bounds.width / 8
    let spaceBetweenBoxes: CGFloat = 15
    let paddingOfBox: CGFloat = 1
    var textFieldOriginalWidth: CGFloat {
        (textBoxWidth*6)+(spaceBetweenBoxes*3)+((paddingOfBox*2)*3)
    }
    
    @State var showToast = false
    @State var toastMessage = ""
    
    @State var resendOtpToast = false
    
    @State var email: String
    
    @State var otpId: String
   
    
    var body: some View {
        
        ZStack{
            
            VStack {
                
                NavigationLink(destination: E_mail_Confirmation_Screen(), isActive: $toEmailConfirmationScreen){
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
                
                HStack{
                    Text("Verify OTP")
                        .font(AppFonts.semiBold_24)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,10)
                    
                    Spacer()
                    
                }.padding(.leading)
                    .padding(.trailing)
                
                
                
                
                Text("Enter OTP which we sent to on your email address \(self.email) ")
                    .padding(.top,10)
                    .padding(.leading,20)
                    .padding(.trailing,20)
                
                ZStack {
                    
                    HStack (spacing: spaceBetweenBoxes){
                        
                        otpText(text: viewModel.otp1)
                        otpText(text: viewModel.otp2)
                        otpText(text: viewModel.otp3)
                        otpText(text: viewModel.otp4)
                        otpText(text: viewModel.otp5)
                        
                    }
                    
                    
                    TextField("", text: $viewModel.otpField)
                        .frame(width: isFocused ? 0 : textFieldOriginalWidth, height: textBoxHeight)
                        .disabled(viewModel.isTextFieldDisabled)
                        .textContentType(.oneTimeCode)
                        .autocapitalization(.none)
                        .foregroundColor(.clear)
                        .accentColor(.clear)
                        .background(Color.clear)
                }
                .padding(.top)
                .padding(.bottom)
                
                Button(action: {
                    
                    if !(viewModel.otpField.isEmpty){
                        
                        self.VerifyEmailOtpApi.verifyEmailOtp(otpId: self.otpId, otp: viewModel.otpField)

                        
                    }
                    
                }){
                    
                    if(self.VerifyEmailOtpApi.isLoading){
                        
                        HStack{
                            
                            Spacer()
                            
                            ProgressView()
                                .padding()
                            
                            Spacer()
                            
                        }.onDisappear {
                            
                            if(self.VerifyEmailOtpApi.isApiCallDone && self.VerifyEmailOtpApi.isApiCallSuccessful){
                                
                                if(self.VerifyEmailOtpApi.otpVerified){
                                    
                                    self.toEmailConfirmationScreen = true
                                    self.showToast = true
                                    self.toastMessage = "otp verified successfully"
                                    
                                }
                                
                            
                                else{
                                    
                                    self.showToast = true
                                    self.toastMessage = "incorrect otp"
                                    
                                    
                                }
                                
                            }
                            
                            else if(self.VerifyEmailOtpApi.isApiCallDone && (!self.VerifyEmailOtpApi.isApiCallSuccessful)){
                                
                                self.showToast = true
                                self.toastMessage = "Unable to access internet. Please check you internet connection and try again."
                                
                            }
                        }
                    }
                    
                    
                    else{
                        
                        HStack{
                            
                            Spacer()
                            
                            Text("Verify OTP")
                                .font(AppFonts.semiBold_16)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Spacer()
                        }
                        .padding(20)
                        .background(RoundedRectangle(cornerRadius: 100).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7))
                        .padding(.top)
                        
                        
                    }
                    
                }
                
                HStack{
                    
                    Spacer()
                    Text("Didn't receive OTP")
                        .font(AppFonts.regular_12)
                    
                    
                    if(self.resendOtpApi.isLoading){
                        
                        ProgressView()
                            .padding(.leading,1)
                            .onDisappear {
                                
                                if(self.resendOtpApi.isApiCallDone && self.resendOtpApi.isApiCallSuccessful){
                                    
                                    if(self.resendOtpApi.otpSent){
                                        
                                        self.otpId = self.resendOtpApi.apiResponse!.data!.otp_id
                                        self.showToast = true
                                        self.toastMessage = "otp sent successfully"
                                        
                                    }
                                    
                                    else{
                                        
                                        self.showToast = true
                                        self.toastMessage = "failed to send otp"
                                        
                                        
                                    }
                                    
                                }
                                
                                else if(self.resendOtpApi.isApiCallDone && (!self.resendOtpApi.isApiCallSuccessful)){
                                    
                                    self.showToast = true
                                    self.toastMessage = "Unable to access internet. Please check you internet connection and try again."
                                    
                                }
                            }
                    }
                    
                    else{
                        
                        Button{
                            
                            if(self.timeRemaining == 0){
                                
                                self.resendOtpApi.resendEmailVerificationOtp(email: self.email)
                            }
                            
                        } label: {
                            
                            Text("Resend (\(self.timeRemaining))")
                                .font(AppFonts.medium_14)
                                .foregroundColor( (self.timeRemaining == 0) ? AppColors.redGradientColor1 : .black)
                        }
                        
                    }
                    
                    Spacer()
                    
                }.padding(.top)
                
                
                
                Spacer()
            }
            
            if(self.showToast){
                Toast(isShowing: self.$showToast, message: self.toastMessage)
            }
            
            
            //            if(self.SendOtpApi.isApiCallDone && self.SendOtpApi.isApiCallSuccessful){
            //
            //                if(self.SendOtpApi.dataRetrivedSuccessfully){
            //
            //                    if(self.resendOtpToast){
            //
            //                        Toast(isShowing: self.$resendOtpToast, message: "Otp sent successfully")
            //                    }
            //
            //                }
            //
            //                else{
            //
            //                    if(self.resendOtpToast){
            //
            //                        Toast(isShowing: self.$resendOtpToast, message: "failed to send otp")
            //                    }
            //
            //                }
            //
            //            }
            //            else if(self.SendOtpApi.isApiCallDone && (!self.SendOtpApi.isApiCallSuccessful)){
            //
            //                if(self.resendOtpToast){
            //
            //                    Toast(isShowing: self.$resendOtpToast, message: "Unable to access internet. Please check you internet connection and try again.")
            //                }
            //
            //            }
            //
            
            
            
        }.navigationBarHidden(true)
            .onReceive(timer) { time in
                if timeRemaining > 0 {
                    timeRemaining -= 1
                }
            }
    }
    
    private func otpText(text: String) -> some View {
        
        return Text(text)
            .font(.title)
            .frame(width: textBoxWidth, height: textBoxHeight)
            .background(VStack{
                Spacer()
                RoundedRectangle(cornerRadius: 1)
                    .frame(height: 0.5)
            })
            .padding(paddingOfBox)
    }
}




//
//struct verifyOtpScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        verifyOtpScreen()
//    }
//}


class ViewModel: ObservableObject {
    
    @Published var otpField = "" {
        didSet {
            guard otpField.count <= 6
                    //                  otpField.last?.isNumber ?? true else {
                    //                otpField = oldValue
            else{ return
            }
        }
    }
    var otp1: String {
        guard otpField.count >= 1 else {
            return ""
        }
        return String(Array(otpField)[0])
    }
    var otp2: String {
        guard otpField.count >= 2 else {
            return ""
        }
        return String(Array(otpField)[1])
    }
    var otp3: String {
        guard otpField.count >= 3 else {
            return ""
        }
        return String(Array(otpField)[2])
    }
    var otp4: String {
        guard otpField.count >= 4 else {
            return ""
        }
        return String(Array(otpField)[3])
    }
    
    var otp5: String {
        guard otpField.count >= 5 else {
            return ""
        }
        return String(Array(otpField)[4])
    }
    
    
    
    @Published var borderColor: Color = .black
    @Published var isTextFieldDisabled = false
    var successCompletionHandler: (()->())?
    
    @Published var showResendText = false
    
}
