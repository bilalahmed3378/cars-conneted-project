//
//  Shop View Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 23/08/2022.
//

import SwiftUI

struct Shop_Others_View_Screen: View {
    var body: some View {
        VStack{
            
            
            VStack{
                
                // top bar
                HStack{
                    Button(action: {}, label: {
                        Image("back icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .padding(.leading,-10)
                    })
                   
                    
                  Spacer()
                    
                    Text("Follow Request")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                  
                    
                    
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
                Image("unsplash_AHnhdjyTNGM")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*90, height: 220)
            }
            .padding(.top)
           
            
            Group{
            HStack{
                Text("Spare parts")
                    .font(AppFonts.regular_12)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 20).fill(.gray.opacity(0.5)))
                
                Spacer()
                
                VStack{
                    HStack{
                        Spacer()
                        Text("5.0")
                            .font(AppFonts.regular_14)
                        
                       
                        
                        Image("bxs_star")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                        
                        Image("bxs_star")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                        
                        Image("bxs_star")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                        
                        Image("bxs_star")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                        
                        Image("bxs_star")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                        
                    }
                    HStack{
                        Spacer()
                        Text("36 Reviews")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_14)
                    }
                }
                
            }
            .padding(.leading,24)
            .padding(.trailing,24)
            
            HStack{
                
                Image("location black icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                
                Text("Washington DC, USA")
                    .font(AppFonts.regular_14)
                
                Spacer()
                
            }.padding(.leading,24)
                .padding(.trailing,24)
                .padding(.top)
            
            
            HStack{
                
                Image("Layer 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                
                Text("www.web123.com")
                    .font(AppFonts.regular_14)
                
                Spacer()
                
            }.padding(.leading,24)
                .padding(.trailing,24)
            
            HStack{
                Text("Description")
                    .font(AppFonts.medium_16)
                
                Spacer()
                
            }.padding(.leading,24)
                .padding(.trailing,24)
                .padding(.top)
            
            
            HStack{
                Text("Tincidunt vestibulum aenean eleifend arcu vel leo porta donec tellus. Malesuada tellus dui aliquam semper odio. Egestas proin viv...")
                    .font(AppFonts.regular_14)
            }
            .padding(.leading,24)
                .padding(.trailing,24)
                .padding(.top,5)
            
            Divider().padding(24)
            
            HStack{
                Text("Contact Details")
                    .font(AppFonts.medium_16)
                
                Spacer()
                
            }.padding(.leading,24)
                .padding(.trailing,24)
            }
            
            HStack{
                Text("Phone Number")
                    .font(AppFonts.regular_12)
                
                Spacer()
                
                Text("123456789")
                    .font(AppFonts.regular_14)
            }
            .padding(.leading,24)
                .padding(.trailing,24)
                .padding(.top,5)
            
            HStack{
                Text("Email")
                    .font(AppFonts.regular_12)
                
                Spacer()
                
                Text("abc@gmail.com")
                    .font(AppFonts.regular_14)
            }
            .padding(.leading,24)
                .padding(.trailing,24)
                .padding(.top,5)
            
            
            Divider().padding(24)
            
            HStack{
                Text("Owner")
                    .font(AppFonts.medium_16)
                
                Spacer()
                
            }.padding(.leading,24)
                .padding(.trailing,24)
                .padding(.bottom)
                
            HStack{
                
                Image("Ellipse 796")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                
                VStack(alignment: .leading){
                    Text("John wick")
                        .font(AppFonts.medium_16)
                        .padding(.bottom,0.5)
                    
                    Text("Washington, DC")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                        .padding(.bottom,0.5)
                    
                    Text("View owner Details")
                        .font(AppFonts.regular_14)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.bottom,0.5)
                    
                    
                }
                
                Spacer()
                
            }.padding(.top,10)
                    .padding(.bottom,10)
                    .padding(.leading,10)
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
                .padding(.leading,24)
                    .padding(.trailing,24)
            
            
                Divider().padding(24)
                
                HStack{
                    Text("Classifieds")
                        .font(AppFonts.medium_16)
                    
                    Spacer()
                    
                }.padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.bottom)
                
                
                
                
            }
            Spacer()
            
            
        }.edgesIgnoringSafeArea(.all)
           
    }
}

struct Shop_Others_View_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Shop_Others_View_Screen()
    }
}
