//
//  Payment Methods screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 17/08/2022.
//

import SwiftUI

struct Payment_Methods_screen: View {
    
    @Environment(\.presentationMode) var presentationMode
   
    
    var body: some View {
        VStack{
        
        VStack{
            
            Group{
            HStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                })
              
                
               Spacer()
                
                Text("Choose payment Method")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                
                Spacer()
                
                
               
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
        }
            
            HStack{
                Text("Add Payment Method")
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Add Payment Method")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.semibold))
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor1).frame(width: 350, height: 70))
                
            }.padding(.top,50)
            
            HStack{
                
              
                Image("logos_visa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 40)
                    .background(RoundedRectangle(cornerRadius: 0).fill(.gray).opacity(0.1).frame(width: 80, height: 60))
            
                VStack(alignment: .leading){
                    Text("Salman Ahmed")
                        .font(AppFonts.medium_16)
                        .padding(.bottom,1)
                    
                    Text("**** **** **** *543")
                        .font(AppFonts.regular_14)
                        .padding(.bottom,1)
                    
                    Text("Exp: 26-07-2023")
                        .font(AppFonts.regular_10)
                }.padding()
                
               Spacer()
                
                VStack{
                    
                    HStack{
                        
                Image("edit icons")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                
                        Spacer()
                        
                Image("Delete")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                        
                    }
                    .frame(width: 60, height: 24)
                    
                    Spacer()
                    
                    
                }
                
                
            }
                .frame(width: 320, height: 65)
                .padding()
                .padding(.top,40)
            
            Image("Line 6")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400, height: 1 )
            
            HStack{
                
              
                Image("logos_visa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 40)
                    .background(RoundedRectangle(cornerRadius: 0).fill(.gray).opacity(0.1).frame(width: 80, height: 60))
            
                VStack(alignment: .leading){
                    Text("Salman Ahmed")
                        .font(AppFonts.medium_16)
                        .padding(.bottom,1)
                    
                    Text("**** **** **** *543")
                        .font(AppFonts.regular_14)
                        .padding(.bottom,1)
                    
                    Text("Exp: 26-07-2023")
                        .font(AppFonts.regular_10)
                }.padding()
                
               Spacer()
                
                VStack{
                    
                    HStack{
                        
                Image("edit icons")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                
                        Spacer()
                        
                Image("Delete")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                        
                    }
                    .frame(width: 60, height: 24)
                    
                    Spacer()
                    
                    
                }
                
                
            }
                .frame(width: 320, height: 65)
                .padding()
                
            
           
           
            
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct Payment_Methods_screen_Previews: PreviewProvider {
    static var previews: some View {
        Payment_Methods_screen()
    }
}
