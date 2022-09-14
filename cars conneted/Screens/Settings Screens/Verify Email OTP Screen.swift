//
//  Verify Email OTP Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 17/08/2022.
//

import SwiftUI

struct Verify_Email_OTP_Screen: View {
  
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
            
            NavigationLink(destination: E_Mail_Confirmation_screen(), isActive: $toEmailConfirm){
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
          
                         
          
          
                          Text("We have sent you a one time password to your registered email.")
                              .padding(.top,10)
            
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

struct Verify_Email_OTP_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Verify_Email_OTP_Screen()
    }
}



