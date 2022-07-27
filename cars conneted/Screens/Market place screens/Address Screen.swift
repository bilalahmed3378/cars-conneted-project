//
//  Address Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 26/07/2022.
//

import SwiftUI

struct Address_Screen: View {
    @State var customerName = ""
      @State var shippingAddress = ""
    
    var body: some View {
        ZStack{
            
            VStack{
                // top bar
        VStack{
            
            Group{
            HStack{
                Button(action: {}, label: {
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 26, height: 30)
                })
              
                
               Spacer()
                
                Text("Shipping Address")
                    .foregroundColor(.white)
                    .font(.title)
                
                Spacer()
                
                Button(action: {}, label: {
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 26, height: 30)
                    
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
                            .font(.title)
                        .foregroundColor(AppColors.redGradientColor1)
                        Spacer()
                    }
                    
                        HStack{
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Auctor sagittis sed lobortis pretium sagittis porta.")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(.top,10)
                  
                    Text("Customer Name")
                              .padding(.top,28)
                              .frame(maxWidth: .infinity, alignment: .leading)
                              .foregroundColor(.gray)
                            TextField("Jhon Smith",text:$customerName)
                              .padding(.vertical, 10)
                              .autocapitalization(.none)
                              .background(Rectangle().frame(height: 1).padding(.top, 42))
                              .foregroundColor(.gray)
                    
                    Group{
                    Text("Shipping Address")
                              .padding(.top,28)
                              .frame(maxWidth: .infinity, alignment: .leading)
                              .foregroundColor(.black)
                        TextField("Near New City hospital, Washington DC, USA",text:$shippingAddress)
                              .padding(.vertical, 10)
                              .autocapitalization(.none)
                              .background(Rectangle().frame(height: 1).padding(.top, 42))
                              .foregroundColor(AppColors.redGradientColor2)
                    
                    }
                    
                    Button(action: {}, label: {
                        Text("Checkout")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: 350, height: 60)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    })
                    .padding()
                    .padding(.top)
                    
                    
                    
                    
                   
                }
                .padding()
                .padding(.leading,7)
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct Address_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Address_Screen()
    }
}
