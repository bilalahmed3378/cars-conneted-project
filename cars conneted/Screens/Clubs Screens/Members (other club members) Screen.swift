//
//  Members (other club members) Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

struct Members__other_club_members__Screen: View {
    
    @State private var searchText = ""
    
    var body: some View {
        VStack{
            
        VStack{
            
            // top bar
            HStack{
                Image("side menu icon white")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                
                Spacer()
                
                
                Text("Clubs members")
                    .font(AppFonts.SemiBold_20)
                    .foregroundColor(.white)
                
                Spacer()
                
               
                
                Image("doted icons-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 35)
                    .padding(.trailing,10)
                
             
                   
            }
           
            .padding(.leading)
                .padding(.trailing)
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
                Text("69 Members")
                    .font(AppFonts.medium_16)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("69 Members")
                        .font(AppFonts.medium_16))
                Spacer()
            }
            .padding()
            
                ForEach(0...10, id: \.self){index in
                    clubMembers()
                }
          
            
            
            }
            
         Spacer()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Members__other_club_members__Screen_Previews: PreviewProvider {
    static var previews: some View {
        Members__other_club_members__Screen()
    }
}

struct clubMembers : View{
    var body: some View{
        
        HStack{
            Image("post picture")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .padding(.trailing)
            
            VStack(alignment: .leading){
                Text("Jason Statham")
                    .font(AppFonts.regular_14)
                    .padding(.bottom,5)
                
                
                Text("Added by Chriss Agrel 2 months ago")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
            }
            
            Spacer()
            
            Image("3 dots gray")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
            
        }
        .padding(.leading)
        .padding(.trailing)
        
        
        Divider().padding()
    }
}