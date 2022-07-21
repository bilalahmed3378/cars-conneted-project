//
//  profileSetup.swift
//  cars connected
//
//  Created by Sohaib Sajjad on 20/07/2022.
//

import SwiftUI

struct profileSetup: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var number = ""
    @State var Location = ""
    @State var bio = ""
    
   @State var toSetupGarage = false
    
    
    var body: some View {
        
        NavigationView{
            
            NavigationLink(destination: garageSetup(), isActive: $toSetupGarage){
                EmptyView()
            }

        
        VStack(alignment: .leading){
            
            //            Group{
            
            VStack{
                
                Image("profileSetup")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*40)

                
            }
            
            
            VStack{
                
                ScrollView(.vertical,showsIndicators: false){
                    
                    VStack(alignment: .leading){
                        
                        
                        Group{
                            
                            Text("First Name")
                                .padding(.top,28)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(.gray)

                            
                            
                            TextField("First Name",text:$firstName)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 42))
                                .foregroundColor(.gray)
                            
                            
                            
                            Text("Last Name")
                                .padding(.top,28)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(.gray)

                            
                            
                            TextField("Last Name",text:$lastName)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 42))
                                .foregroundColor(.gray)

                        }
                        
                        Text("Number")
                            .padding(.top,28)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)

                        
                        
                        TextField("Number",text:$lastName)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 42))
                            .foregroundColor(.gray)

                        
                        Text("Locaton")
                            .padding(.top,28)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)

                        
                        
                        TextField("Locaton",text:$lastName)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 42))
                            .foregroundColor(.gray)

                        
                        Text("Bio")
                            .padding(.top,28)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)

                        
                        
                        TextField("Bio",text:$bio)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 42))
                            .foregroundColor(.gray)

                        
                        Button(action: {
                            
                            toSetupGarage = true
                            
                        }){
                            
                            HStack{
                                Spacer()
                                Text("Next")
                                
                                    .font(.system(size:16, design: .rounded))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(20)
                            .background(RoundedRectangle(cornerRadius: 100).fill(Color.red))
                            .padding(.top,40)
                            
                        }
                        
                        
                        
                        
                        Spacer()
                        
                    }
                    
                }
                
            }.padding(.leading,24)
                .padding(.trailing,24)
            
            
        }.edgesIgnoringSafeArea(.all)
            
        }
            
            
    }
}

struct profileSetup_Previews: PreviewProvider {
    static var previews: some View {
        profileSetup()
    }
}
