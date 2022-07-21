//
//  onboardingScreen3.swift
//  cars connected
//
//  Created by Sohaib Sajjad on 18/07/2022.
//

import SwiftUI

struct onboardingScreen3: View {
    
    @State var toLogin = false
    @State var toSignup = false

    var body: some View {
        
//
            NavigationLink(destination: loginScreen(), isActive: $toLogin){
                EmptyView()
            }

            NavigationLink(destination: signupScreen(), isActive: $toSignup){
            EmptyView()

            }
                
            VStack{
                
                Image("obscreen3Img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*40)
                
                ZStack{
                    //
                    Image("obscreen3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*60)

                    
                    VStack{
                        
                        ScrollView(.vertical,showsIndicators: false){

                        
                        
                        Image("Ellipse")
                            .resizable()
                            .aspectRatio(contentMode: .fit)

                            .frame(width: UIScreen.widthBlockSize*25, height: UIScreen.heightBlockSize*10)
                           
                        
                        Text("Cars Connected")
                            .font(.system(size: 22))
                            .foregroundColor(.red)
                            .fontWeight(.bold)
                            .padding(.top,18)
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Posuere duis mauris felis diam. Risus rhoncus, vitae fames sit id lorem. Consectetur habitant tellus orci, cras rutrum mattis sed.")
                            .font(.system(size: 14))
                            .padding(.top,18)
                            
                        
                        Button(action: {
                            
                            toSignup = true
                            
                        }){
                            
                            HStack{
                                Spacer()
                                Text("Don't Have an Account?")
                                
                                    .font(.system(size:16, design: .rounded))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(20)
                            .background(RoundedRectangle(cornerRadius: 100).fill(Color.red))
                            .padding(.top,32)
                            
                        }
                        
                        
                        
                        Button(action: {
                            
                            toLogin = true

                            
                        }){
                            
                            HStack{
                                Spacer()
                                Text("Already Have an Account?")
                                
                                    .font(.system(size:16, design: .rounded))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(20)
                            .background(RoundedRectangle(cornerRadius: 100).fill(Color.red))
                            .padding(.top,10)
                            
                        }
                        
                           
                        
                        
                        
                        }
                  
                        
                    }.padding(.trailing,24)
                        .padding(.leading,24)
                        .padding(.bottom,20)
                    
                    
                    //
                }
                
            }
            .edgesIgnoringSafeArea(.all)
            
            
                                   
            
            
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        
        
    }
}

struct onboardingScreen3_Previews: PreviewProvider {
    static var previews: some View {
        onboardingScreen3()
    }
}
