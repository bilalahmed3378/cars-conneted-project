//
//  payment method 2 screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/07/2022.
//

import SwiftUI

struct payment_method_2_screen: View {
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
                
                Text("Choose payment Method")
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
                    Text("Card Selection")
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
                    Group{
                    HStack{
                        Spacer()
                        Image("logos_mastercard")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 35)
                        Spacer()
                        Text("Master Card")
                            .foregroundColor(AppColors.redGradientColor2)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()

                        Button(action: {}, label: {
                            Image("Group 2")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 35, height: 35)
                        })
                        
                        Spacer()
                    }.frame(width: 320, height: 40)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 50)
                            .strokeBorder(AppColors.redGradientColor2))
                        .background(RoundedRectangle(cornerRadius: 50).fill(.gray).opacity(0.1))
                        .padding()
                    }
                    HStack{
                        Spacer()
                        Image("logos_visa")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 35)
                        Spacer()
                        Text("Visa Card")
                            .foregroundColor(.gray)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()

                        Button(action: {}, label: {
                            Image("Ellipse 1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 35, height: 35)
                        })
                       
                        Spacer()
                    }.frame(width: 320, height: 40)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 50)
                            .strokeBorder(AppColors.redGradientColor2))
                        .background(RoundedRectangle(cornerRadius: 50).fill(.gray).opacity(0.1))
                        .padding()
                    

                        
                        
                       
                    
                    Button(action: {}, label: {
                        Text("Next")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: 350, height: 70)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    })
                    .padding()
                   
                }
                .padding()
                .padding(.leading,7)
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct payment_method_2_screen_Previews: PreviewProvider {
    static var previews: some View {
        payment_method_2_screen()
    }
}
