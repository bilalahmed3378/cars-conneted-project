//
//  loginScreen.swift
//  cars connected
//
//  Created by Sohaib Sajjad on 19/07/2022.
//

import SwiftUI

struct loginScreen: View {
    
    @State var email = ""
    @State var password = ""
    @State var isSecured = false

    let screenWidth = UIScreen.main.bounds.size.width
    let widthBlockSize = (UIScreen.main.bounds.size.width/100)
     let screenHeight = UIScreen.main.bounds.size.height
     let heightBlockSize = (UIScreen.main.bounds.size.height/100)
     let screenSize = UIScreen.main.bounds.size
   
    
    var body: some View {
        
        VStack{

        ZStack(alignment:.top){
            
          Image("loginBackground")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screenWidth, height: heightBlockSize*80)
       
            
            VStack(alignment:.leading){
                
                ScrollView(.vertical,showsIndicators: false){
                    
                    VStack(alignment:.leading){
                    
                    Group{
                        
                     Text("Login")
                    .foregroundColor(.red)
                    .fontWeight(.medium)
                    .font(.system(size:24))
                    .padding(.top,20)
                
                
//               Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
//                    .padding(.top,10)
                
                
                
                Text("E-Mail")
                    .padding(.top,20)
                    .frame(maxWidth: .infinity, alignment: .leading)

                
                
                TextField("Email",text:$email)
                    .padding(.vertical, 10)
                    .autocapitalization(.none)
                    .background(Rectangle().frame(height: 1).padding(.top, 40))
                    .foregroundColor(.black)
                
                    }
                    
                Text("Password")
                    .padding(.top,20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                
                    
                    
                    
        
                                if isSecured {
                                    SecureField("Set Password", text: $email)
                                        .autocapitalization(.none)
                                        .padding(.vertical, 10)
                                        .background(Rectangle().frame(height: 1).padding(.top, 40))
                                        .overlay(HStack{
                                            Spacer()
                                            Button(action: {
                                                isSecured = !isSecured
                                                        }) {
                                                            Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                                                .accentColor(.gray)

                                                        }
                                        })
                                    
                                } else {
                                    TextField("Enter Your Password", text: $email)
                                        .autocapitalization(.none)
                                        .padding(.vertical, 10)
                                        .background(Rectangle().frame(height: 1).padding(.top, 40))
                                        .overlay(HStack{
                                            Spacer()
                                            Button(action: {
                                                isSecured = !isSecured
                                                        }) {
                                                            Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                                                .accentColor(.gray)

                                                        }
                                        })
                                }
                    
                HStack{
                    
                    Spacer()
                    
                    Text("Forgot Password?")
                        .font(.system(size: 12))
                    
                    NavigationLink(destination: forgetPassword()){
                    
                        Text("Reset")
                        .foregroundColor(.red)
                        .font(.system(size: 14))
                    
                    }
                }
                .padding(.top,25)
                
                
                Button(action: {
                    
                }){
                    
                    HStack{
                        Spacer()
                        Text("Login")
                        
                            .font(.system(size:16, design: .rounded))
                            .fontWeight(.bold)

                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(20)
                    .background(RoundedRectangle(cornerRadius: 100).fill(Color.red))
                    .padding(.top,50)
                    
                }
                
                
                
                HStack{
                    
                    Spacer()
                    
                    Text("Already have an account?")
                        .font(.system(size: 12))
                    
                    
                    Text("Login")
                        .foregroundColor(.red)
                        .font(.system(size: 14))
                    
                    Spacer()
                    
                }
                .padding(.top,33)
                
                
                
                
                Button(action: {
                    
                }){
                    
                    HStack{
                        Spacer()
                        
                        Text("Login With Facebook")
                            .font(.system(size:14, design: .rounded))
                            .foregroundColor(.red)
                            .fontWeight(.medium)
                        
                        Spacer()
                    }
                    .padding(20)
                    .background(RoundedRectangle(cornerRadius: 100).strokeBorder(Color.red, lineWidth: 1))
                    .padding(.top,30)
                    
                }
                
                
                
                Button(action: {
                    
                }){
                    
                    HStack{
                        Spacer()
                        
                        Text("Login With Google")
                            .font(.system(size:14, design: .rounded))
                            .foregroundColor(.red)
                            .fontWeight(.medium)
                        
                        Spacer()
                    }
                    .padding(20)
                    .background(RoundedRectangle(cornerRadius: 100).strokeBorder(Color.red, lineWidth: 1))
                    .padding(.top,13)
                    
                }
                
                
                
                
              Spacer()
            
                }
                
                
            }
            
            }.padding()
            .background(Color.white)
                .opacity(0.9)
                .shadow(radius: 5)
                .padding(.top,70)
                .padding(.bottom,32)
                .padding(.leading,25)
                .padding(.trailing,23)


        }
            
            
            
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.all)

    }
}

struct loginScreen_Previews: PreviewProvider {
    static var previews: some View {
        loginScreen()
    }
}
