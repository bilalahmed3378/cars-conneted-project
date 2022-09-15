//
//  Event Search Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 15/09/2022.
//

import SwiftUI

struct Club_Search_Screen: View {
    @State private var searchText = ""
    
    @Environment(\.presentationMode) var presentaionMode
    
    @State var distanceValue : Int = 100
    
    @State private var addFilter  = false
    
    @State private var selectType = ""
    
    @State private var searchTextFilter  = ""
    
    @State private var toSearch  = false
    
    var body: some View {
        ZStack{
            VStack{
                
                VStack{
                    
                    // top bar
                    HStack{
                       
                        Button(action: {
                            self.presentaionMode.wrappedValue.dismiss()
                        }, label: {
                            Image("back icon")
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                   .frame(width: 35, height: 35)
                        })
                        
                        Spacer()
                        
                        Text("Search Club")
                            .font(AppFonts.SemiBold_20)
                            .foregroundColor(.white)
                        
                        Spacer()
                      
                        Button(action: {
                            self.addFilter = true
                        }, label: {
                            Image("Icons-6")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 26, height: 26)
                        
                      
                        })
                            
                          
                        
                        
                    }.padding(.leading,24)
                        .padding(.trailing,24)
                        .padding(.top,20)
                    
                    
                    
                    HStack{
                        
                        TextField("Search",text: self.$searchText)
                            .foregroundColor(.red)
                        
                        
                        NavigationLink(destination: {
                            Club_Search_Screen()
                        }, label: {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:20,height: 20)
                                .foregroundColor(.red)
                      
                        })
                        
                     

                       
                        
                        
                    }
                    .padding(15)
                    .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                    .padding(.top,20)
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    
                    
                    
                }
                .padding(.top,30)
                    .padding(.bottom,15)
                    .background(
                        Image("home screen background")
                            .resizable())
                
                ScrollView(){
                    LazyVStack{
                        ForEach(0...10, id: \.self){ index in
                            clubSearchResult()
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

struct Club_Search_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Club_Search_Screen()
    }
}

struct clubSearchResult: View{
    var body: some View{
        
        ZStack(alignment: .top){
            
            
            
            Image("unsplash_gmA751dxisA-1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.widthBlockSize*90, height: 240)
                .overlay(Color.black.opacity(0.03))
                .clipped()
               
            
            
            VStack{
                
                HStack{
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: {
                        Club_details_member_view_Screen()
                    }, label: {
                        Text("Join")
                            .foregroundColor(.white)
                            .font(AppFonts.medium_12)
                            .padding(10)
                            .padding(.leading,10)
                            .padding(.trailing,10)
                            .background(AppColors.redGradientColor1)
                            .cornerRadius(8)
                            .padding(.trailing,30)
                          

                    })
                 
                    
                }
                
                Spacer()
                
                NavigationLink(destination: {
                   Club_details_member_view_Screen()
                }, label: {
                    HStack{
                        
                        Text("Ace Classic Club")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        Image("unsplash_-IPFb6J03Mw")
                            .offset(x:36)
                        
                        Image("unsplash_-IPFb6J03Mw")
                            .offset(x:24)
                        
                        Image("unsplash_-IPFb6J03Mw")
                            .offset(x:12)
                        
                        Image("unsplash_-IPFb6J03Mw")
                        //                            .offset(x:15)
                        
                        Text("+120")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                        
                        
                    }.padding()
                        .padding(.leading)
                        .padding(.trailing)
                        .background(RoundedCorners(tl: 0, tr: 0, bl: 0, br: 0).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*6))
                      
                })
                
             
                
                
                
            }.padding(.top)
            
            
            
        }
        .frame(height: 240)
        .cornerRadius(10)
        .padding(.top)
    }
}
