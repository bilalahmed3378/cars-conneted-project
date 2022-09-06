//
//  User profile setup Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI

struct User_profile_setup_Screen: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var number = ""
    @State var location = ""
    @State var about = ""
    @State var isSelected: Bool = true
    
    @Environment(\.presentationMode) var presentaionMode
    
    @State var toSetupGarage = false
    
    var body: some View {
        VStack{
            
            NavigationLink(destination: Setup_Garage_Screen(), isActive: $toSetupGarage){
                EmptyView()
            }
           
            HStack{
                Image("bilal3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.widthBlockSize*100, height: UIScreen.heightBlockSize*30)
            }
            
            HStack{
                Image("Bilal4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*35, height: UIScreen.heightBlockSize*12)
                    .offset(x: -120 , y: -30 )
            }
           
          
            ScrollView(.vertical, showsIndicators: false){
            HStack{
                Text("Join as")
                    .font(AppFonts.regular_14)
                
                
                Spacer()
            }.padding(.leading)
                    .padding(.trailing)
            
            HStack{
                
                HStack{
                  
                        Button(action: {
                            self.isSelected = true
                        }, label: {
                            if (self.isSelected == true) {
                                Image("Group 7139")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                            
                            else{
                                Image("Rectangle 75")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                          
                        })
                       
                    
                   
                    
                    
                    Text("User")
                        .font(AppFonts.regular_16)
                     
                }
                
                Spacer()
                
                HStack{
                    Button(action: {
                        self.isSelected = false
                    }, label: {
                        if(self.isSelected == false){
                            Image("Group 7139")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                        else{
                            Image("Rectangle 75")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        
                        }
                      
                    })
                       
                    
                   
                    
                    Text("Vendor")
                        .font(AppFonts.regular_16)
                        
                     
                }
                
                Spacer()
                
            }.padding(.top)
                .padding(.trailing)
                .padding(.leading)
            
           
                VStack{
                    if !(self.isSelected){
                        Text("Ventor or Dealer Name")
                          .padding(.top,20)
                          .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    else{
                        Text("First Name")
                          .padding(.top,20)
                          .frame(maxWidth: .infinity, alignment: .leading)
                    }
                   
                    
                      
                    TextField("John",text:$firstName)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 30))
                      .foregroundColor(.black)
                } .padding(.trailing)
                    .padding(.leading)
                
                if(self.isSelected){
                    VStack{
                        Text("Last Name")
                          .padding(.top,20)
                          .frame(maxWidth: .infinity, alignment: .leading)
                        
                          
                        TextField("Khan",text:$lastName)
                          .padding(.vertical, 10)
                          .autocapitalization(.none)
                          .background(Rectangle().frame(height: 1).padding(.top, 30))
                          .foregroundColor(.black)
                    }
                    .padding(.trailing)
                        .padding(.leading)
                }
               
                
                VStack{
                    Text("Number")
                      .padding(.top,20)
                      .frame(maxWidth: .infinity, alignment: .leading)
                    
                      
                    TextField("0092348838484",text:$number)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 30))
                      .foregroundColor(.black)
                } .padding(.trailing)
                    .padding(.leading)
                
                VStack{
                    Text("Location")
                      .padding(.top,20)
                      .frame(maxWidth: .infinity, alignment: .leading)
                    
                      
                    TextField("Washington, DC, USA",text:$location)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 30))
                      .foregroundColor(.black)
                      .overlay(HStack{
                        Spacer()
                        Button(action: {
                         
                        }) {
                          Image("location Icons")
                        }
                      })
                } .padding(.trailing)
                    .padding(.leading)
                
                VStack{
                    Text("About")
                      .padding(.top,20)
                      .frame(maxWidth: .infinity, alignment: .leading)
                    
                      
                    TextField("Your short introduction",text:$about)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 30))
                      .foregroundColor(.black)
                     
                } .padding(.trailing)
                    .padding(.leading)
                
                HStack{
                    Button(action: {
                        self.toSetupGarage = true
                    }, label: {
                        Text("Next")
                            .font(AppFonts.semiBold_16)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    })
                    .padding(.top,30)
                    .padding(.bottom)
                } .padding(.trailing)
                    .padding(.leading)
                
            }
            
           
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
           
    }
}

struct User_profile_setup_Screen_Previews: PreviewProvider {
    static var previews: some View {
        User_profile_setup_Screen()
    }
}
