//
//  post status screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 21/07/2022.
//

import SwiftUI

struct post_status_screen: View {
    var body: some View {
        ZStack{
            
            Image("post status screen background")
                .resizable()
            
            VStack{
                HStack(alignment: .top){
                    HStack{
                Image("unsplash_OhKElOkQ3RE")
                    .frame(width: 50, height: 50)
                    
                    Text("Jhon Wick")
                        .font(.callout)
                        .foregroundColor(.black)
                        .background(RoundedRectangle(cornerRadius: 50).fill(.white).opacity(0.7).frame(width: 100, height: 50))
                        .padding(.leading,25)
                    }
                    Spacer()
                        
                    
                    VStack{
                        Button(action: {}, label: {
                            Text("Aa")
                                .foregroundColor(.black)
                                .background(RoundedRectangle(cornerRadius: 100).fill(.white).opacity(0.7).frame(width: 50, height: 50))
                        })
                       
                        Button(action: {}, label: {
                            Image("Ellipse 35")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding(.top,10)
                        })
                      
                        Button(action: {}, label: {
                            Image("flat-color-icons_empty-filter")
                                .resizable()
                                .frame(width: 50, height: 50)
                        })
                      
                    }
                }
                .padding(.top,50)
                
                
                Spacer()
                
                Text("Going to long trip in my new car")
                    .foregroundColor(.yellow)
                    .background(RoundedRectangle(cornerRadius: 0).fill(.black).opacity(0.7).frame(width: 425, height: 48))
                
                Spacer()
                
                HStack{
                    Spacer()
                    Button(action: {}, label: {
                        HStack{
                            
                            Text("Share")
                                .foregroundColor(.white)
                            Image("fluent_send-20-filled")
                        }.background(RoundedRectangle(cornerRadius: 50).fill(AppColors.redGradientColor2).frame(width: 105, height: 44))
                            .padding()
                    })
                  
                }
            }
            .padding()
            .padding()
             
            
        
        }
        
        .edgesIgnoringSafeArea(.all)
    }
}

struct post_status_screen_Previews: PreviewProvider {
    static var previews: some View {
        post_status_screen()
    }
}
