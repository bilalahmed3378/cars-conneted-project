//
//  clubs.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 25/07/2022.
//

import SwiftUI

struct clubs: View {
    var body: some View {
        
        
            
            
            VStack{
                
                
                //top bar

                ZStack{
                    
                    Image("clubsTopBar")
                        .resizable()
                        .frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*23)
                    
                    VStack{
                        
                        HStack{
                            
                            Image("navBarIcon")
                                .resizable()
                                .frame(width: UIScreen.widthBlockSize*10, height: UIScreen.heightBlockSize*3)
                            
                            Spacer()
                            
                            Text("Clubs")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Image("dottedIcons")
                                .resizable()
                                .frame(width: UIScreen.widthBlockSize*8, height: UIScreen.heightBlockSize*3)
                                .foregroundColor(.white)
                            
                        }
                        
                        HStack{
                            
                            Text("Search")
                                .fontWeight(.bold)
                                .foregroundColor(AppColors.redGradientColor1)
                            
                            Spacer()
                            
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 22))
                                .foregroundColor(AppColors.redGradientColor1)
                            
                        }
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(10)
                        .opacity(0.45)
                        .padding(.top,20)
                        .padding(.bottom,20)
                        
                        
                    }
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .padding(.top,20)
                    
                    
                }

                
                ScrollView(.vertical,showsIndicators: false){

                
                
                
                HStack{
                    
                    Text("My Clubs")
                        .fontWeight(.bold)

                    Spacer()
                    
                    Text("View All")
                        .foregroundColor(AppColors.redGradientColor1)
                    
                    
                }.padding(.top,10)
                
                ScrollView(.horizontal,showsIndicators: false){
                    
                    HStack(spacing: 20){
                        
                        clubsCard()
                        clubsCard()
                        clubsCard()
                        clubsCard()
                        
                    }
                    
                }
                
                HStack{
                    
                    Text("Joined Clubs")
                        .fontWeight(.bold)

                    
                    Spacer()
                    
                    Text("View All")
                        .foregroundColor(AppColors.redGradientColor1)
                    
                    
                }.padding(.top,20)
                
                
                HStack{
                    
                    Image("clubsImg")
                        .resizable()
                        .frame(width: UIScreen.widthBlockSize*25, height: 100)
                        .cornerRadius(10)
                    
                    
                    
                    VStack{
                        
                        Text("Ace Classic Clubs")
                            .foregroundColor(AppColors.redGradientColor1)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        HStack{
                            
                            
                            Image("clubsRoundImg")
                            
                            Image("clubsRoundImg")
                                .offset(x:-12)
                            
                            Image("clubsRoundImg")
                                .offset(x:-24)
                            
                            Image("clubsRoundImg")
                                .offset(x:-36)
                            
                        }
                        
                        Spacer()
                        
                        Text("+120 members")
                        
                    }
                    
                    
                    Spacer()
                    
                    Text("Leave")
                        .padding(10)
                        .foregroundColor(AppColors.redGradientColor1)
                        .overlay(AppColors.redGradientColor1.opacity(0.2))
                    
                    
                }.frame(width: UIScreen.widthBlockSize*89, height: 100)
                    .padding(.top,20)
                
                
                
                HStack{
                    
                    Text("Recommended")
                        .fontWeight(.bold)

                    
                    Spacer()
                    
                    Text("View All")
                        .foregroundColor(AppColors.redGradientColor1)
                    
                    
                }.padding(.top,20)
                
                
                ScrollView(.horizontal,showsIndicators: false){
                    
                    HStack(spacing: 20){
                        
                        clubsCard()
                        clubsCard()
                        clubsCard()
                        clubsCard()
                        
                    }
                    
                }
                
                
            }
                .padding(.leading,20)
                .padding(.trailing,20)
               
                
      
                
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}




struct clubsCard: View {
    var body: some View {
        
        
        ZStack(alignment: .top){
            
            
            
            Image("post")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.widthBlockSize*90, height: 240)
                .overlay(Color.black.opacity(0.03))
                .clipped()
            
            
            VStack{
                
                HStack{
                    
                    Spacer()
                    
                    
                    Text("Invite")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .padding(15)
                        .padding(.leading,10)
                        .padding(.trailing,10)
                        .background(AppColors.redGradientColor1)
                        .cornerRadius(8)
                        .padding(.trailing,20)

                    
                }
                
                Spacer()
                
                
                HStack{
                    
                    
                    
                    
                    Text("Ace Classic Club")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                    
                    Spacer()
                    
                    Image("clubsRoundImg")
                        .offset(x:36)
                    
                    Image("clubsRoundImg")
                        .offset(x:24)
                    
                    Image("clubsRoundImg")
                        .offset(x:12)
                    
                    Image("clubsRoundImg")
                    //                            .offset(x:15)
                    
                    Text("+120")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                    
                    
                }.padding()
                    .background(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))
                
                
                
                
            }.padding(.top,20)
            
            
            
        }
        .frame(height: 240)
        .cornerRadius(10)
        .padding(.top,20)
        
    }
    
}

struct clubs_Previews: PreviewProvider {
    static var previews: some View {
        clubs()
    }
}
