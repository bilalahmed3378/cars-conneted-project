//
//  Invite friends Clubs.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

struct Invite_friends_Clubs: View {
    @Environment(\.presentationMode) var presentaionMode
    @State var searchText = ""
    @State private var addFilter  = false
    @State private var showSearchBar : Bool = false

    
    var body: some View {
        VStack{
            VStack{
                
                // top bar
                HStack{
                    Button(action: {}, label: {
                        Image("BackIconWhite")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .padding(.leading,-10)
                    })
                   
                    
                  Spacer()
                    
                    Text("Invite Friends")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                        .padding(.trailing,10)
                    
                    
                    Button(action: {
                        self.showSearchBar.toggle()
                    }, label: {
                        Image("White search Icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                    })
                    
                    
                }.padding(.leading)
                    .padding(.trailing)
                    .padding(.top)
                
            }  .padding(.top,40)
                .padding(.bottom,30)
                .background(
                    Image("home screen background")
                    .resizable())
            
            ScrollView(.vertical, showsIndicators: false){
              
                if(self.showSearchBar){
                    HStack{
                        
                        TextField("Search",text: self.$searchText)
                            .foregroundColor(.red)
                        
                       
                        
                    }
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor1))
                    .padding()
                }
               
                
                LazyVStack{
                    
                    ForEach(0...10 , id: \.self){index in
                        
                        inviteFriendsClub()
                        
                    }
                    
                }
                
            }
          
        
            
        
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
}



struct inviteFriendsClub: View {
    
    var body : some View {
        
        HStack{
            Image("unsplash_X6Uj51n5CE8")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
          
                Text("Camero 123")
                    .font(AppFonts.medium_16)
                    .padding(.bottom,2)
                    .padding(.leading,10)
                
              
            Spacer()
            
           
           
            Button(action: {}, label: {
                Text("Invite")
                    .font(AppFonts.medium_12)
                    .foregroundColor(.white)
                    .frame(width: 75, height: 40)
                    .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            
        }.padding(.leading)
            .padding(.trailing)
          
        
        Image("Line 6")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 377, height: 1)
            .padding(.bottom,10)
            .padding(.top,10)
    }
}
