//
//  Product Details.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/07/2022.
//

import SwiftUI

struct Product_Details: View {
    @Environment (\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            
            VStack{
                
        VStack{
            
            // top bar
            HStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                })
               
                
               Spacer()
                
                Text("Details")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                
                Spacer()
                
                Image("clarity_shopping-cart-solid")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
              
                
                Image("doted icons-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
                
            }
            .frame(width: UIScreen.widthBlockSize*90)
            .padding(.leading,24)
                .padding(.trailing,24)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
        
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    ZStack(alignment: .bottom){
                            Image("Rectangle 1267")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                        HStack{
                            Image("Arrow - Left Circle")
                            
                            Spacer()
                            
                         Image("Ellipse 20")
                            Image("Ellipse 21")
                            Image("Ellipse 21")
                            
                            Spacer()
                            
                            Image("Arrow - Left Circle forward")
                            
                        }
                        .padding()
                    }
                    .frame(width: UIScreen.widthBlockSize*90, height: 230)
                    .padding()
                    
                    Group{
                    HStack{
                        VStack(alignment: .leading){
                            Text("BBS Double Alloy Rims")
                                .font(AppFonts.medium_16)
                                .padding(.bottom,5)
                            
                            Text("Spacer Parts")
                                .font(AppFonts.regular_14)
                        }
                    
                        Spacer()
                        
                        Text("$500")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.white)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 50).fill(.gray))
                        
                    }
                    .frame(width:UIScreen.widthBlockSize*90, height: 30)
                    .padding()
                        .padding(.leading,3)
                        .padding(.trailing,5)
                    
                    HStack{
                    HStack{
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                        
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                        
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                        
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                        
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                        
                        Text("5.0")
                            .font(AppFonts.regular_14)
                        Text("(View Reviews)")
                            .font(AppFonts.regular_14)
                            .foregroundColor(AppColors.redGradientColor1)
                    }
                   
                        
                       Spacer()
                        
                        
                        
                    }
                    .frame(width: UIScreen.widthBlockSize*90, height: 20)
                    
                    HStack{
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elit a ipsum pulvinar morbi placerat id. Nisi, tellus amet ornare bibendum dmn;jnvkajnvlkafjnlvundfivnipfadunvjfnv;afnkvjnfkjanvklnvklfjnvnv;sjnadvkjnsvjn;ssnvakjnolor, a.")
                            .font(AppFonts.regular_14)
                    }
                    .frame(width: UIScreen.widthBlockSize*90, height: 50)
                    .padding(.top,15)
                    
                    HStack{
                        Text("Select Colors")
                            .font(AppFonts.regular_14)
                        Spacer()
                    }
                    .frame(width: UIScreen.widthBlockSize*90, height: 40)
                    
                    HStack{
                        Image("Ellipse 23")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:60, height: 60)
                        Spacer()
                        Image("Ellipse 24")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Spacer()
                        Image("Ellipse 26")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Spacer()
                        Image("Ellipse 27")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Spacer()
                        Image("Ellipse 28")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                    }
                    .frame(width: UIScreen.widthBlockSize*90, height: 50)
                    
                    HStack{
                        Text("Select Size")
                            .font(AppFonts.regular_14)
                        Spacer()
                        
                    }
                    .frame(width: UIScreen.widthBlockSize*90, height: 20)
                    .padding(.top,15)
                        
                    }
                  
                    
                    HStack{
                        Text("15")
                            .font(AppFonts.regular_14)
                            .foregroundColor(AppColors.redGradientColor2)
                            .frame(width: 60, height: 60)
                            .background(RoundedRectangle(cornerRadius: 10).fill(AppColors.redGradientColor1).opacity(0.2))
                        Spacer()
                        Text("16")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.gray)
                            .frame(width: 60, height: 60)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.2))
                        Spacer()
                        Text("17")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.gray)
                            .frame(width: 60, height: 60)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.2))
                        Spacer()
                        Text("18")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.gray)
                            .frame(width: 60, height: 60)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.2))
                        Spacer()
                        Text("20")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.gray)
                            .frame(width: 60, height: 60)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.2))
                    }
                    .frame(width: UIScreen.widthBlockSize*90, height: 60)
                    
                    HStack{
                        Text("Quantity")
                            .font(AppFonts.regular_14)
                        Spacer()
                        
                    }
                    .frame(width: UIScreen.widthBlockSize*90, height: 20)
                    .padding(.top,15)
                    
                    HStack{
                        Image("bxs_minus-square")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                        
                        Spacer()
                        
                        Text("2")
                            .font(AppFonts.regular_14)
                            .frame(width: 250, height: 35)
                            .background(RoundedRectangle(cornerRadius: 50).strokeBorder(Color.red))
                        
                        Spacer()
                        
                        Image("bxs_minus-square-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                    }
                    .frame(width: UIScreen.widthBlockSize*90, height: 40)
                    .padding(.bottom,25)
                    
                    NavigationLink(destination: Cart(),  label: {
                        Text("Add to Cart")
                            .font(AppFonts.semiBold_16)
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))
                                .frame(width: UIScreen.widthBlockSize*90, height: 56))
                            .padding()
                           
                    })
                    
                }
                 
            }
           
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
        
}

struct Product_Details_Previews: PreviewProvider {
    static var previews: some View {
        Product_Details()
    }
}
