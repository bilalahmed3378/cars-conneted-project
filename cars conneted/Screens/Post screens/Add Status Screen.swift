//
//  Add Status Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 13/09/2022.
//

import SwiftUI

struct Add_Status_Screen: View {
    @State private var comment = ""
    var body: some View {
        ZStack{
            
            
            Image("Rectangle 1273")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.widthBlockSize*100, height: UIScreen.heightBlockSize*100)
                .edgesIgnoringSafeArea(.top)
            
            
            VStack{
                HStack{
                    Image("unsplash_OhKElOkQ3RE")
                    
                    Text("Jhon Wick")
                        .foregroundColor(.white)
                        .font(AppFonts.regular_16)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 20).fill(.white.opacity(0.3)))
                    Spacer()
                    
                    Image("Frame 7799")
                    
                }.padding(.leading)
                    .padding(.trailing)
                    .padding(.top,40)
                
                HStack{
                    Spacer()
                    
                    Image("Ellipse 35")
                    
                    
                }.padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                HStack{
                    Spacer()
                    
                    Image("flat-color-icons_empty-filter")
                    
                    
                }.padding(.leading)
                    .padding(.trailing)
                
                Spacer()
                Spacer()
                
                TextEditor(text: self.$comment)
                    .font(AppFonts.regular_14)
                    .foregroundColor(.gray)
                    .frame(minHeight: 40, idealHeight: 40 , maxHeight: 40)
                    .colorMultiply(.black.opacity(0.5))
                    .overlay(HStack{
                        Text("Add Status")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.white)
                            .padding(.leading)
                        Spacer()
                    })
                
                Spacer()

                HStack{
                    Spacer()
                    
                    NavigationLink(destination: {
                       
                    }, label: {
                        HStack{
                            Text("Share")
                                .font(AppFonts.regular_16)
                                .foregroundColor(.white)
                            
                            Image("fluent_send-20-filled")
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 40).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    })
                  
                    
                    
                }.padding()
                
                
              
            }
            
            
        }.navigationBarHidden(true)
    }
}

struct Add_Status_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Add_Status_Screen()
    }
}
