//
//  Market place and calssified.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/07/2022.
//

import SwiftUI
import HalfASheet

struct Market_place_and_calssified: View {
    @State var distanceValue : Int = 100
    
    @State private var searchText  = ""
    
    @State private var searchTextFilter  = ""
    
    @State private var selectType = ""
    
    @Environment (\.presentationMode) var presentationMode
    
    @State private var addFilter  = false
    
    @State private var toSearch  = false
    
    
    
    @Binding var isDrawerOpen : Bool
    
    init(isDrawerOpen : Binding<Bool>){
        self._isDrawerOpen = isDrawerOpen
    }
    
    var body: some View {
        ZStack{
            
            NavigationLink(destination: Classified_Search_Screen(), isActive: self.$toSearch){
                EmptyView()
            }
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
                    
                    Text("Market Place")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    NavigationLink(destination: Create_Shop_Screen(), label: {
                        
                        Image("plus icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 30)
                           
                    })
                    
                    
                  
                    
                    
                }.padding(.leading,20)
                    .padding(.trailing,20)
                    .padding(.top,20)
                
                
                
                HStack{
                    
                    TextField("Search",text: self.$searchText)
                        .foregroundColor(.red)
                    
                    
                    NavigationLink(destination: {
                        Classified_Search_Screen()
                    }, label: {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:20,height: 20)
                            .foregroundColor(.red)
                  
                   
                    })
                    
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
                
                
                
            }
            .padding(.top,40)
                .padding(.bottom,15)
                .background(
                    Image("home screen background")
                        .resizable())
            
            
            
            ScrollView(.vertical,showsIndicators: false){
                
                HStack{
                    Text("Popular")
                        .font(AppFonts.semiBold_14)
                    Spacer()
                    
                    NavigationLink(destination: {
                        Popular_Classified_Screen()
                    }, label: {
                        Text("View all")
                            .font(AppFonts.regular_12)
                            .foregroundColor(AppColors.redGradientColor1)
                    })
                      
                
                }
                .padding()
                .padding(.bottom,-20)
                
                ScrollView(.horizontal,showsIndicators: false){
                    LazyHStack{
                        ForEach(0...5 , id:\.self){ index in
                            partsCard()
                                
                        }
                    }
                      
                }
       
                
                         HStack{
                             Text("Recommended")
                                 .font(AppFonts.semiBold_14)
                             Spacer()
                            
                             NavigationLink(destination: {
                                 Recommended_Classified_Screen()
                             }, label: {
                                 Text("View all")
                                     .font(AppFonts.regular_12)
                                     .foregroundColor(AppColors.redGradientColor1)
                             })
                               
                             
                         }
                         .padding()
                         .padding(.bottom,-20)
                
                ScrollView(.horizontal,showsIndicators: false){
                    LazyHStack{
                        ForEach(0...5 , id: \.self){ index in
                            partsCardrecommented()
                        }
                    }
                    
                }
                
                
                
                HStack{
                    Text("Cars")
                        .font(AppFonts.semiBold_14)
                    Spacer()
                   
                    
                    NavigationLink(destination: {
                        All_Cars_View_Screen()
                    }, label: {
                        Text("View all")
                            .font(AppFonts.regular_12)
                            .foregroundColor(AppColors.redGradientColor1)
                    })
                      
                    
                }
                .padding()
                .padding(.bottom,-20)
       
       ScrollView(.horizontal,showsIndicators: false){
           LazyHStack{
               ForEach(0...5 , id: \.self){ index in
                   carsCard()
               }
           }
           
       }
              
                
                HStack{
                    Text("Spareparts")
                        .font(AppFonts.semiBold_14)
                    Spacer()
                   
                    NavigationLink(destination: {
                        All_Sparepart_View_Screen()
                    }, label: {
                        Text("View all")
                            .font(AppFonts.regular_12)
                            .foregroundColor(AppColors.redGradientColor1)
                    })
                       
                    
                }
                .padding()
                .padding(.bottom,-20)
       
       ScrollView(.horizontal,showsIndicators: false){
           LazyHStack{
               ForEach(0...5 , id: \.self){ index in
                   sparepartsCard()
               }
           }
           
       }
                
                
                HStack{
                    Text("Service")
                        .font(AppFonts.semiBold_14)
                    Spacer()
                   
                    NavigationLink(destination: {
                        All_Service_View_Screen()
                    }, label: {
                        Text("View all")
                            .font(AppFonts.regular_12)
                            .foregroundColor(AppColors.redGradientColor1)
                    })
                      
                    
                }
                .padding()
                .padding(.bottom,-20)
       
       ScrollView(.horizontal,showsIndicators: false){
           LazyHStack{
               ForEach(0...5 , id: \.self){ index in
                   serviceCard()
               }
           }
           
       }
                
                
                
            }
                       
        }
            
