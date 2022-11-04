//
//  Transcation history Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 29/08/2022.
//

import SwiftUI

struct Transcation_history_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    
    @State private var searchText = ""
  
    @State var isSelected: Int = 0
    
   
    
    @State var distanceValue : Int = 100
    
    @State private var addFilter  = false
    
    @State private var selectType = ""
    
    @State private var searchTextFilter  = ""
    
    @State private var toSearch  = false
    
    @State private var search = ""
    var body: some View {
        ZStack{
        VStack{
            VStack{
                
                Group{
                HStack{
                    Button(action: {
                        self.presentaionMode.wrappedValue.dismiss()
                    }, label: {
                        Image("back icon")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                    })
                  
                    
                   Spacer()
                    
                    Text("Transaction")
                        .foregroundColor(.white)
                        .font(AppFonts.SemiBold_20)
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        My_Profile_Screen()
                    }, label: {
                        Image("Ellipse 35-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)

                    })
                    
                    
                   
                    
                }.padding(.leading)
                    .padding(.trailing)
                    .padding(.top)
                
            }  .padding(.top,40)
                .padding(.bottom,30)
                .background(
                    Image("home screen background")
                    .resizable())
            }
            
            HStack{
                
                TextField("Search",text: self.$search)
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
            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
            .padding()
            
            ScrollView(){
            HStack{
                Text("Today")
                    .foregroundColor(.gray)
                    .font(AppFonts.medium_16)
                
                Spacer()
            }.padding(.leading)
                .padding(.trailing)
            
                LazyVStack{
                    ForEach(0...3, id: \.self){index in
                        transactionsHistory()
                        
                    }
                }
                
                HStack{
                    Text("22/10/2021")
                        .font(AppFonts.medium_16)
                        .foregroundColor(.gray)
                    
                    Spacer()
                }
                .padding()
                .padding(.bottom,-10)
                
                LazyVStack{
                    ForEach(0...3, id: \.self){index in
                        transactionsHistory()
                        
                    }
                }
                
                
            
            }
            Spacer()
            
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
                    
                    
                    
                    Text("Select Type")
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

struct Transcation_history_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Transcation_history_Screen()
    }
}

struct transactionsHistory: View{
    var body: some View{
        VStack{
            HStack{
                Text("Basic User")
                    .font(AppFonts.medium_16)
                
                Spacer()
                
                Text("$50")
                    .foregroundColor(.blue)
                    .font(AppFonts.medium_16)
            }
            .padding()
            .padding(.bottom,-10)
            
            HStack{
                Text("03/07/2022")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Text("-")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Text("04/08/2022")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Spacer()
                
            }
            .padding(.leading)
                .padding(.trailing)
            
            HStack{
                Image("logos_visa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 15)
                
                Text("**** **** **** *932")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Spacer()
                
                NavigationLink(destination: {
                    Subscription_Billing_Detail_Screen()
                }, label: {
                    Text("View Reciept")
                        .font(AppFonts.regular_12)
                        .foregroundColor(AppColors.redGradientColor1)
                })
               
                
            }
            .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            
        }
            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
            .padding(.leading)
            .padding(.trailing)
            .padding(.top,10)
            .padding(.bottom,10)
    }
}
