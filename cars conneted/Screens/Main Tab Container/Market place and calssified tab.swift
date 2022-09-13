//
//  Market place and calssified.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/07/2022.
//

import SwiftUI

struct Market_place_and_calssified: View {
    @Environment (\.presentationMode) var presentationMode
    @State private var searchText  = ""
    
    @Binding var isDrawerOpen : Bool
    
    init(isDrawerOpen : Binding<Bool>){
        self._isDrawerOpen = isDrawerOpen
    }
    
    var body: some View {
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
                            .frame(width: 20, height: 20)
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
        .edgesIgnoringSafeArea(.all)
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

