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


struct verifyOtpScreen: View {
    @State var otp1 : String = ""
    @State var otp2 : String = ""
    @State var otp3 : String = ""
    @State var otp4 : String = ""
    
   @State var toEmailConfirm = false
    
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        
            
        ZStack{
      
            NavigationLink(destination: E_mail_Confirmation_Screen(), isActive: $toEmailConfirm){
                EmptyView()
            }
        
        VStack(alignment: .leading){
             
            HStack{
                Button(action: {
                    self.presentaionMode.wrappedValue.dismiss()
                }, label: {
                    Image("Icons-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width :UIScreen.widthBlockSize*10, height: UIScreen.heightBlockSize*10)
                })
            }
            
                Text("Verify OTP")
                   
                .font(AppFonts.semiBold_24)
                    .foregroundColor(AppColors.redGradientColor1)
                    .padding(.top,10)
                
                
                Text("Enter OTP which we sent to on your email address abc****@gmail.com ")
                    .padding(.top,10)
                
                
                HStack{
                    
                
                    TextField("",text: self.$otp1)
                        .foregroundColor(AppColors.redGradientColor1)
                        .font(AppFonts.medium_24)
                        .frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*10)
                        .multilineTextAlignment(.center)
                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))
//                        .padding(.trailing,14)
                        
                        .onChange(of: self.otp1) { newValue in
                            if(self.otp1.isEmpty){
                                self.otp1 = newValue
                            }
                            else{
                                self.otp1 = String(self.otp1.prefix(1))
                            }
                        }

                    Spacer()
                    
                    TextField("",text: self.$otp2)
                        .foregroundColor(AppColors.redGradientColor1)
                        .font(AppFonts.medium_24)
                        .frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*10)
                        .multilineTextAlignment(.center)
                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))

                        
                        .onChange(of: self.otp2) { newValue in
                            if(self.otp2.isEmpty){
                                self.otp2 = newValue
                            }
                            else{
                                self.otp2 = String(self.otp1.prefix(1))
                            }
                        }
                    
                    Spacer()

                    
                    TextField("",text: self.$otp3)
                        .foregroundColor(AppColors.redGradientColor1)
                        .font(AppFonts.medium_24)
                        .frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*10)
                        .multilineTextAlignment(.center)
                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))

                        
                        .onChange(of: self.otp3) { newValue in
                            if(self.otp3.isEmpty){
                                self.otp3 = newValue
                            }
                            else{
                                self.otp3 =
                                String(self.otp3.prefix(1))
                            }
                        }
                    
                    Spacer()

                    
                    TextField("",text: self.$otp4)
                        .foregroundColor(AppColors.redGradientColor1)
                        .font(AppFonts.medium_24)
                        .frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*10)
                        .multilineTextAlignment(.center)
                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))

                        
                        .onChange(of: self.otp4) { newValue in
                            if(self.otp4.isEmpty){
                                self.otp4 = newValue
                            }
                            else{
                                self.otp1 = String(self.otp4 .prefix(1))
                            }
                        }
                    
                
                }.padding(.top)
                
            
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
                
            }
            
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
                
        }.padding(.leading,24)
            .padding(.trailing,24)
        
        } .navigationBarHidden(true)
    
        
    }
}


struct verifyOtpScreen_Previews: PreviewProvider {
    static var previews: some View {
        verifyOtpScreen()
    }
}












//struct verifyOtpScreen: View {
//
//    @State var otp1 = ""
//    @State var otp2 = ""
//
//    var body: some View {
//
//
//
//        VStack(alignment:.leading){
//
//        Text("Verify Otp Screen")
//            .font(.system(size:24))
//            .foregroundColor(.red)
//            .padding(.top,119)
//
//
//Text("Enter otp code that we have sent you on this email name@email.com to verify your email address")
//                .font(.system(size:24))
//                .padding(.top,10)
//
//            HStack{
//
//
//
//            TextField("",text: $otp2)
//
//                .padding(20)
////                .frame(width: 50, height: 50)
//                              .background(
//                                    RoundedRectangle(cornerRadius: 1)
//                                        .strokeBorder(Color.red, lineWidth: 1)
//
//                                        .padding(.trailing,310)
//                                        .padding(.top,-15)
////                                        .frame(width:50,height: 80)
//
//
//
//                              )
//
//                              .padding(.top,20)
//
//
//
////                TextField("",text: $otp2)
//
//
//
//
//            Spacer()
//
//            }
//
//
//
////
////            TextField("",text: $otp2)
////                .autocapitalization(.none)
//////                .font(AppFonts.ceraPro_24)
//////                .foregroundColor(AppColors.textColor)
////                .multilineTextAlignment(.center)
////                .frame(width: 50, height: 50)
////                .background(
////                    HStack{
////                        if (self.otp2.isEmpty){
////                            Image(systemName: "asterisk.circle.fill")
////                                .resizable()
////                                .aspectRatio( contentMode: .fit)
////                                .frame(width: 20, height: 20)
//////                                .foregroundColor(AppColors.textColor)
////                        }
////                    }
////                )
////
////                .overlay(
////                    RoundedRectangle(cornerRadius: 10).stroke(.red, lineWidth: 1)
////                )
////
////
////
//
//           Spacer()
//
//
//        }
//
//    }
//}
//
//struct verifyOtpScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        verifyOtpScreen()
//    }
//}
