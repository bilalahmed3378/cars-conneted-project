//
//  My Clubs screens.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

struct My_Clubs_screens: View {
    @State private var searchText = ""
    var body: some View {
        ZStack{
            
            VStack{
                
                VStack{
                    
                    // top bar
                    HStack{
                        Image("side menu icon white")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                        
                        Spacer()
                        
                        
                        Text("My Clubs")
                            .font(AppFonts.SemiBold_20)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Image("plus icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.trailing,10)
                        
                        Image("doted icons-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.trailing,10)
                        
                     
                           
                    }
                   
                    .padding(.leading,24)
                        .padding(.trailing,24)
                        .padding(.top,20)
                    
                    // search bar
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
                
                
                
                
                ScrollView(.vertical, showsIndicators: false){
                
                HStack{
                    Text("3 Total Clubs")
                        .font(AppFonts.medium_16)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("3 Total Clubs")
                            .font(AppFonts.medium_16))
                    Spacer()
                }
                .padding()
                
                
                
                LazyVStack{
                    ForEach(0...3, id: \.self){
                        index in
                        myClubsPosts()
                    }
                }
               

             
                }
                
                
                
                Spacer()
                
             
              
            }
           
        }
        .edgesIgnoringSafeArea(.top)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct My_Clubs_screens_Previews: PreviewProvider {
    static var previews: some View {
        My_Clubs_screens()
    }
}

struct myClubsPosts: View{
    var body: some View{
    
        VStack{
            
            ZStack(alignment: .top){
                
                
                
                Image("unsplash_gmA751dxisA-1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.widthBlockSize*92, height: 240)
                    .overlay(Color.black.opacity(0.03))
                    .clipped()
                   
                
                
                VStack{
                    
                    HStack{
                        
                        Spacer()
                        
                        
                        Text("Invite")
                            .foregroundColor(.white)
                            .font(AppFonts.medium_12)
                            .padding(.top,10)
                            .padding(.bottom,10)
                            .padding(.leading,20)
                            .padding(.trailing,20)
                            .background(RoundedRectangle(cornerRadius: 7).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                            .cornerRadius(8)
                            .padding(.trailing,20)
                          

                        
                    }
                    
                    Spacer()
                    
                    
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
                        .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*92, height: UIScreen.heightBlockSize*6))
                      
                    
                    
                    
                }.padding(.top,20)
                
                
                
            }
            .frame(height: 240)
            .cornerRadius(10)
          
            
        }.padding(.bottom,20)
            .padding(.leading,20)
            .padding(.trailing,20)
         
        
        
    }
}
