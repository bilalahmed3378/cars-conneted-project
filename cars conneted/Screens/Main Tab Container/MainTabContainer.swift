//
//  MainTabContainer.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/07/2022.
//

import SwiftUI

struct MainTabContainer: View {
    
    @State var selectedIndex : Int = 0
    
    var body: some View {
        
        ZStack{
            
            VStack{
                
                if(self.selectedIndex == 0){
                    HomeTab()
                }
                else if(self.selectedIndex == 1){
                  
                }
                else if(self.selectedIndex == 2){
                    
                }
                else if(self.selectedIndex == 3){
                    Market_place_and_calssified()
                }
                else{
                    MessagesTab()
                }
            
                Spacer()
                
                HStack{
                    
                    Button(action: {
                        withAnimation{
                            self.selectedIndex = 0
                        }
                    }){
                        VStack{
                            Image("Home icon")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text("Home")
                                .foregroundColor(.white)
                        }
                        .opacity(self.selectedIndex == 0 ? 1 : 0.5)
                        
                    }
                    
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation{
                            self.selectedIndex = 1
                        }
                    }){
                        VStack{
                            Image("clubs icon")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text("Club")
                                .foregroundColor(.white)
                        }
                        .opacity(self.selectedIndex == 1 ? 1 : 0.5)
                        
                    }
                    
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation{
                            self.selectedIndex = 2
                        }
                    }){
                        VStack{
                            Image("event icon")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text("Events")
                                .foregroundColor(.white)
                        
                        }
                        .opacity(self.selectedIndex == 2 ? 1 : 0.5)
                    }
                    
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation{
                            self.selectedIndex = 3
                        }
                    }){
                        
                            VStack{
                                Image("classified icon")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                Text("Classified")
                                    .foregroundColor(.white)
                            
                            }
                            .opacity(self.selectedIndex == 3 ? 1 : 0.5)
                       
                        
                    }
                    
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation{
                            self.selectedIndex = 4
                        }
                    }){
                        
                            VStack{
                                Image("Message icon")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                Text("Message")
                                    .foregroundColor(.white)
                            }
                            .opacity(self.selectedIndex == 4 ? 1 : 0.5)
                      
                        
                    }
                    
                    
                }.padding(.top,20)
                    .padding(.bottom,20)
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .background(
                        RoundedRectangle(cornerRadius: 20, style: .continuous).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))
                        
                    )
                
            }
            
        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.top)
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

