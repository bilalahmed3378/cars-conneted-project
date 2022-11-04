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


//struct verifyOtpScreen: View {
//    @State var otp1 : String = ""
//    @State var otp2 : String = ""
//    @State var otp3 : String = ""
//    @State var otp4 : String = ""
//
//   @State var toEmailConfirm = false
//
//    @Environment(\.presentationMode) var presentaionMode
//
//    var body: some View {
//
//
//        ZStack{
//
//            NavigationLink(destination: E_mail_Confirmation_Screen(), isActive: $toEmailConfirm){
//                EmptyView()
//            }
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
//                Text("Enter OTP which we sent to on your email address abc****@gmail.com ")
//                    .padding(.top,10)
//
//
//                HStack{
//
//
//                    TextField("",text: self.$otp1)
//                        .foregroundColor(AppColors.redGradientColor1)
//
//                        .font(AppFonts.medium_24)
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
//
//                        .font(AppFonts.medium_24)
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
//
//                        .font(AppFonts.medium_24)
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
//
//                        .font(AppFonts.medium_24)
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
//                }.padding(.top)
//
//
//            Button(action: {
//
//                toEmailConfirm = true
//
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
//
//    }
//}
//
//
//struct verifyOtpScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        verifyOtpScreen()
//    }
//}






struct verifyOtpScreen: View {
    
      @StateObject var viewModel = ViewModel()
      @State var isFocused = false
    
    @State var toEmailConfirm = false
    
    @Environment(\.presentationMode) var presentaionMode
      
      let textBoxWidth = UIScreen.main.bounds.width / 8
      let textBoxHeight = UIScreen.main.bounds.width / 8
      let spaceBetweenBoxes: CGFloat = 15
      let paddingOfBox: CGFloat = 1
      var textFieldOriginalWidth: CGFloat {
          (textBoxWidth*6)+(spaceBetweenBoxes*3)+((paddingOfBox*2)*3)
      }
      
      var body: some View {
              
              VStack {
                  
                  NavigationLink(destination: E_mail_Confirmation_Screen(), isActive: $toEmailConfirm){
                                 EmptyView()
                             }
                  
                  HStack{
                                Button(action: {
                                    self.presentaionMode.wrappedValue.dismiss()
                                }, label: {
                                    Image("Icons-2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width :UIScreen.widthBlockSize*10, height: UIScreen.heightBlockSize*10)
                                    
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
                
                  VStack(alignment: .leading){
                      HStack{
                          Text("Enter OTP which we sent to on your email address abc****@gmail.com ")
                              .padding(.top,10)
                          Spacer()
                      }
                      .padding(.leading)
                      .padding(.trailing)
                     
                  }
                  .padding(.leading)
                  .padding(.trailing)
                  
                  ZStack {
                      
                      HStack (spacing: spaceBetweenBoxes){
                          
                          otpText(text: viewModel.otp1)
                          otpText(text: viewModel.otp2)
                          otpText(text: viewModel.otp3)
                          otpText(text: viewModel.otp4)
                         
                      }
                      
                      
                      TextField("", text: $viewModel.otpField)
                      .frame(width: isFocused ? 0 : textFieldOriginalWidth, height: textBoxHeight)
                      .disabled(viewModel.isTextFieldDisabled)
                      .textContentType(.oneTimeCode)
                      .foregroundColor(.clear)
                      .accentColor(.clear)
                      .background(Color.clear)
                  }
                  .padding(.top)
                  .padding(.bottom)
                  
                  Button(action: {
                 
                                 toEmailConfirm = true
                 
                             }){
                 
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
                 
                             }.disabled(viewModel.otp1.isEmpty || viewModel.otp2.isEmpty || viewModel.otp3.isEmpty || viewModel.otp4.isEmpty)
                  
                 
                             HStack{
                 
                                 Spacer()
                             Text("Didn't receive OTP")
                                     .font(AppFonts.regular_12)
                 
                                 Text("Resend (0:09)")
                                     .font(AppFonts.medium_14)
                                     .foregroundColor(AppColors.redGradientColor1)
                 
                                 Spacer()
                 
                             }.padding(.top)
                     
                  
                  
                  Spacer()
              }.navigationBarHidden(true)
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





struct verifyOtpScreen_Previews: PreviewProvider {
    static var previews: some View {
        verifyOtpScreen()
    }
}


class ViewModel: ObservableObject {
    
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
    
  
    
    @Published var borderColor: Color = .black
    @Published var isTextFieldDisabled = false
    var successCompletionHandler: (()->())?
    
    @Published var showResendText = false

}
