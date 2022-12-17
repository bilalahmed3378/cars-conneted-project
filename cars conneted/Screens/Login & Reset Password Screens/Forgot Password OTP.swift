//
//  Forgot Password OTP.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI
import Foundation

//struct Forgot_Password_OTP: View {
//
//    @State var otp1 : String = ""
//    @State var otp2 : String = ""
//    @State var otp3 : String = ""
//    @State var otp4 : String = ""
//
//    @Environment(\.presentationMode) var presentaionMode
//
//    @State var toVerifyOTP = false
//
//    var body: some View {
//        ZStack{
//
//            NavigationLink(destination: Reset_Password(), isActive: $toVerifyOTP){
//                EmptyView()
//            }
//
//            VStack{
//                HStack{
//
//                Image("Group 2-2")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: UIScreen.widthBlockSize*50, height: UIScreen.heightBlockSize*50)
//
//                    Spacer()
//
//
//                }
//
//                Spacer()
//
//            }.edgesIgnoringSafeArea(.top)
//
//
//
//        VStack(alignment: .leading){
//
//            HStack{
//                Button(action: {
//                    self.presentaionMode.wrappedValue.dismiss()
//                }, label: {
//                    Image("Icons-2")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width :UIScreen.widthBlockSize*10, height: UIScreen.heightBlockSize*10)
//                })
//            }
//
//                Text("Verify OTP")
//
//                .font(AppFonts.semiBold_24)
//                    .foregroundColor(AppColors.redGradientColor1)
//                    .padding(.top,10)
//
//
//                Text("We have sent you a one time password to your registered email.")
//                    .padding(.top,10)
//
//
//                HStack{
//
//
//                    TextField("",text: self.$otp1)
//                        .foregroundColor(AppColors.redGradientColor1)
//                        .font(AppFonts.medium_20)
//                        .frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*10)
//                        .multilineTextAlignment(.center)
//                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))
////                        .padding(.trailing,14)
//
//                        .onChange(of: self.otp1) { newValue in
//                            if(self.otp1.isEmpty){
//                                self.otp1 = newValue
//                            }
//                            else{
//                                self.otp1 = String(self.otp1.prefix(1))
//                            }
//                        }
//
//                    Spacer()
//
//                    TextField("",text: self.$otp2)
//                        .foregroundColor(AppColors.redGradientColor1)
//                        .font(AppFonts.medium_20)
//                        .frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*10)
//                        .multilineTextAlignment(.center)
//                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))
//
//
//                        .onChange(of: self.otp2) { newValue in
//                            if(self.otp2.isEmpty){
//                                self.otp2 = newValue
//                            }
//                            else{
//                                self.otp2 = String(self.otp1.prefix(1))
//                            }
//                        }
//
//                    Spacer()
//
//
//                    TextField("",text: self.$otp3)
//                        .foregroundColor(AppColors.redGradientColor1)
//                        .font(AppFonts.medium_20)
//                        .frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*10)
//                        .multilineTextAlignment(.center)
//                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))
//
//
//                        .onChange(of: self.otp3) { newValue in
//                            if(self.otp3.isEmpty){
//                                self.otp3 = newValue
//                            }
//                            else{
//                                self.otp3 =
//                                String(self.otp3.prefix(1))
//                            }
//                        }
//
//                    Spacer()
//
//
//                    TextField("",text: self.$otp4)
//                        .foregroundColor(AppColors.redGradientColor1)
//                        .font(AppFonts.medium_20)
//                        .frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*10)
//                        .multilineTextAlignment(.center)
//                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))
//
//
//                        .onChange(of: self.otp4) { newValue in
//                            if(self.otp4.isEmpty){
//                                self.otp4 = newValue
//                            }
//                            else{
//                                self.otp1 = String(self.otp4 .prefix(1))
//                            }
//                        }
//
//
//                }.padding(.top,49)
//
//
//            Button(action: {
//                self.toVerifyOTP = true
//            }){
//
//                HStack{
//                    Spacer()
//                    Text("Verify OTP")
//                        .font(AppFonts.semiBold_16)
//                        .fontWeight(.bold)
//                        .foregroundColor(.white)
//                    Spacer()
//                }
//                .padding(20)
//                .background(RoundedRectangle(cornerRadius: 100).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7))
//                .padding(.top)
//
//            }
//
//            HStack{
//
//                Spacer()
//            Text("Didn't receive OTP")
//                    .font(AppFonts.regular_12)
//
//                Text("Resend (0:09)")
//                    .font(AppFonts.medium_14)
//                    .foregroundColor(AppColors.redGradientColor1)
//
//                Spacer()
//
//            }.padding(.top)
//
//
//                Spacer()
//
//        }.padding(.leading,24)
//            .padding(.trailing,24)
//
//        } .navigationBarHidden(true)
//
//    }
//}
//
//struct Forgot_Password_OTP_Previews: PreviewProvider {
//    static var previews: some View {
//        Forgot_Password_OTP()
//    }
//}

