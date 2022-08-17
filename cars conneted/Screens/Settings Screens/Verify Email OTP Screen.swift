//
//  Verify Email OTP Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 17/08/2022.
//

import SwiftUI

struct Verify_Email_OTP_Screen: View {
    
    @State var otp1 : String = ""
    @State var otp2 : String = ""
    @State var otp3 : String = ""
    @State var otp4 : String = ""
    
    
    var body: some View {
       
        VStack(alignment: .leading){
             
            
            
                Text("Verify OTP")
                .font(AppFonts.SemiBold_20)
                    .foregroundColor(AppColors.redGradientColor1)
                    .padding(.top,80)
                
                
                Text("Enter OTP which we sent to on your email\naddress abc****@gmail.com ")
                .font(AppFonts.regular_16)
                    .padding(.top,10)
                
                
                HStack{
                    
                
                    TextField("",text: self.$otp1)
                        .font(AppFonts.regular_20)
                        .frame(width: UIScreen.widthBlockSize*18, height: UIScreen.heightBlockSize*8)
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
                        .font(AppFonts.regular_20)
                        .frame(width: UIScreen.widthBlockSize*18, height: UIScreen.heightBlockSize*8)
                        .multilineTextAlignment(.center)
                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))

                        
                        .onChange(of: self.otp2) { newValue in
                            if(self.otp1.isEmpty){
                                self.otp1 = newValue
                            }
                            else{
                                self.otp1 = String(self.otp1.prefix(1))
                            }
                        }
                    
                    Spacer()

                    
                    TextField("",text: self.$otp3)
                        .font(AppFonts.regular_20)
                        .frame(width: UIScreen.widthBlockSize*18, height: UIScreen.heightBlockSize*8)
                        .multilineTextAlignment(.center)
                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))

                        
                        .onChange(of: self.otp3) { newValue in
                            if(self.otp1.isEmpty){
                                self.otp1 = newValue
                            }
                            else{
                                self.otp1 = String(self.otp1.prefix(1))
                            }
                        }
                    
                    Spacer()

                    
                    TextField("",text: self.$otp4)
                        .font(AppFonts.regular_20)
                        .frame(width: UIScreen.widthBlockSize*18, height: UIScreen.heightBlockSize*8)
                        .multilineTextAlignment(.center)
                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.red,lineWidth: 1.5))

                        
                        .onChange(of: self.otp4) { newValue in
                            if(self.otp1.isEmpty){
                                self.otp1 = newValue
                            }
                            else{
                                self.otp1 = String(self.otp1.prefix(1))
                            }
                        }
                    
                
                }.padding(.top,49)
                
            
            Button(action: {
                 
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
                .background(RoundedRectangle(cornerRadius: 100).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                .padding(.top,49)
                
            }
            
            HStack{
            
                Spacer()
            Text("Didn't receive OTP")
                    .font(AppFonts.regular_12)
                
                Text("Resent (00:09)")
                        .font(AppFonts.medium_14)
                        .foregroundColor(AppColors.redGradientColor1)
            
                Spacer()
                
            }.padding(.top,30)
            
            
                Spacer()
                
        }.padding(.leading,24)
            .padding(.trailing,24)
        
        
    }
        
    }

struct Verify_Email_OTP_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Verify_Email_OTP_Screen()
    }
}
