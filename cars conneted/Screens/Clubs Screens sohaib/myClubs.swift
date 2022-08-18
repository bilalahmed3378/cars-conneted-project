//
//  myClubs.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 26/07/2022.
//

import SwiftUI

struct myClubs: View {
    var body: some View {
        
        VStack{
            
            //top bar
            ZStack{
                
                Image("clubsTopBar")
                    .resizable()
                    .frame(width: UIScreen.screenWidth, height: 200)
                
                VStack{
                    
                    HStack{
                        
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.white)
                        
                        Spacer()
                        Spacer()
                        
                        Text("My Clubs")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        
                        Image(systemName: "plus.app.fill")
                        
                            .font(.system(size: 25))
                            .foregroundColor(Color.white)
                        
                        
                        Image("dottedIcons")
                            .resizable()
                            .frame(width: UIScreen.widthBlockSize*8,height:35 )
                            .foregroundColor(.white)
                        
                    }
                    
                    
                    
                    
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
                    
                    
                    
                    
                    
                }
                .padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
                
                
            }
            
                
                ScrollView(.vertical,showsIndicators: false){
                    
                    VStack(alignment: .leading){
                        
                        Text("3 Total Clubs")
                            .foregroundColor(AppColors.redGradientColor1)
                            .fontWeight(.medium)
                            .padding(.top,10)
                            .padding(.bottom,20)
                        
                        clubsCard()
                        clubsCard()
                        clubsCard()
                        
                    }.padding(.leading,20)
                        .padding(.trailing,20)
                    
                }
                
            
            Spacer()
            
           
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct myClubs_Previews: PreviewProvider {
    static var previews: some View {
        myClubs()
    }
}