struct verifyOtpPasswordScreen: View {
    
    @StateObject var viewModel = ViewModel()
    @State var isFocused = false
    
    @StateObject var VerifyOtpApi = verifyOtpApi()
    
    @StateObject var SendOtpApi = sendOtpApi()
    
    @State var toResetPassword = false
    
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
    
    var body: some View {
        
        ZStack{
            
            VStack {
                
                NavigationLink(destination: Reset_Password(email: self.email, otp: viewModel.otpField), isActive: $toResetPassword){
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
                        
                        self.VerifyOtpApi.verifyOtp(otp: viewModel.otpField)
                        
                        
                    }
                    
                }){
                    
                    if(self.VerifyOtpApi.isLoading){
                        
                        HStack{
                            
                            Spacer()
                            
                            ProgressView()
                                .padding()
                            
                            Spacer()
                            
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
                        .onAppear{
                            if(self.VerifyOtpApi.isApiCallDone && self.VerifyOtpApi.isApiCallSuccessful){
                                
                                if(self.VerifyOtpApi.dataRetrivedSuccessfully){
                                    
                                    self.toResetPassword = true
                                }
                                else{
                                    self.toastMessage = "incorrect otp"
                                    self.showToast = true
                                }
                                
                            }
                            else if(self.VerifyOtpApi.isApiCallDone && (!self.VerifyOtpApi.isApiCallSuccessful)){
                                self.toastMessage = "Unable to access internet. Please check you internet connection and try again."
                                self.showToast = true
                            }
                        }
                        
                        
                    }
                    
                }
                
                HStack{
                    
                    Spacer()
                    Text("Didn't receive OTP")
                        .font(AppFonts.regular_12)
                    
                    Button{
                        
                        if(self.timeRemaining == 0){
                            
                            self.SendOtpApi.sendOtp(email: self.email)
                        }
                        
                    } label: {
                        
                        Text("Resend (\(self.timeRemaining))")
                            .font(AppFonts.medium_14)
                            .foregroundColor( (self.timeRemaining == 0) ? AppColors.redGradientColor1 : .black)
                    }
                    
                    
                    Spacer()
                    
                }.padding(.top)
                
                
                
                Spacer()
            }
            
            if(self.showToast){
                Toast(isShowing: self.$showToast, message: self.toastMessage)
            }
            
            
            if(self.SendOtpApi.isApiCallDone && self.SendOtpApi.isApiCallSuccessful){
                
                if(self.SendOtpApi.dataRetrivedSuccessfully){
                    
                    if(self.resendOtpToast){
                        
                        Toast(isShowing: self.$resendOtpToast, message: "Otp sent successfully")
                    }
                    
                }
                
                else{
                    
                    if(self.resendOtpToast){
                        
                        Toast(isShowing: self.$resendOtpToast, message: "failed to send otp")
                    }
                    
                }
                
            }
            else if(self.SendOtpApi.isApiCallDone && (!self.SendOtpApi.isApiCallSuccessful)){
                
                if(self.resendOtpToast){
                    
                    Toast(isShowing: self.$resendOtpToast, message: "Unable to access internet. Please check you internet connection and try again.")
                }
                
            }
            
            
            
            
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


//struct verifyOtpPasswordScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        verifyOtpScreen()
//    }
//}


class ViewModelPassword: ObservableObject {
    
    @Published var otpField = "" {
        didSet {
            guard otpField.count <= 6,
                  otpField.last?.isNumber ?? true else {
                otpField = oldValue
                return
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











