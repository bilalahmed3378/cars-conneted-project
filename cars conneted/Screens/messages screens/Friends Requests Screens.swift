//
//  Follow Requests Screens.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 28/07/2022.
//

import SwiftUI

struct Friends_Requests_Screens: View {
    @Environment(\.presentationMode) var presentaionMode
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
                    
                    Text("Friend Requests")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    
                  
                    
                    
                }.padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.top,20)
                
            }  .padding(.top,40)
                .padding(.bottom,30)
                .background(
                    Image("home screen background")
                    .resizable())
            
            ScrollView(.vertical, showsIndicators: false){
                HStack{
                    Text("New Requests")
                        .font(AppFonts.semiBold_16)
                        .foregroundColor(AppColors.redGradientColor1)
                    Spacer()
                }
                .padding()
                
                LazyVStack{
                    
                    
                  
                    ForEach(0...2 , id: \.self){index in
                        
                      
                        
                        friendsRequest()
                        
                        
                    }
                    
                    HStack{
                        Spacer()
                        
                        Text("See all")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.regular_14)
                        
                    }
                    .padding(.trailing)
                    .padding(.bottom,30)
                    
                    HStack{
                        Text("Friends")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.semiBold_16)
                        Spacer()
                    }
                    .padding()
                    
                    LazyVStack{
                    ForEach(0...10 , id: \.self){index in
                        
                        friendsList()
                        
                      
                        
                        
                    }
                    }
                    
                }
                
            }
          
        
            
        
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
           
        
        
    }
}

struct Friends_Requests_Screens_Previews: PreviewProvider {
    static var previews: some View {
        Friends_Requests_Screens()
    }
}

struct friendsRequest: View {
    @State var toFriend = false
    @State var toFollow = false
    var body : some View {
        
        HStack{
            Image("unsplash_X6Uj51n5CE8")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading){
                Text("Camero 123")
                    .font(AppFonts.medium_14)
                    .padding(.bottom,2)
                
                Text("Haripur, Pakistan")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_12)
                
            }
            Spacer()
            
            if(!self.toFriend){
            Button(action: {}, label: {
                Text("Delete")
                    .font(AppFonts.medium_12)
                    .foregroundColor(AppColors.redGradientColor1)
                    .frame(width: 75, height: 40)
                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.3))
            })
            }
           
            if(!self.toFriend){
            Button(action: {
                self.toFriend = true
            }, label: {
                Text("Confirm")
                    .font(AppFonts.medium_12)
                    .foregroundColor(.white)
                    .frame(width: 75, height: 40)
                    .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            }
            
            if(self.toFriend && !self.toFollow){
            Button(action: {
                self.toFollow = true
            }, label: {
                Text("Follow Back")
                    .font(AppFonts.medium_12)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 5).fill((LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))).frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*5))
                    .padding()
                 
            })
            }
            
            if (self.toFollow ){
            Button(action: {
                self.toFollow = false
            }, label: {
                Text("Following")
                    .font(AppFonts.medium_12)
                    .foregroundColor(AppColors.redGradientColor1)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*5))
                    .padding()
            })
            }
            
            
           
            
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


struct friendsList: View {
    @State var isFollow = true
    var body : some View {
        
        HStack{
            Image("unsplash_X6Uj51n5CE8")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading){
                Text("Emma Watson")
                    .font(AppFonts.medium_14)
                    .padding(.bottom,2)
                
                Text("Lala Musa, Pakistan")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_12)
                
            }
            Spacer()
           
            if(self.isFollow){
            Button(action: {
                self.isFollow = false
            }, label: {
                
                Text("Follow Back")
                    .font(AppFonts.medium_12)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 5).fill((LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))).frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*5))
                    .padding()
            })
            }
            
            if (!self.isFollow){
            Button(action: {
                self.isFollow = true
            }, label: {
                Text("Following")
                    .font(AppFonts.medium_12)
                    .foregroundColor(AppColors.redGradientColor1)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*5))
                    .padding()
            })
            }
            
            
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
