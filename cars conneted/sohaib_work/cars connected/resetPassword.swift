//
//  resetPassword.swift
//  cars connected
//
//  Created by Sohaib Sajjad on 19/07/2022.
//

import SwiftUI

struct resetPassword: View {
    
    @State var isSecured = false
    @State var password = ""
    @State var toPasswordChanged = false

    var body: some View {
        
        NavigationView{
        
            NavigationLink(destination: passwordChanged(), isActive: $toPasswordChanged){
                EmptyView()
            }
        
        VStack(alignment:.leading){
            
            Text("Reset Credentials")
                .font(.system(size:28))
                .foregroundColor(.red)
                .padding(.top,70)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .font(.system(size:14))
                .padding(.top,10)
            
         
            
            
            Text("Password")
                .font(.system(size:12))
                .padding(.top,26)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            
                
                
                
    
                            if isSecured {
                                SecureField("Set Password", text: $password)
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
                                TextField("Set Password", text: $password)
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
                
                
                
            
            
            
          
            
            Text("Confirm Password")
                .font(.system(size:12))
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
                                SecureField("Re-Enter Password", text: $password)
                                    .autocapitalization(.none)
                                    .padding(.vertical, 10)
                                    .background(Rectangle().frame(height: 1).padding(.top, 40))
                                
                            } else {
                                TextField("Re-Enter Password", text: $password)
                                    .autocapitalization(.none)
                                    .padding(.vertical, 10)
                                    .background(Rectangle().frame(height: 1).padding(.top, 40))
                            }
                
                
                
            }
            
            
            Button(action: {
                
                toPasswordChanged = true
                
            }){
                
                HStack{
                    Spacer()
                    Text("Save Password")
                    
                        .font(.system(size:16, design: .rounded))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(20)
                .background(RoundedRectangle(cornerRadius: 100).fill(Color.red))
                .padding(.top,49)
                
            }
            
            
         Spacer()
            
        }.padding(.leading,24)
            .padding(.trailing,24)
     
            
        }
        
    }
}

struct resetPassword_Previews: PreviewProvider {
    static var previews: some View {
        resetPassword()
    }
}
