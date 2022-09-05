//
//  Post Product Parts Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 24/08/2022.
//

import SwiftUI

struct Post_Product_Parts_Screen: View {
    @State private var name = ""
    @State private var email = ""
    @State private var phone = ""
    @Environment(\.presentationMode) var presentaionMode
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
                    
                    Text("Preview")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image("clarity_shopping-cart-solid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                    
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
                Group{
                HStack{
                    Image("unsplash_AHnhdjyTNGM")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*92, height: 240)
                }
                .padding(.top)
                
                HStack{
                    Text("PK")
                        .font(AppFonts.medium_16)
                    
                    Image("Ellipse 3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 5, height: 5)
                        .padding(.leading,1)
                    
                    Text("Spare parts")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                    
                    Image("Ellipse 3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 5, height: 5)
                        .padding(.leading,1)
                    
                    Text("Engine")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                    
                    
                  
                    Spacer()
                    
                    Text("$50,000")
                        .font(AppFonts.medium_16)
                    
                }
                .padding()
                .padding(.bottom,-15)
                
                    HStack{
                        Text("2019")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                        
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 5, height: 5)
                            .padding(.leading,1)
                        
                        
                        Text("Used")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                    }.padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                    
                HStack{
                    Image("location black icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    
                    Text("Washington DC, USA")
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                    
                    Text("28/07/2022")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                }
                .padding(.leading)
                .padding(.trailing)
                
                Divider()
                    .padding()
                
              
                }
                
                VStack(alignment: .leading){
                    
                HStack{
                    Text("Description")
                        .font(AppFonts.medium_16)
                    Spacer()
                }
                .padding()
                .padding(.top,-10)
               
                
                HStack{
                    
                    Text("Tincidunt vestibulum aenean eleifend arcu vel leo porta donec tellus. Malesuada tellus dui aliquam semper odio. Egestas proin viv...")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                    
                    
                }.padding(.leading)
                    .padding(.trailing)
                }
                
                Divider()
                    .padding()
                
                HStack{
                    Text("Contact Details")
                        .font(AppFonts.medium_16)
                    Spacer()
                }
                .padding()
                .padding(.bottom,-10)
                
                
                VStack{
                    
            Text("Name")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.bottom,-5)
            
              
            TextField("John Wick",text:$name)
                .foregroundColor(AppColors.redGradientColor1)
              .padding(.vertical, 10)
              .autocapitalization(.none)
              .background(Rectangle().frame(height: 1).padding(.top, 40))
              .foregroundColor(.black)
             
                    
                }
                .padding(.leading)
                .padding(.trailing)
                
                
                VStack{
                    
            Text("Email")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.bottom,-5)
            
              
            TextField("123@gmail.com",text:$email)
                .foregroundColor(AppColors.redGradientColor1)
              .padding(.vertical, 10)
              .autocapitalization(.none)
              .background(Rectangle().frame(height: 1).padding(.top, 40))
              .foregroundColor(.black)
              
                    
                }
                .padding(.leading)
                .padding(.trailing)
                
                VStack{
                    
            Text("Phone Number")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
             .padding(.bottom,-5)
            
              
            TextField("+96-43564356456",text:$phone)
                .foregroundColor(AppColors.redGradientColor1)
              .padding(.vertical, 10)
              .autocapitalization(.none)
              .background(Rectangle().frame(height: 1).padding(.top, 40))
              .foregroundColor(.black)
             
                    
                }
                .padding(.leading)
                .padding(.trailing)
                
              
                
                Button(action: {}, label: {
                    Text("Post Product")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top,30)
                .padding(.bottom)
                
            }
           
            Spacer()
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Post_Product_Parts_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Post_Product_Parts_Screen()
    }
}
