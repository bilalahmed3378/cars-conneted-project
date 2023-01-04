//
//  Classified Search Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 15/09/2022.
//

import SwiftUI
import Kingfisher

struct Classified_Search_Screen: View {
    
    @Environment (\.presentationMode) var presentationMode
    @State private var searchText  = ""
    
    @State var distanceValue : Int = 100
    
    @State private var addFilter  = false
    
    @State private var selectType = ""
    
    @State private var searchTextFilter  = ""
    
    @State private var toSearch  = false
    
    @State private var showSearchBar : Bool = false

    
    
    var body: some View {
        ZStack{
        VStack{
            
            VStack{
                
                // top bar
             
                HStack{
                    
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("BackIconWhite")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .padding(.top)
                            .padding(.leading)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        self.showSearchBar.toggle()
                    }, label: {
                        Image("White search Icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                    })
                    
                }
                    
                    
                if(self.showSearchBar){
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
                    .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                    .padding(.top,20)
                    .padding(.leading,20)
                    .padding(.trailing,20)
                }
               
                
                
                
            }
            .padding(.top,40)
                .padding(.bottom,15)
                .background(
                    Image("home screen background")
                        .resizable())
            
            
            
            ScrollView(.vertical,showsIndicators: false){
                
              
                
             
                    LazyVStack{
                        ForEach(0...5 , id:\.self){ index in
                            classifiedSearchCard()
                                
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
            
            
        
        }
        .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}



struct classifiedSearchCard: View{
    var body: some View{
        
        ZStack(alignment: .top){
            Image("Rectangle 1265")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.widthBlockSize*90, height: 250)
                .cornerRadius(10)
            
            VStack(alignment: .leading){
                HStack{
                    Image("Rectangle 1266")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 70, height: 70)
                       
                    
                    VStack(alignment: .leading){
                        Text("Jhon Deo Smith")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_12)
                            .padding(.bottom,3)
                        Text("Tot. Sales 13")
                            .foregroundColor(.white)
                            .font(AppFonts.regular_12)
                      
                    }
                    
                    Spacer()
                    Text("$50")
                        .foregroundColor(.white)
                        .font(AppFonts.SemiBold_20)
                        .padding(.trailing,10)
                    
                }.padding()
                    .padding(.bottom,-5)
                   
                
                HStack{
                Text("BMW Lazer Head Lights")
                        .font(AppFonts.SemiBold_20)
                    .foregroundColor(.white)
                }.padding(.leading)
                
                HStack{
                    Text("Spare Parts")
                        .foregroundColor(.white)
                        .font(AppFonts.semiBold_12)
                }.padding(.leading)
                .padding(.top,-3)
                
                HStack{
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                }
                .padding(.leading)
                .padding(.top,1)
                .padding(.bottom,5)
                
                HStack{
                    Text("$500")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.white)
                        .padding(10)
                        .padding(.leading,10)
                        .padding(.trailing,10)
                        .background(RoundedRectangle(cornerRadius: 50).fill(.gray).frame(width: UIScreen.widthBlockSize*15, height: UIScreen.heightBlockSize*5))
                        
                       
                    
                    Spacer()
                   
                    
                    NavigationLink(destination: {
                        Classified_Spare_Parts_Screen()
                    }, label: {
                        Text("Purchase")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.white)
                            .padding(10)
                            .padding(.leading,30)
                            .padding(.trailing,30)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*40, height: UIScreen.heightBlockSize*5))
                            
                    
                  
                    })
                    .padding(.trailing)
                      
                       
                }
                .padding(.leading)
                .padding(.trailing)
                
                Spacer()
                
              
               
            }
            
        }
        .frame(width: UIScreen.widthBlockSize*90, height: 250)
        
        
    }
}
