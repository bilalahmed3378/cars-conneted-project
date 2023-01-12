//
//  MainTabContainer.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/07/2022.
//

import SwiftUI

struct MainTabContainer: View {
    
    @State var selectedIndex : Int = 0
    
//    @Binding var isUserLoggedIn : Bool

    
    @State var isDrawerOpen : Bool = false
    
//    init(isUserLoggedIn  : Binding<Bool>){
//        self._isUserLoggedIn = isUserLoggedIn
//    }
//
    var body: some View {
        
        ZStack{
            
            VStack{
                
                if(self.selectedIndex == 0){
                    HomeTab(isDrawerOpen: self.$isDrawerOpen)
                }
                else if(self.selectedIndex == 1){
                  Clubs_Screen(isDrawerOpen: self.$isDrawerOpen)
                }
                else if(self.selectedIndex == 2){
                    Events_Screen(isDrawerOpen: self.$isDrawerOpen)
                }
                else if(self.selectedIndex == 3){
                    Market_place_and_calssified(isDrawerOpen: self.$isDrawerOpen)
                }
                else{
                    MessagesTab(isDrawerOpen: self.$isDrawerOpen)
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
                                .frame(width: 28, height: 28)
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
                                .frame(width: 28, height: 28)
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
                                .frame(width: 28, height: 28)
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
                                    .frame(width: 28, height: 28)
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
                                    .frame(width: 28, height: 28)
                                Text("Message")
                                    .foregroundColor(.white)
                            }
                            .opacity(self.selectedIndex == 4 ? 1 : 0.5)
                      
                        
                    }
                    
                    
                }
                    .padding(15)
                    .background(
                        RoundedCorners(tl: 20, tr: 20, bl: 0, br: 0).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))
//                        RoundedRectangle(cornerRadius: 20, style: .continuous).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))
//
                    )
                
            }
            
            NavigationDrawer(isDrawerOpen: self.$isDrawerOpen,  mainTabContainer: self)
            
        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.top)
        .edgesIgnoringSafeArea(.bottom)
            
        
    }
}


