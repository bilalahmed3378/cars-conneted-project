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
    
    @State var distanceValue : Int = 100
    
    @Binding var isDrawerOpen : Bool
    
    @State private var addFilter  = false
    
    @State private var selectType = ""
    
    @State private var searchTextFilter  = ""
    @State private var toSearch  = false
    
    @State var addItems = false
    
    @State private var showingSheet = false
   
    
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
                    self.isDrawerOpen = true
                }, label: {
                    Image("side menu icon white")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(width: 35, height: 35)
                })
               
               
                Spacer()
                
                Text("Messages")
                    .font(AppFonts.SemiBold_20)
                    .foregroundColor(AppColors.whiteColor)
                
                Spacer()
                
                NavigationLink(destination: {
                    My_Profile_Screen()
                }, label: {
                    Image("profile icon home")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                })
               
                
                
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
                
                Button(action: {
                    self.addFilter = true
                }, label: {
                    Image("Filter 2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                   
                       
                })

                
                
            }
            .padding(15)
            .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
            .padding(.top,20)
            .padding(.leading,20)
            .padding(.trailing,20)
            
        } .padding(.top,40)
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
                                .foregroundColor(AppColors.BlackColor)
                            Spacer()
                            Text("12:15 am")
                                .foregroundColor(AppColors.BlackColor)
                                .font(AppFonts.medium_12)
                        }.padding(.bottom,1)
                        
                        Text("Hey! Lorem ipsum is dummy text you....")
                            .font(AppFonts.medium_12)
                            .foregroundColor(AppColors.BlackColor)
                    }
                    
                  Spacer()
                    
                  
                    
                }
                .padding()
              
                })
               
            
           Divider()
                
               
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
                                .foregroundColor(AppColors.BlackColor)
                            Spacer()
                            Text("12:15 am")
                                .foregroundColor(AppColors.BlackColor)
                                .font(AppFonts.medium_12)
                        }.padding(.bottom,1)
                        
                        Text("Hey! Lorem ipsum is dummy text you....")
                            .foregroundColor(AppColors.BlackColor)
                            .font(AppFonts.medium_12)
                    }
                    
                  Spacer()
                    
                  
                    
                }
                .padding()
               
               
          
            
         Divider()
            
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
                                    .foregroundColor(AppColors.BlackColor)
                                    .font(AppFonts.medium_14)
                                Spacer()
                                Text("12:15 am")
                                    .foregroundColor(AppColors.BlackColor)
                                    .font(AppFonts.medium_12)
                            }.padding(.bottom,1)
                            
                            Text("Hey! Lorem ipsum is dummy text you....")
                                .foregroundColor(AppColors.BlackColor)
                                .font(AppFonts.medium_12)
                        }
                        
                      Spacer()
                        
                      
                        
                    }
                    .padding()
                    })
                   
              
                
              Divider()
                    
                    
                }
            }
            
            }
            
            
        }
            
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Button(action: {
                        self.showingSheet.toggle()
                    }){
                     Image(systemName: "plus")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 15, height: 15)
                            .foregroundColor(AppColors.whiteColor)
                            .padding(20)
                            .background(Circle().fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).shadow(radius: 10))
                            .padding(.trailing,20)
                            .padding(.bottom,10)
                    }
//
                    
                    
                   
                }
            }
            
           
            
        }
        .sheet(isPresented: $showingSheet){
            AddNewMessageScreen()
            
        }
        .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        }
}


struct AddNewMessageScreen : View{
    
    @State private var comment = ""
    @State private var searchText = ""
    
    
    @State var isFollow = false
    
    var body: some View{
       
        VStack{
           
            HStack{
                
                TextField("Search",text: self.$searchText)
                    .foregroundColor(.red)
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:20,height: 20)
                    .foregroundColor(.red)
                
                Button(action: {
                    
                }, label: {
                    Image("Filter 2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                   
                       
                })

                
                
            }
            .padding(15)
            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
            .padding(20)
            
            ScrollView(.vertical, showsIndicators: false){
                LazyVStack{
                    ForEach(0...5 , id: \.self){ index in
                        HStack{
                            Image("unsplash_X6Uj51n5CE8")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                            
                            VStack(alignment: .leading){
                                Text("Emma Watson")
                                    .font(AppFonts.medium_14)
                                    .padding(.bottom,2)
                                
                                Text("Lala Musa, Pakistan")
                                    .foregroundColor(.gray)
                                    .font(AppFonts.regular_12)
                                
                            }
                            Spacer()
                            
                            
                            
                            
                            Button(action: {
                                
                            }, label: {
                                Text("Message")
                                    .font(AppFonts.medium_12)
                                    .foregroundColor(AppColors.redGradientColor1)
                                    .padding()
                            })
                            
                            
                            
                        }.padding(.leading,20)
                            .padding(.trailing,20)
                        
                        Divider()
                    }
                }
            }
            
          
        }.edgesIgnoringSafeArea(.bottom)
        
    }
}

  

