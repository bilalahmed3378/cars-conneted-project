//
//  My Plan screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct My_Plan_screen: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
        VStack{
            
            HStack{
                Image("Icons-2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                
                Spacer()
               
                Text("Choose your plan")
                    .font(AppFonts.semiBold_24)
                    .foregroundColor(AppColors.redGradientColor1)
                
                Spacer()
                
            }
            .padding()
            .padding(.trailing,20)
            
          
            
            HStack{
                
                Text("CURRENT PLAN")
                    .font(AppFonts.medium_14)
                
                Spacer()
                
                Text("View Details")
                    .font(AppFonts.medium_14)
                    .foregroundColor(AppColors.redGradientColor1)
                
                Image("forward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                
                
            }.padding()
                .padding(.leading,10)
                .padding(.trailing,10)
                    
            VStack{
                
                ZStack{
                    
                    Image("Frame 8647")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*90, height: 200)
                    
                    VStack{
                        
                    HStack{
                        Spacer()
                        Image("doted icons-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 30)
                        
                    }
                        
                        Text("$20.99/month")
                            .font(AppFonts.SemiBold_20)
                            .foregroundColor(.white)
                            .padding(.bottom)
                        
                        Text("Basic")
                            .font(AppFonts.regular_16)
                            .foregroundColor(.white)
                        
                        
                    }.frame(width: UIScreen.widthBlockSize*50, height: 100)
                    
                    
                    
                }
                
                VStack(alignment: .leading){
                    HStack{
                Text("Premium Access")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                        
                        Spacer()
                    }
                    HStack{
                Text("Unlimited Lorem Ipsum")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                        
                    }
                    
                    HStack{
                Text("Classified Marketplace Access")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                    }
                    
                    HStack{
                Text("Can Publish 10 Products in Classified")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                    }
                    
                    HStack{
                Text("Unlimited Lorem Ipsum")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                    }
                    
                    HStack{
                Text("Classified Marketplace Access")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                    }
                    
                    HStack{
                Text("Can Publish 10 Products in Classified")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                    }
                    
                }.padding()
                
               
                
               
              
            
                Button(action: {}, label: {
                    Text("Upgrade")
                        .font(AppFonts.semiBold_16)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*80, height: 56))
                })
               
                
            
                
            }.frame(width: UIScreen.widthBlockSize*90, height: 610)
               .padding(.top,-25)
                .background(RoundedRectangle(cornerRadius: 30).fill(.gray.opacity(0.2)).frame(width: UIScreen.widthBlockSize*90, height: 600))
         
            
                Button(action: {}, label: {
                    Text("Cancel plan")
                        .font(AppFonts.semiBold_16)
                        .foregroundColor(AppColors.redGradientColor1)
                        .background(RoundedRectangle(cornerRadius: 20).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*80, height: 56))
                        .padding(.top,40)
                        .padding(.bottom)
                })
               
                
            
                    
              
                
            
            Spacer()
           
        }.edgesIgnoringSafeArea(.bottom)
            .navigationBarHidden(true)
        }
    }
}

struct My_Plan_screen_Previews: PreviewProvider {
    static var previews: some View {
        My_Plan_screen()
    }
}