            HalfASheetFilter(isPresented: $addFilter){
                
                VStack{
                    HStack{
                        Text("Filter Your Search")
                            .foregroundColor(.black)
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
                        .foregroundColor(.black)
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
                            .foregroundColor(.black)
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
                                .foregroundColor(.black)
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        HStack{
                            Text("2")
                                .foregroundColor(.black)
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        HStack{
                            Text("3")
                                .foregroundColor(.black)
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        
                        HStack{
                            Text("4")
                                .foregroundColor(.black)
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        
                        HStack{
                            Text("5")
                                .foregroundColor(.black)
                            
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
       
            
        } .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        
    }
}
   
    //done
    struct partsCard : View {
        
        var body: some View {
           
            NavigationLink(destination: {
                Classified_Spare_Parts_Screen()
            }, label: {
                
                VStack(alignment: .leading){
                    
                    Image("Rectangle 1263")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 210, height: 180)
                    
                    Text("Enginge Valve 16.5")
                        .foregroundColor(.black)
                        .font(AppFonts.medium_14)
                        .lineLimit(1)
                        .padding(.leading,10)
                        .padding(.trailing,10)
                    
                    HStack{
                        Text("Engine Part")
                            .foregroundColor(.gray)
                            .font(AppFonts.semiBold_12)
                        Spacer()
                        Text("$50")
                            .font(AppFonts.medium_14)
                            .foregroundColor(AppColors.redGradientColor1)
                        
                    }
                    .padding(.leading,10)
                    .padding(.trailing,10)
                    
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
                    .padding(.leading,10)
                    .padding(.trailing,10)
                    .padding(.bottom,10)
                }
                .cornerRadius(10)
                .background(RoundedRectangle(cornerRadius: 10).fill(.white).shadow(radius: 3))
                .padding(5)
                .padding(.leading,10)
                    
            })
          
          
   
        }
    }


struct partsCardrecommented : View {
    
    var body: some View {
       
        NavigationLink(destination: {
            Classified_Spare_Parts_Screen()
        }, label: {
            ZStack(alignment: .leading){
                Image("Rectangle 1264")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(10)
                
                VStack(alignment: .leading){
                    Spacer()
                    Text("lazer Head lights")
                        .foregroundColor(.white)
                        .font(AppFonts.semiBold_16)
                    
                    HStack{
                        Text("Spare parts")
                            .font(AppFonts.medium_12)
                            .foregroundColor(.white)
                        Spacer()
                        Text("$50")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_16)

                    }
                    
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
                    .padding(.top,-10)
                    
                }
                .padding()
                
            }
            .frame(width: 340, height: 200)
                .padding()
                .padding(.trailing,-15)
      
        
        })
           
       

    }
}


struct carsCard : View {
    
    var body: some View {
       
        NavigationLink(destination: {
            Classified_Vehicle_Screen()
        }, label: {
            VStack(alignment: .leading){
                
                Image("Rectangle 1263")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 210, height: 180)
                
                Text("Enginge Valve 16.5")
                    .foregroundColor(.black)
                    .font(AppFonts.medium_14)
                    .lineLimit(1)
                    .padding(.leading,10)
                    .padding(.trailing,10)
                
                HStack{
                    Text("Engine Part")
                        .foregroundColor(.gray)
                        .font(AppFonts.semiBold_12)
                    Spacer()
                    Text("$50")
                        .font(AppFonts.medium_14)
                        .foregroundColor(AppColors.redGradientColor1)
                    
                }
                .padding(.leading,10)
                .padding(.trailing,10)
                
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
                .padding(.leading,10)
                .padding(.trailing,10)
                .padding(.bottom,10)
            }
            .cornerRadius(10)
            .background(RoundedRectangle(cornerRadius: 10).fill(.white).shadow(radius: 3))
            .padding(5)
            .padding(.leading,10)
                
          
        })
       

    }
}

struct sparepartsCard : View {
    
    var body: some View {
       
        NavigationLink(destination: {
            Classified_Spare_Parts_Screen()
        }, label: {
            VStack(alignment: .leading){
                
                Image("Rectangle 1263")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 210, height: 180)
                
                Text("Enginge Valve 16.5")
                    .foregroundColor(.black)
                    .font(AppFonts.medium_14)
                    .lineLimit(1)
                    .padding(.leading,10)
                    .padding(.trailing,10)
                
                HStack{
                    Text("Engine Part")
                        .foregroundColor(.gray)
                        .font(AppFonts.semiBold_12)
                    Spacer()
                    Text("$50")
                        .font(AppFonts.medium_14)
                        .foregroundColor(AppColors.redGradientColor1)
                    
                }
                .padding(.leading,10)
                .padding(.trailing,10)
                
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
                .padding(.leading,10)
                .padding(.trailing,10)
                .padding(.bottom,10)
            }
            .cornerRadius(10)
            .background(RoundedRectangle(cornerRadius: 10).fill(.white).shadow(radius: 3))
            .padding(5)
            .padding(.leading,10)
                
          

        })
     
    }
}


struct serviceCard : View {
    
    var body: some View {
       
        NavigationLink(destination: {
            Classified_Service_Screen()
        }, label: {
            VStack(alignment: .leading){
                
                Image("Rectangle 1263")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 210, height: 180)
                
                Text("Enginge Valve 16.5")
                    .foregroundColor(.black)
                    .font(AppFonts.medium_14)
                    .lineLimit(1)
                    .padding(.leading,10)
                    .padding(.trailing,10)
                
                HStack{
                    Text("Engine Part")
                        .foregroundColor(.gray)
                        .font(AppFonts.semiBold_12)
                    Spacer()
                    Text("$50")
                        .font(AppFonts.medium_14)
                        .foregroundColor(AppColors.redGradientColor1)
                    
                }
                .padding(.leading,10)
                .padding(.trailing,10)
                
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
                .padding(.leading,10)
                .padding(.trailing,10)
                .padding(.bottom,10)
            }
            .cornerRadius(10)
            .background(RoundedRectangle(cornerRadius: 10).fill(.white).shadow(radius: 3))
            .padding(5)
            .padding(.leading,10)
                
        })
        
     
      

    }
}



