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
                    .foregroundColor(.white)
                
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
                    .padding()
                    })
                   
              
                
              Divider()
                    
                    
                }
            }
            
            }
            
            
        }
            
            HalfASheetFilter(isPresented: $addFilter){
                
                VStack{
                    HStack{
                        Text("Filter Your Search")
                        Spacer()
                    }
                    .padding(.top)
                    
                    HStack{
                        
                        TextField("Search",text: self.$searchTextFilter)
                            .foregroundColor(.red)
                        
                        
                     
                            Button(action: {
                                self.addFilter = false
                                self.toSearch = true
                            }, label: {
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:20,height: 20)
                                    .foregroundColor(.red)
                          
                            })
                        
                      
                           
                        
                        
                    }
                    .padding(15)
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(.red).frame(width: UIScreen.widthBlockSize*90))
                    .padding(.top,10)
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    
                    
                    
                    Text("Selext Type")
                      .padding(.top,20)
                      .frame(maxWidth: .infinity, alignment: .leading)
                      
                      .padding(.bottom,-5)
                    
                      
                    TextField("Body parts, Engine parts, etc",text:$selectType)
                        .foregroundColor(AppColors.redGradientColor1)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(width:UIScreen.widthBlockSize*90, height: 1).padding(.top, 40))
                      .foregroundColor(.black)
                      
                      .overlay(HStack{
                        Spacer()
                       
                          Menu(content:{
                              Button(action: {}, label: {
                                  Text("Body parts")
                              })
                              
                              Button(action: {}, label: {
                                  Text("Engine parts")
                              })
                              
                          }, label:{
                              Image("dropdown menu 2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding()
                          })
                          
                          
                      })
                    
                    HStack{
                        Text("Price Range")
                        Spacer()
                    }
                    .padding(.top)
                    
                    SeekBar(lable: "$", maxRange: 5000, color: AppColors.redGradientColor2, value: self.$distanceValue)
                        
                        .padding(.bottom)
                    
                    
                    
                    HStack{
                        Text("Rating")
                        Spacer()
                    }
                    
                    HStack{
                        
                        HStack{
                            Text("1")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        HStack{
                            Text("2")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        HStack{
                            Text("3")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        
                        HStack{
                            Text("4")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        
                        HStack{
                            Text("5")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    Button(action: {
                        self.addFilter = false
                        self.toSearch = true
                    }, label: {
                        Text("Apply Filter")
                            .font(AppFonts.semiBold_16)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                            .padding(.top)
                            .padding(.bottom)
                    })
                       
                    
                
                    
                    
                    
                    
                    
                    
                }
            }
            .height(.proportional(0.60))
            .closeButtonColor(UIColor.gray)
            .backgroundColor(UIColor.white)
            
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        }
}



  

