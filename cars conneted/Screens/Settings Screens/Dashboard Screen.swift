//
//  Dashboard Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 29/08/2022.
//

import SwiftUI

struct Dashboard_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        VStack{
        VStack{
            
            Group{
            HStack{
                Button(action: {
                }, label: {
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                })
              
                
               Spacer()
                
                Text("Dashboard")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                    .offset(x: -15)
                
                Spacer()
                
             
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,30)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
        }
            
            ScrollView(.vertical, showsIndicators: false){
                
            HStack{
                Text("Today")
                    .font(AppFonts.medium_16)
                
                Spacer()
                
                Image("filter icon 2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
            }
            .padding()
         
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack{
                VStack{
                    Image("car white icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    
                    Text("5 Cars")
                        .foregroundColor(.white)
                        .font(AppFonts.semiBold_16)
                }
                .padding(.leading,20)
                .padding(.trailing,20)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.blue))
                .padding(.leading)
                
                    
                    
                    VStack{
                        Image("calender white icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("5 Events")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_16)
                    }
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.green))
                    .padding(.leading)
                    
                    
                    VStack{
                        Image("classified icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("5 Classified")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_16)
                    }
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.yellow))
                    .padding(.leading)
                    
                    VStack{
                        Image("post icon white")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("5 Post")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_16)
                    }
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.red))
                    .padding(.leading)
                    
                    
                    VStack{
                        Image("friends icon white")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("5 Friends")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_16)
                    }
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.blue))
                    .padding(.leading)
                    
                    
                    VStack{
                        Image("followers white icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("5 Followers")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_16)
                    }
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.green))
                    .padding(.leading)
                    
                    VStack{
                        Image("likes white icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("5 Likes")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_16)
                    }
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.yellow))
                    .padding(.leading)
                    
                    VStack{
                        Image("comment white icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("5 Comments")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_16)
                    }
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.red))
                    .padding(.leading)
                    
                    
                    VStack{
                        Image("Reviews white icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("5 Reviews")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_16)
                    }
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.blue))
                    .padding(.leading)
                    
                    
                    VStack{
                        Image("Reviews white icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("5.0 Rating")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_16)
                    }
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.green))
                    .padding(.leading)
                    .padding(.trailing)
                    
                }
                
            }
            
                HStack{
                    Text("Activity logs")
                        .font(AppFonts.semiBold_18)
                    
                    Spacer()
                }
                .padding()
                
                HStack{
                    Text("Today")
                        .font(AppFonts.medium_16)
                    
                    Spacer()
                    
                  
                }
                .padding()
                .padding(.top,-20)
                
                
                HStack{
                    Image("Ellipse 33")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .padding(.trailing,5)
                    
                    VStack(alignment: .leading){
                        Text("You like Elen Barren post")
                            .font(AppFonts.regular_14)
                            .padding(.bottom,3)
                        
                        Text("2h ago")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom,10)
            
            HStack{
                Image("Ellipse 33")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .padding(.trailing,5)
                
                VStack(alignment: .leading){
                    Text("You posted in Club name")
                        .font(AppFonts.regular_14)
                        .padding(.bottom,3)
                    
                    Text("3h ago")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom,10)
                
            
            HStack{
                Spacer()
                Text("See All")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.medium_12)
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                Text("Insights")
                    .font(AppFonts.semiBold_18)
                
                Spacer()
            }
            .padding()
            
            }
            
        
           
        }.edgesIgnoringSafeArea(.top)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarHidden(true)
    }
}

struct Dashboard_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard_Screen()
    }
}
