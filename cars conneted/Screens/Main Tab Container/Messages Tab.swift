//
//  ClubsTab.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/07/2022.
//

import SwiftUI

struct  MessagesTab: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var searchText = ""
    
    @Binding var isDrawerOpen : Bool
    
    init(isDrawerOpen : Binding<Bool>){
        self._isDrawerOpen = isDrawerOpen
    }

    var body: some View {
        ZStack{
        VStack{
        VStack{
            
            // top bar
            HStack{
                Button(action: {
                    self.isDrawerOpen.toggle()
                }, label: {
                    Image("side menu icon white")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(width: 35, height: 35)
                })
               
               
                Spacer()
                
                Text("Messages")
                    .font(AppFonts.SemiBold_20)
                    .foregroundColor(.white)
                
                Spacer()
                
                Image("profile icon home")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                
                
            }.padding(.leading,24)
                .padding(.trailing,24)
                .padding(.top,20)
            
     
            
            HStack{
                
                TextField("Search",text: self.$searchText)
                    .foregroundColor(.red)
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:20,height: 20)
                    .foregroundColor(.red)
                
                
            }
            .padding(15)
            .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
            .padding(.top,20)
            .padding(.leading,20)
            .padding(.trailing,20)
            
        } .padding(.top,30)
            .padding(.bottom,15)
            .background(
                Image("home screen background")
                    .resizable())
            ScrollView(.vertical,showsIndicators: false){
            
                NavigationLink(destination: personal_message_screen(), label: {
                    HStack{
                    
                    Image("unsplash_X6Uj51n5CE8")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    
                    VStack{
                        HStack{
                            Image("Ellipse 17")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 12, height: 12)
                                .offset(x: -18, y: 17)
                                
                            
                        }
                    }
                    
                    VStack(alignment: .leading){
                        
                        HStack(alignment: .top){
                        Text("Arsalan Ash")
                                .font(AppFonts.medium_14)
                                .foregroundColor(.black)
                            Spacer()
                            Text("12:15 am")
                                .foregroundColor(.black)
                                .font(AppFonts.medium_12)
                        }.padding(.bottom,1)
                        
                        Text("Hey! Lorem ipsum is dummy text you....")
                            .font(AppFonts.medium_12)
                            .foregroundColor(.black)
                    }
                    
                  Spacer()
                    
                  
                    
                }
                .padding(24)
              
                })
               
            
            Image("Line 6")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 325, height: 1)
                
                NavigationLink(destination: personal_message_screen(),  label: {
                    HStack{
                    
                    Image("unsplash_X6Uj51n5CE8")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    
                    VStack{
                        HStack{
                            Image("Ellipse 917")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 12, height: 12)
                                .offset(x: -18, y: 17)
                                
                            
                        }
                    }
                    
                    VStack(alignment: .leading){
                        
                        HStack(alignment: .top){
                        Text("Arsalan Ash")
                                .font(AppFonts.medium_14)
                                .foregroundColor(.black)
                            Spacer()
                            Text("12:15 am")
                                .foregroundColor(.black)
                                .font(AppFonts.medium_12)
                        }.padding(.bottom,1)
                        
                        Text("Hey! Lorem ipsum is dummy text you....")
                            .foregroundColor(.black)
                            .font(AppFonts.medium_12)
                    }
                    
                  Spacer()
                    
                  
                    
                }
                .padding(24)
                })
               
          
            
            Image("Line 6")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 325, height: 1)
            
            
          
            
            
            LazyVStack{
                ForEach(0...5,id:\.self){
                    Index in
                    
                    NavigationLink(destination: personal_message_screen(),  label: {
                        HStack{
                        
                        Image("unsplash_X6Uj51n5CE8")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        VStack{
                            HStack{
                                Image("Ellipse 187")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 12, height: 12)
                                    .offset(x: -18, y: 17)
                                    
                                
                            }
                        }
                        
                        VStack(alignment: .leading){
                            
                            HStack(alignment: .top){
                            Text("Arsalan Ash")
                                    .foregroundColor(.black)
                                    .font(AppFonts.medium_14)
                                Spacer()
                                Text("12:15 am")
                                    .foregroundColor(.black)
                                    .font(AppFonts.medium_12)
                            }.padding(.bottom,1)
                            
                            Text("Hey! Lorem ipsum is dummy text you....")
                                .foregroundColor(.black)
                                .font(AppFonts.medium_12)
                        }
                        
                      Spacer()
                        
                      
                        
                    }
                    .padding(24)
                    })
                   
              
                
                Image("Line 6")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 325, height: 1)
                    
                    
                }
            }
            
            }
            
            
        }
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        }
}


