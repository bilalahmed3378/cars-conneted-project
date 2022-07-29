//
//  Proximity Setting screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 28/07/2022.
//

import SwiftUI

struct Proximity_Setting_screen: View {
    @Environment(\.presentationMode) var presentationMode
    @State var selectedCircle : Int = 0
    @State var isProfileView: Bool = true
    @State var isOnlineStatus: Bool = true
    @State var isRadiusStatus: Bool = true
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    
                    Image("Icons-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                })
               
                
                Spacer()
                
                Text("Transaction")
                    .font(AppFonts.medium_20)
                   
                
                Spacer()
               
               }
            .padding()
            .padding(.leading,-10)
            ScrollView(.vertical, showsIndicators: false){
                Group{
                    
                HStack{
                    VStack(alignment: .leading){
                    Text("Set your Proximity")
                            .font(AppFonts.semiBold_24)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Set your Proximity")
                            .font(AppFonts.semiBold_24))
                        .padding(.bottom,5)
                        
                        Text("rem ipsum dolor sit amet, consectetur adipiscingelit.Vestibulum  nibh eget bibendum nibh.Malesuada eget faucibus arcu turpis lectus. Vulputate sociis et.")
                            .font(AppFonts.regular_14)
                            

                    }
                    
                     Spacer()
                        
                }
                .padding(.bottom)
                .padding(.top)
                    Group{
                HStack{
                    Text("Status (Online)")
                        .font(AppFonts.regular_14)
                    Spacer()
                  
                }
                
                Image("Line 6")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 377, height: 1)
                    .padding(.bottom)
                    .padding(.top)
                
                HStack{
                    Text("Select who can view your profile?")
                        .font(AppFonts.regular_14)
                    Spacer()
                  
                }.padding(.bottom,10)
                    }
                HStack{
                    Image("clarity_world-solid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    Text("Public")
                        .font(AppFonts.regular_14)
                
                    Spacer()
                    
                    Button(action: {
                        self.isProfileView = true
                    }, label: {
                        
                        if (self.isProfileView){
                            Image("Group 7435")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                        else{
                            Image("Group 2-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                    })
                      
                    }.padding(.bottom,10)
                
                   
                        
                HStack{
                    Image("material-symbols_private-connectivity")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    Text("Private")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                    
                    Button(action: {
                        self.isProfileView = false
                    }, label: {
                        if !(self.isProfileView){
                            Image("Group 7435")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            }
                        else{
                            Image("Group 2-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                    })
                   
                }
                }
                Image("Line 6")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 377, height: 1)
                    .padding(.bottom)
                    .padding(.top)
                           
                Group{
                HStack{
                    Text("Select who can see you online?")
                        .font(AppFonts.regular_14)
                    Spacer()
                  
                }.padding(.bottom,10)
                    
                HStack{
                    Image("clarity_world-solid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    Text("Public")
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                    
                    Button(action: {
                        self.isOnlineStatus = true
                    }, label: {
                        if (self.isOnlineStatus) {
                            Image("Group 7435")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                        else{
                            Image("Group 2-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                    })
                   
                }
                .padding(.bottom,10)
                
                HStack{
                    Image("material-symbols_private-connectivity")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    Text("Private")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                    
                    Button(action: {
                        self.isOnlineStatus = false
                    }, label: {
                        if !(self.isOnlineStatus) {
                            Image("Group 7435")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                        else{
                            Image("Group 2-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                    })
                  
                }
                
                Image("Line 6")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 377, height: 1)
                    .padding(.bottom)
                    .padding(.top)
                }
                Group{
                HStack{
                    Text("Change Radius of your Status")
                        .font(AppFonts.regular_14)
                    Spacer()
                  
                }.padding(.bottom,10)
                
                HStack{
                    Image("clarity_world-solid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    Text("Public")
                    
                    Spacer()
                    Button(action: {
                        self.selectedCircle = 0
                    }, label: {
                        if (self.selectedCircle == 0) {
                            Image("Group 7435")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                        else{
                            Image("Group 2-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                    })
                   
                }
                .padding(.bottom,10)
                }
                
                HStack{
                    Image("3 User")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                  
                    Text("Only friends")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                    Button(action: {
                        self.selectedCircle = 1
                    }, label: {
                        if (self.selectedCircle == 1) {
                            Image("Group 7435")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                        else{
                            Image("Group 2-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                    })
                    
                }
                
                HStack{
                    Image("material-symbols_private-connectivity")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                  
                    Text("Private")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                    Button(action: {
                        self.selectedCircle = 2
                    }, label: {
                        if (self.selectedCircle == 2) {
                            Image("Group 7435")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                        else{
                            Image("Group 2-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                    })
                  
                }
                
            }
          
           
        }.padding()
            .navigationBarHidden(true)
    }
}

struct Proximity_Setting_screen_Previews: PreviewProvider {
    static var previews: some View {
        Proximity_Setting_screen()
    }
}
