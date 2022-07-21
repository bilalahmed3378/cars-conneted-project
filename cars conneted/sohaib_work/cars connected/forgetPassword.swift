//
//  forgetPassword.swift
//  cars connected
//
//  Created by Sohaib Sajjad on 19/07/2022.
//


import SwiftUI

struct forgetPassword: View {
    
    @State var isSecured = false
    @State var email = ""
    @State var toVerifyOtp = false

    var body: some View {
        
        NavigationView{
        
            NavigationLink(destination: verifyOtpScreen(), isActive: $toVerifyOtp){
                
                EmptyView()
                
            }
        
        VStack(alignment:.leading){
            
            Text("Forgot Password?")
                .font(.system(size:28))
                .foregroundColor(.red)
                .fontWeight(.medium)
                .padding(.top,70)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .font(.system(size:14))
                .padding(.top,10)
            
         
    
            Text("E-Mail")
                .padding(.top,35)
                .frame(maxWidth: .infinity, alignment: .leading)

            
            
            TextField("Email",text:$email)
                .padding(.vertical, 10)
                .autocapitalization(.none)
                .background(Rectangle().frame(height: 1).padding(.top, 42))
                .foregroundColor(.black)
            
            
            Button(action: {
                
                toVerifyOtp = true
                
            }){
                
                HStack{
                    Spacer()
                    Text("Send OTP")
                    
                        .font(.system(size:16, design: .rounded))
                        .fontWeight(.bold)

                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(20)
                .background(RoundedRectangle(cornerRadius: 100).fill(Color.red))
                .padding(.top,40)
                
            }
            
            
         Spacer()
            
        }.padding(.leading,24)
            .padding(.trailing,24)
        
        }
            
    }
}

struct forgetPassword_Previews: PreviewProvider {
    static var previews: some View {
        forgetPassword()
    }
}
