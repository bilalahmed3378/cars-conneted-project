//
//  My Garage My View.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct My_Garage_My_View: View {
    var body: some View {
        VStack{
            HStack{
                Image("Icons-2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                
                Spacer()
                
                Text("My Virual Garage")
                    .font(AppFonts.medium_18)
                
                Spacer()
                
                Image("doted Icons")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                
            }.padding()
               
            HStack{
                
                Spacer()
                
                VStack{
                    Text("16.3k")
                        .font(AppFonts.SemiBold_20)
                        .padding(.bottom,2)
                        .foregroundColor(.white)
                    
                    Text("Likes")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                VStack{
                    Text("6.9k")
                        .font(AppFonts.SemiBold_20)
                        .padding(.bottom,2)
                        .foregroundColor(.white)
                    
                    Text("Comments")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                VStack{
                    Text("2.6k")
                        .font(AppFonts.SemiBold_20)
                        .padding(.bottom,2)
                        .foregroundColor(.white)
                    
                    Text("Shares")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
            }.padding(.top,30)
                .padding(.bottom,30)
            .background(RoundedRectangle(cornerRadius: 25).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            .padding()
            
            
            HStack{
                Text("5 cars in Garage")
                    .font(AppFonts.regular_18)
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom,10)
            
            
            HStack{
                Text("Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. Aliqueto.")
                    .font(AppFonts.regular_12)
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
            
            ScrollView(.vertical, showsIndicators: false){
                
                LazyVStack{
                    ForEach (0...3 , id : \.self){
                        index in
                        myGarage()
                    }
                    
                }
               
                Text("View more")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.regular_16)
                
            }
           
            
            
            
            Spacer()
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct My_Garage_My_View_Previews: PreviewProvider {
    static var previews: some View {
        My_Garage_My_View()
    }
}

struct myGarage : View {
    var body : some View{
        
        VStack{
            
            ZStack{
                Image("unsplash_1ZhZpP91olQ-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*90, height: 240)
                VStack{
                    HStack{
                        Spacer()
                        Image("doted icons-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                            .padding()
                    }
                    
                   Spacer()
                    HStack{
                        Text("Honda")
                            .font(AppFonts.semiBold_14)
                            .foregroundColor(.white)
                        Spacer()
                    }.padding()
                        .padding(.bottom,-30)
                    
                    
                    HStack{
                        Group{
                        Text("Vehicle")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.white)
                        
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 5, height: 5)
                            .padding(.leading,1)
                        
                        Text("Used")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.white)
                        
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 5, height: 5)
                            .padding(.leading,1)
                        
                        Text("2019")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.white)
                        
                        Spacer()
                        }
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                        
                        Image("Ellipse 20")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                        
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                        
                        Spacer()
                        
                        Text("view details")
                            .foregroundColor(.white)
                            .font(AppFonts.regular_12)
                        
                        Image("Vector-3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 14, height: 14)
                        
                        
                       
                    }.padding()
                }
                
            }.frame(width: UIScreen.widthBlockSize*90, height: 240)
            
            VStack{
                
            HStack{
                
                Image("Group 7367")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 18, height: 18)
                
                Image("Group 7369")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 18, height: 18)
                    .offset(x: -10, y: 0)
                
                
                
                Text("Arsalan and 20 other")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Text("12 comments")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                
            }.padding(.leading,26)
                .padding(.trailing,26)
            
            Divider()
                .padding(.leading,26)
                .padding(.trailing,26)
            
            HStack{
                HStack{
                    Image("ei_like")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 26, height: 26)
                    
                    Text("Like")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                    
                    
                }
                
                Spacer()
                HStack{
                    Image("ant-design_comment-outlined")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 26, height: 26)
                    
                    Text("Comment")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                    
                }
                Spacer()
                HStack{
                    Image("ion_share-social-sharp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 26, height: 26)
                    
                    Text("Share")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                }
               
               
                
                
            }.padding(.leading,26)
                .padding(.trailing,26)
                
            }.background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).stroke(.gray).frame(width: UIScreen.widthBlockSize*90, height: 82))
        }.padding(.top)
            .padding(.bottom,30)
        
        
        
        
    }
    
}
