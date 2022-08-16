//
//  Maeket place search.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 24/07/2022.
//

import SwiftUI

struct Maeket_place_search: View {
    @Environment (\.presentationMode) var presentationMode
    @State private var searchText = ""
    @State var toScreen = false
   
    
    
    var body: some View {
        
        
        ZStack{
            
            VStack{
                
                VStack(spacing:0){
                    
                    HStack{
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image("back icon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width :UIScreen.widthBlockSize*10, height: UIScreen.heightBlockSize*10)
                        })
                      
                            
                        
                        HStack{
                          
                          TextField("BMW Head Lights",text: self.$searchText)
                                .font(AppFonts.regular_14)
                                .foregroundColor(.red)
                                
                           
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width :20, height: 20)
                                .foregroundColor(.red)
                       
                        } .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                        
                        Button(action: {}, label: {
                            Image("Filter 2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.widthBlockSize*8, height: UIScreen.heightBlockSize*8)
                                .padding()
                                .frame(width: 53, height: 53)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                                .padding(.leading,10)
                        })
                       
                    }
                
                }
                .padding()
                    .padding(.top,40)
                    .background(
                        Image("home screen background")
                            .resizable())
                
                HStack{
                    Text("45 Total Results")
                        .font(AppFonts.medium_16)
                        .foregroundColor(AppColors.redGradientColor1)
                    Spacer()
                }.padding()
                
                ScrollView(.vertical, showsIndicators: false){
                    LazyVStack{
                        ForEach(0...5 , id:\.self){ index in
                            marketPlaceSreachCards()
                    }
                    
                }
             
                }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
       
}

struct Maeket_place_search_Previews: PreviewProvider {
    static var previews: some View {
        Maeket_place_search()
    }
}

struct marketPlaceSreachCards : View {
    
   
    
    var body: some View {
       
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
                        .padding(.leading,15)
                    
                    VStack(alignment: .leading){
                        Text("Jhon Deo Smith")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_12)
                            .padding(.bottom,3)
                        Text("Tot. Sales 13")
                            .foregroundColor(.white)
                            .font(AppFonts.regular_12)
                      
                    }.padding(.leading)
                    Spacer()
                    Text("$50")
                        .foregroundColor(.white)
                        .font(AppFonts.SemiBold_20)
                        .padding(.trailing,10)
                    
                }.padding()
                    .padding(.bottom,-5)
                    .padding(.top,5)
                
                HStack{
                Text("BMW Lazer Head Lights")
                        .font(AppFonts.SemiBold_20)
                    .foregroundColor(.white)
                }.padding(.leading,30)
                
                HStack{
                    Text("Spare Parts")
                        .foregroundColor(.white)
                        .font(AppFonts.semiBold_12)
                }.padding(.leading,30)
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
                .padding(.leading,30)
                .padding(.top,1)
                .padding(.bottom,5)
                
                HStack{
                    Text("$500")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.white)
                        .padding(10)
                        .padding(.leading,10)
                        .padding(.trailing,10)
                        .background(RoundedRectangle(cornerRadius: 50).fill(.gray))
                        .padding(.leading,10)
                       
                    
                    Spacer()
                    Button(action: {
                        
                      
                        
                    }, label: {
                        Text("Purchase")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.white)
                            .padding(10)
                            .padding(.leading,15)
                            .padding(.trailing,15)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    })
                  
                       
                }
                .padding(.leading)
                .padding(.trailing)
                
                Spacer()
                
              
               
            }
            
        }
        .frame(width: UIScreen.widthBlockSize*90, height: 250)
        
    }
}
}
