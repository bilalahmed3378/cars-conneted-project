//
//  Invite Friends Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 15/09/2022.
//

import SwiftUI

struct Invite_Friends_Screen: View {
    
    @Environment(\.presentationMode) var presentaionMode
    
    @State private var searchText = ""
    
    @State private var addFilter  = false
  
    @State private var showSearchBar : Bool = false

    
    var body: some View {
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
                            .padding(.leading,-10)
                    })
                   
                    
                  Spacer()
                    
                    Text("Invite Friends")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    
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
                            .font(AppFonts.regular_14)
                        
                        
                       
                          
                        
                        
                        Button(action: {
                           
                        }, label: {
                            Image("Filter 2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                           
                               
                        })

                         
                    } .padding(15)
                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder(.red))
                        .padding(.leading)
                            .padding(.trailing)
                }
           
            
            
            LazyVStack{
                ForEach(0...10 , id: \.self){
                    index in
                    inviteFriendsCard()
                }
            }
          
            }
            
        
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
           
    }
}



struct inviteFriendsCard: View{
    
    @State private var isInvited = false
    
    var body: some View{
        
        
        HStack{
            Image("unsplash_X6Uj51n5CE8")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            
            Text("Chriss Belly")
                .foregroundColor(AppColors.BlackColor)
                .font(AppFonts.regular_16)
            
            Spacer()
        
            if(!self.isInvited){
                Button(action: {
                    self.isInvited = true
                }, label: {
                    Text("Invite")
                        .foregroundColor(.white)
                        .font(AppFonts.regular_14)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
            
            }
            
            
            if(self.isInvited){
                Button(action: {
                    self.isInvited = false
                }, label: {
                    Text("Invited")
                        .foregroundColor(.red)
                        .font(AppFonts.regular_14)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder(.red))
                })
           
            }
            
            
            
        }
        .padding()
        
        Divider()
            .padding(.leading)
            .padding(.trailing)
        
        
        
    }
    
}
