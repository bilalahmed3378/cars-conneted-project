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
    var body: some View {
        VStack{
            
            VStack{
                
                // top bar
                HStack{
                   
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    Spacer()
                    
                    Text("Market Place")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    NavigationLink(destination: Setting_Screen(), label: {
                        
                        Image("plus icon")
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
                    Button(action: {}, label: {
                        Text("View all")
                            .font(AppFonts.regular_12)
                            .foregroundColor(AppColors.redGradientColor1)
                    })
                }
                .padding()
                
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
                             Button(action: {}, label: {
                                 Text("View all")
                                     .font(AppFonts.regular_12)
                                     .foregroundColor(AppColors.redGradientColor1)
                             })
                         }
                         .padding()
                
                ScrollView(.horizontal,showsIndicators: false){
                    LazyHStack{
                        ForEach(0...5 , id: \.self){ index in
                            partsCardrecommented()
                        }
                    }
                    
                }
                
            }
            
            
           
                        
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
    
    struct Market_place_and_calssified_Previews: PreviewProvider {
        static var previews: some View {
            Market_place_and_calssified()
        }
    }
    //done
    struct partsCard : View {
        
        var body: some View {
           
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
                
          
   
        }
    }
}

struct partsCardrecommented : View {
    
    var body: some View {
       
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
      
        
       

    }
}
