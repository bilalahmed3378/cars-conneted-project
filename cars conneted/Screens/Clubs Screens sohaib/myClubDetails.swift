//
//  myClubDetails.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 26/07/2022.
//

import SwiftUI

struct myClubDetails: View {
    
   
    
    var professionalsId : Int?
    
    var body: some View {
        
        ZStack{
        
        VStack(alignment: .trailing){
            
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
                        
                        Text("Ace Club Classic")
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

            
            VStack(alignment: .leading){
                
                
                Image("myClubDetails")
                    .resizable()
                    .frame(height: 240)
                    
                
               
                    
                }
                
               
                
                
                HStack{
                    
                    Text("knn")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    
                    HStack{
                        
                        Image(systemName:"person.fill.badge.plus")
                            .font(.system(size:20))
                            .foregroundColor(.white)
                        
                        Text("Invite")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                        
                        
                    }.padding(10)
                        .padding(.leading,12)
                        .padding(.trailing,12)
                        .background(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(50)
                    
                    
                    
                    
                }.padding(.top,20)
                
                HStack{
                    
                    
                   
                    
                    Text("5.0")
                        .foregroundColor(.gray)
                    
                }.padding(.top,20)
                
                
                HStack{
                    
                    Image(systemName: "person.fill")
                        .font(.system(size: 20))
                        .foregroundColor(AppColors.redGradientColor1)
                    
                    Text("njnjn")

                }.padding(.top,20)
                
                
                HStack{
                    
                    Image(systemName: "person.2.fill")
                        .font(.system(size: 20))
                        .foregroundColor(AppColors.redGradientColor1)
                    
                    Text("2.5k Total members")
                    
                    
                }.padding(.top,20)
                
                
                HStack{
                    
                    Image(systemName: "lock.fill")
                        .font(.system(size: 20))
                    
                    Text("jkbkb")

                    
                }.padding(.top,20)
                
                
                HStack{
                
                    ZStack(alignment: .leading){
                     
                        
                        Image("clubsRoundImg")
                        
                        Image("clubsRoundImg")
                            .padding(.leading,15)
                        
                        Image("clubsRoundImg")
                            .padding(.leading,30)

                        Image("clubsRoundImg")
                            .padding(.leading,45)

                    }
                   
                    
                    Text("Jhon, Marry, Steven & 17 of your friends has joined this group")
                        .foregroundColor(.gray)
//                        .offset(x:-30)
                        
                    
                    
                }.padding(.top,20)
                
                
                Image("map")
                    .resizable()
                    .frame( height: 150)
                    .padding(.top,20)
                
              
                
                }
               
            }
                
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .overlay(VStack{
                    
                    Spacer()
                    
                    HStack{
                        
                        Spacer()
                        
                        
                        
                Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding(25)
                        .background(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(50)
                .padding(.bottom,30)
                    .padding(.trailing,20)
                        
                    }
                    
                })
                
 
        }
        
    }









struct myClubDetails_Previews: PreviewProvider {
    static var previews: some View {
        myClubDetails()
    }
}
