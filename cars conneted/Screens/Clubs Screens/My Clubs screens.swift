//
//  My Clubs screens.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

struct My_Clubs_screens: View {
    @Environment(\.presentationMode) var presentaionMode
    @State private var searchText = ""
    var body: some View {
        ZStack{
            
            VStack{
                
                VStack{
                    
                    // top bar
                    HStack{
                        Button(action: {
                            self.presentaionMode.wrappedValue.dismiss()
                        }, label: {
                            Image("BackIconWhite")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                        })
                      
                        
                        Spacer()
                        
                        
                        Text("My Clubs")
                            .font(AppFonts.SemiBold_20)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        NavigationLink(destination: Create_Club_Screen(), label: {
                            Image("plus icon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .padding(.trailing,10)
                        })
                       
                        
                        Image("doted icons-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                           
                        
                     
                           
                    }
                   
                    .padding(.leading)
                        .padding(.trailing)
                       
                    
                    // search bar
//                    HStack{
//
//                        TextField("Search",text: self.$searchText)
//                            .foregroundColor(.red)
//
//                        Image(systemName: "magnifyingglass")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width:20,height: 20)
//                            .foregroundColor(.red)
//
//                        Button(action: {
//
//                        }, label: {
//                            Image("Filter 2")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 20, height: 20)
//
//
//                        })
//
//
//
//                    }
//                    .padding(10)
//                    .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
//                    .padding(.top,10)
//                    .padding(.leading)
//                    .padding(.trailing)
                    
                }
               
                .padding(.top,60)
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
        .navigationBarHidden(true)
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
                    .frame(width: UIScreen.screenWidth - 40)
                    .overlay(Color.black.opacity(0.03))
                    .clipped()
                   
                
                
                VStack{
                    
                    HStack{
                        
                        Spacer()
                        
                        NavigationLink(destination: {
                            Invite_Friends_Screen()
                        }, label: {
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
                              
                        })
                     

                        
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: My_club_Details__admin_view__Screen(), label: {
                        HStack{
                            
                            
                            
                            
                            Text("Ace Classic Club")
                                .foregroundColor(.white)
                                .font(AppFonts.regular_12)
                            
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
                                .font(AppFonts.regular_12)
                            
                            
                        } .padding()
                            .padding(.top,-20)
                            .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.screenWidth - 40, height: UIScreen.heightBlockSize*8) )
                       
                    })
                 
                      
                    
                    
                    
                }.padding(.top,20)
                
                
                
            }
           
            .cornerRadius(10)
          
            
        }.padding(.bottom,20)
            .padding(.leading,20)
            .padding(.trailing,20)
         
        
        
    }
}
