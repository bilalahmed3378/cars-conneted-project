//
//  members.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 26/07/2022.
//

import SwiftUI

struct members: View {
    var body: some View {
        
        
        VStack{
            
            
            //top bar
            ZStack{
                
                Image("clubsTopBar")
                    .resizable()
                    .frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*23)
                
                VStack{
                    
                    HStack{
                        
                        
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Text("Members")
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
                    
                    Text("60 members")
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                    
                        
                    members_card()
                    
                    members_card()
                    members_card()
                    
                    
                    members_card()
                    members_card()
                    members_card()
                    
                    members_card()
                    
                    
                    
                    
                }
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
            Spacer()
            
         
            
            
        }.edgesIgnoringSafeArea(.all)
    }
}


struct members_card: View {
    var body: some View {
        
        VStack{
            
            HStack{
                
                Image("Ellipse 33")
                    .resizable()
                    .frame(width: UIScreen.widthBlockSize*15, height: 60)
                
                VStack(alignment: .leading){
                    
                    Text("Jason Statham")
                    
                    Spacer()
                    
                    Text("@Jason123")
                    
                    
                    Spacer()
                    
                    Text("Followed by eminen")
                        .foregroundColor(.gray)
                    
                }
                
                Spacer()
                
                Text("Follow")
                    .foregroundColor(AppColors.redGradientColor1)
                    .padding(10)
                    .padding(.leading,10)
                    .padding(.trailing,10)
                    .overlay(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing).opacity(0.25))
                    .cornerRadius(5)
                
                
                
            }.frame(height: 60)
                .padding(.top,20)
            
            Divider()
                .padding(.top,10)
            
        }
        
    }
    
}

struct members_Previews: PreviewProvider {
    static var previews: some View {
        members()
    }
}
