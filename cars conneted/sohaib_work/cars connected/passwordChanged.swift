//
//  passwordChanged.swift
//  cars connected
//
//  Created by Sohaib Sajjad on 19/07/2022.
//

import SwiftUI

struct passwordChanged: View {
    
    let screenWidth = UIScreen.main.bounds.size.width
    let widthBlockSize = (UIScreen.main.bounds.size.width/100)
    let screenHeight = UIScreen.main.bounds.size.height
    let heightBlockSize = (UIScreen.main.bounds.size.height/100)
    let screenSize = UIScreen.main.bounds.size
    
    @State var toLogin = false
    
    var body: some View {
        
        
        NavigationView{
            
            NavigationLink(destination: loginScreen(), isActive: $toLogin){
                EmptyView()
            }

            
            VStack(alignment:.leading){
                
                ScrollView(.vertical,showsIndicators: false){
                    
                    VStack(alignment: .leading){
                        
                        Text("Password Changed")
                            .foregroundColor(.red)
                            .fontWeight(.medium)
                            .font(.system(size:24))
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                            .padding(.top,10)
                        
                        
                        
                        HStack{
                            
                            Spacer()
                            
                            Image("tick")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: widthBlockSize*80, height: heightBlockSize*35)
                                .padding(.top,72)
                            
                            Spacer()
                            
                        }
                        
                        
                        Button(action: {
                            
                            toLogin = true
                            
                        }){
                            
                            HStack{
                                Spacer()
                                Text("Back To Login")
                                
                                    .font(.system(size:16, design: .rounded))
                                    .fontWeight(.bold)
                                
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            .padding(20)
                            .background(RoundedRectangle(cornerRadius: 100).fill(Color.red))
                            .padding(.top,72)
                            
                        }
                        
                        
                        
                        Spacer()
                        
                    }.padding(.top,70)
                        .padding(.leading,24)
                        .padding(.trailing,24)
               
                    
                }
                    .navigationBarHidden(true)

            }
            
            }
            
            
        }
        
    
}

struct passwordChanged_Previews: PreviewProvider {
    static var previews: some View {
        passwordChanged()
    }
}
