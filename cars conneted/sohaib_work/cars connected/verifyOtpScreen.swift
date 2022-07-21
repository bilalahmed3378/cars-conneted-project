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


struct verifyOtpScreen: View {
    @State var otp1 : String = ""
    @State var otp2 : String = ""
    @State var otp3 : String = ""
    @State var otp4 : String = ""
    
   @State var toResetPassword = false
    
    var body: some View {
        
        NavigationView{
            
            NavigationLink(destination: resetPassword(), isActive: $toResetPassword){
                
                EmptyView()
                
            }
      
        VStack(alignment: .leading){
             
            
            
                Text("Verify OTP")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                    .padding(.top,80)
                
                
                Text("Enter OTP which we sent to on your email\n address abc****@gmail.com ")
                    .padding(.top,10)
                
                
                HStack{
                    
                
                    TextField("",text: self.$otp1)
                        .font(.system(size:24).bold())
                        .frame(width: UIScreen.widthBlockSize*18, height: UIScreen.heightBlockSize*12)
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
                    
                    TextField("",text: self.$otp1)
                        .font(.system(size:24).bold())
                        .frame(width: UIScreen.widthBlockSize*18, height: UIScreen.heightBlockSize*12)
                        .multilineTextAlignment(.center)
                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))

                        
                        .onChange(of: self.otp1) { newValue in
                            if(self.otp1.isEmpty){
                                self.otp1 = newValue
                            }
                            else{
                                self.otp1 = String(self.otp1.prefix(1))
                            }
                        }
                    
                    Spacer()

                    
                    TextField("",text: self.$otp1)
                        .font(.system(size:24).bold())
                        .frame(width: UIScreen.widthBlockSize*18, height: UIScreen.heightBlockSize*12)
                        .multilineTextAlignment(.center)
                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))

                        
                        .onChange(of: self.otp1) { newValue in
                            if(self.otp1.isEmpty){
                                self.otp1 = newValue
                            }
                            else{
                                self.otp1 = String(self.otp1.prefix(1))
                            }
                        }
                    
                    Spacer()

                    
                    TextField("",text: self.$otp1)
                        .font(.system(size:24).bold())
                        .frame(width: UIScreen.widthBlockSize*18, height: UIScreen.heightBlockSize*12)
                        .multilineTextAlignment(.center)
                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))

                        
                        .onChange(of: self.otp1) { newValue in
                            if(self.otp1.isEmpty){
                                self.otp1 = newValue
                            }
                            else{
                                self.otp1 = String(self.otp1.prefix(1))
                            }
                        }
                    
                
                }.padding(.top,49)
                
            
            Button(action: {
                
                toResetPassword = true
                
            }){
                
                HStack{
                    Spacer()
                    Text("Verify OTP")
                    
                        .font(.system(size:16, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(20)
                .background(RoundedRectangle(cornerRadius: 100).fill(Color.red))
                .padding(.top,49)
                
            }
            
            HStack{
            
                Spacer()
            Text("Didn't receive OTP")
            
                Spacer()
                
            }.padding(.top,30)
            
            
                Spacer()
                
        }.padding(.leading,24)
            .padding(.trailing,24)
        
        
    }
        
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
