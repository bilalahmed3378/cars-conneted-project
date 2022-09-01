//
//  Forgot Password OTP.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI

struct Forgot_Password_OTP: View {
    
    @State var otp1 : String = ""
    @State var otp2 : String = ""
    @State var otp3 : String = ""
    @State var otp4 : String = ""
    
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        ZStack{
      
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
           
            
        
        VStack(alignment: .leading){
             
            HStack{
                Button(action: {
                   
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
                
                
                Text("We have sent you a one time password to your registered email.")
                    .padding(.top,10)
                
                
                HStack{
                    
                
                    TextField("",text: self.$otp1)
                        .foregroundColor(AppColors.redGradientColor1)
                        .font(AppFonts.medium_20)
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
                        .font(AppFonts.medium_20)
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
                        .font(AppFonts.medium_20)
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
                        .font(AppFonts.medium_20)
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

struct Forgot_Password_OTP_Previews: PreviewProvider {
    static var previews: some View {
        Forgot_Password_OTP()
    }
}
