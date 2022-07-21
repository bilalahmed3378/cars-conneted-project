//
//  signupScreen.swift
//  cars connected
//
//  Created by Sohaib Sajjad on 18/07/2022.
//

import SwiftUI

struct signupScreen: View {
    
    @State var email = ""
    @State var isSecured = false
    
    var body: some View {
        
        ZStack(alignment:.bottom){
            
            Image("signupBackground")
                .resizable()
                .frame(maxWidth: UIScreen.screenWidth, maxHeight: UIScreen.heightBlockSize*90)
                .aspectRatio(contentMode: .fill)
            
   
                
                VStack(alignment: .leading){
                    
                    
                    ScrollView(.vertical,showsIndicators: false){
                        
                        
                        Group{
                            
                            Text("Signup")
                                .font(.system(size:24, design: .rounded))
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.top,32)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                                .font(.system(size:14))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.top,10)
                            
                            
                            Text("E-Mail")
                                .padding(.top,42)
                                .frame(maxWidth: .infinity, alignment: .leading)

                            
                            
                            TextField("Email",text:$email)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 42))
                                .foregroundColor(.black)
                            
                            
                            Text("Password")
                                .padding(.top,19)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                            
                                
                                
                                
                    
                                            if isSecured {
                                                SecureField("Set Password", text: $email)
                                                    .autocapitalization(.none)
                                                    .padding(.vertical, 10)
                                                    .background(Rectangle().frame(height: 1).padding(.top, 42))
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
                                                TextField("Set Password", text: $email)
                                                    .autocapitalization(.none)
                                                    .padding(.vertical, 10)
                                                    .background(Rectangle().frame(height: 1).padding(.top, 42))
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
                                
                                
                                
                            
                            
                            
                          
                            
                            Text("Confirm Password")
                                .padding(.top,19)
                                .frame(maxWidth: .infinity, alignment: .leading)

                            
                            ZStack{
                                
                                Button(action: {
                                                isSecured = !isSecured
                                            }) {
                                                Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                                    .accentColor(.gray)
                                                    .frame(maxWidth: .infinity, alignment: .trailing)

                                            }
                                
                    
                                            if isSecured {
                                                SecureField("Re-Enter Password", text: $email)
                                                    .autocapitalization(.none)
                                                    .padding(.vertical, 10)
                                                    .background(Rectangle().frame(height: 1).padding(.top, 42))
                                                
                                            } else {
                                                TextField("Re-Enter Password", text: $email)
                                                    .autocapitalization(.none)
                                                    .padding(.vertical, 10)
                                                    .background(Rectangle().frame(height: 1).padding(.top, 42))
                                            }
                                
                                
                                
                            }
                            
                            
                            
                            
                            Button(action: {
                                
                            }){
                                
                                HStack{
                                    Spacer()
                                    Text("Signup")
                                    
                                        .font(.system(size:16, design: .rounded))
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                    Spacer()
                                }
                                .padding(20)
                                .background(RoundedRectangle(cornerRadius: 100).fill(Color.red))
                                .padding(.top,32)
                                
                            }
                            
                            
                            
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
                                
                                Text("Register With Facebook")
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
                                
                                Text("Register With Google")
                                    .font(.system(size:14, design: .rounded))
                                    .foregroundColor(.red)
                                    .fontWeight(.medium)
                                
                                Spacer()
                            }
                            .padding(20)
                            .background(RoundedRectangle(cornerRadius: 100).strokeBorder(Color.red, lineWidth: 1))
                            .padding(.top,13)
                            
                        }
                        
                        
                        
                    }
                    .clipped()
                    
                   
                }
                .padding()
                .background(Color.white.opacity(0.9).shadow(radius: 20))
                .padding(.trailing,24)
                .padding(.leading,24)
                .padding(.top,49)
                .padding(.bottom,20)
                
            
            
            
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarHidden(true)
        //        edgesIgnoringSafeArea(.bottom)
        
    }
}

struct signupScreen_Previews: PreviewProvider {
    static var previews: some View {
        signupScreen()
    }
}
