//
//  search clubs.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 26/07/2022.
//

import SwiftUI

struct nearby_clubs: View {
    var body: some View {
        
        VStack{
            
            //top bar
            
            ZStack{
                
                Image("clubsTopBar")
                    .resizable()
                    .frame(width: UIScreen.screenWidth, height: 150)
                
                HStack{
                    
                    
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.white)
                    
                    
                    HStack{
                        
                        Text("Search")
                            .foregroundColor(AppColors.redGradientColor1)
                        
                        Spacer()
                        
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 22))
                            .foregroundColor(AppColors.redGradientColor1)
                        
                    }
                    .padding(12)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    .padding(.top,20)
                    .padding(.bottom,20)
                    .padding(.leading,10)
                    .padding(.trailing,10)
                    
                    
                    Image("filterIcon")
                    
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width: 20, height: 20)
                        .padding(15)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    
                    
                }
                .padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
                
                
            }
            
            VStack(alignment: .leading){
                
                HStack{
                    
                    Text("People")
                    
                    Spacer()
                    
                    Text("Pssts")
                    
                    Spacer()
                    
                    Text("Events")
                    
                    Spacer()
                    
                    Text("Clubs")
                    
                }.foregroundColor(.gray)
                    .padding(.top,10)
                    .padding(.bottom,10)
                
                
                Divider()
                
              
                HStack{
                
                Text("Nearby Clubs")
                    .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Image(systemName: "mappin.and.ellipse")
                        .font(.system(size: 20))
                        .foregroundColor(AppColors.redGradientColor1)
                    
                    
                }.padding(.top,20)
                    .padding(.bottom,20)
                
                Image("map")
                    .resizable()
                    .frame(height: 150)
                    .padding(.bottom,30)
                
                ScrollView(.vertical,showsIndicators: false){
                
                    nearby_clubs()
                    nearby_clubs()
                    nearby_clubs()
                    nearby_clubs()
                    nearby_clubs()

                    
                }
                
                
            }.padding(.leading,20)
                .padding(.trailing,20)
            
          
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}



struct nearby_clubs_Previews: PreviewProvider {
    static var previews: some View {
        nearby_clubs()
    }
}
