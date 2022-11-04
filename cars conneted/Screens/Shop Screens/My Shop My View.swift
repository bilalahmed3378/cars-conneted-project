//
//  My Shop My View.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 13/09/2022.
//

import SwiftUI

struct My_Shop_My_View: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        VStack{
            
            
            VStack{
                
                // top bar
                HStack{
                    Button(action: {
                        self.presentaionMode.wrappedValue.dismiss()
                    }, label: {
                        Image("back icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .padding(.leading,-10)
                    })
                   
                    
                  Spacer()
                    
                    Text("Giga Mall")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        Add_classified_Screen()
                    }, label: {
                        Image("plus icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                    })
                   
                    
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                  
                    
                    
                }.padding(.leading)
                    .padding(.trailing)
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
            .padding(.leading)
            .padding(.trailing)
            
            HStack{
                
                Image("location black icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                
                Text("Washington DC, USA")
                    .font(AppFonts.regular_14)
                
                Spacer()
                
            }.padding(.leading)
                .padding(.trailing)
                .padding(.top)
            
            
            HStack{
                
                Image("Layer 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                
                Text("www.web123.com")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.black)
                
                Spacer()
                
            }.padding(.leading)
                .padding(.trailing)
            
            HStack{
                Text("Description")
                    .font(AppFonts.medium_16)
                
                Spacer()
                
            }.padding(.leading)
                .padding(.trailing)
                .padding(.top)
            
            
            HStack{
                Text("Tincidunt vestibulum aenean eleifend arcu vel leo porta donec tellus. Malesuada tellus dui aliquam semper odio. Egestas proin viv...")
                    .font(AppFonts.regular_14)
            }
            .padding(.leading)
                .padding(.trailing)
                .padding(.top,5)
            
            Divider().padding()
            
            HStack{
                Text("Contact Details")
                    .font(AppFonts.medium_16)
                
                Spacer()
                
            }.padding(.leading)
                .padding(.trailing)
            }
                Group{
            HStack{
                Text("Phone Number")
                    .font(AppFonts.regular_12)
                
                Spacer()
                
                Text("123456789")
                    .font(AppFonts.regular_14)
            }
            .padding(.leading)
                .padding(.trailing)
                .padding(.top,5)
            
            HStack{
                Text("Email")
                    .font(AppFonts.regular_12)
                
                Spacer()
                
                Text("abc@gmail.com")
                    .font(AppFonts.regular_14)
            }
            .padding(.leading)
                .padding(.trailing)
                .padding(.top,5)
            
            
          
                }
                Divider().padding()
                
                HStack{
                    Text("Classifieds")
                        .font(AppFonts.medium_16)
                    
                    Spacer()
                    
                }.padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false){
                LazyHStack{
                    ForEach(0...3, id: \.self){ index in
                        ShopClassified()
                    }
               
                    
                }.padding(.leading,24)
                        
                
                }
                
              
                
              
                
            }
            Spacer()
            
            
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct My_Shop_My_View_Previews: PreviewProvider {
    static var previews: some View {
        My_Shop_My_View()
    }
}
