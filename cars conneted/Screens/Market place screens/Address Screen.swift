//
//  Address Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 26/07/2022.
//

import SwiftUI

struct Address_Screen: View {
    @Environment(\.presentationMode) var presentationMode
    @State var customerName = ""
      @State var shippingAddress = ""
    
    var body: some View {
        ZStack{
            
            VStack{
                // top bar
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
                
                Text("Shipping Address")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                
                Spacer()
                
                Button(action: {}, label: {
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                    
                })
               
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
        }
                VStack{
                    
                    HStack{
                    Text("Enter Card Details")
                            .font(AppFonts.SemiBold_20)
                        .foregroundColor(AppColors.redGradientColor1)
                        Spacer()
                    }
                    
                        HStack{
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Auctor sagittis sed lobortis pretium sagittis porta.")
                                .font(AppFonts.regular_12)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(.top,10)
                  
                    Text("Customer Name")
                        .font(AppFonts.regular_12)
                              .padding(.top,28)
                              .frame(maxWidth: .infinity, alignment: .leading)
                              .foregroundColor(.gray)
                            TextField("Jhon Smith",text:$customerName)
                        .font(AppFonts.regular_14)
                              .padding(.vertical, 10)
                              .autocapitalization(.none)
                              .background(Rectangle().frame(height: 1).padding(.top, 42))
                              .foregroundColor(.gray)
                    
                    Group{
                    Text("Shipping Address")
                            .font(AppFonts.regular_12)
                              .padding(.top,28)
                              .frame(maxWidth: .infinity, alignment: .leading)
                              .foregroundColor(.black)
                        TextField("Near New City hospital, Washington DC, USA",text:$shippingAddress)
                            .font(AppFonts.regular_14)
                              .padding(.vertical, 10)
                              .autocapitalization(.none)
                              .background(Rectangle().frame(height: 1).padding(.top, 42))
                              .foregroundColor(AppColors.redGradientColor2)
                    
                    }
                    
                    NavigationLink(destination: Checkout_screen_1(),
                                   label: {
                        
                            Text("Checkout")
                            .font(AppFonts.semiBold_16)
                            .foregroundColor(.white)
                            .frame(width: 350, height: 60)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    }).padding(.top)
                   
                }
                .padding()
                .padding(.leading,7)
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    }
}

struct Address_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Address_Screen()
    }
}
