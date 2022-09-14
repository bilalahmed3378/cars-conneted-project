//
//  View Status Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 13/09/2022.
//

import SwiftUI

struct View_Status_Screen: View {
    @State private var typemessage = ""
    
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        
        ZStack{
        
            VStack{
            Image("Rectangle 1273")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.widthBlockSize*100, height: UIScreen.heightBlockSize*100)
                .edgesIgnoringSafeArea(.top)
            }
        
        VStack{
         
            Divider()
                .padding(.top)
                
            
            HStack{
                Image("unsplash_OhKElOkQ3RE")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                   .padding(4)
                    .background(RoundedRectangle(cornerRadius: 100).strokeBorder(.red))
                    .padding(.trailing,10)
                
                Text("Elon Musk")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 5, height: 5)
                
                Text("13h ago")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Button(action: {
                    self.presentaionMode.wrappedValue.dismiss()
                }, label: {
                    Image("akar-icons_cross")
                    
                })
              
                
                
                
                    }
            .padding()
           
            
            
           Spacer()
            
            HStack{
                Text("Umer is a good guy. He is  graphic Designer and UX designer.")
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.3)))
            }
            
            Spacer()
            
            HStack{
            VStack{
                
                TextEditor(text: self.$typemessage)
                    .frame( height: 0 )
                    .font(AppFonts.regular_14)
                    .foregroundColor(.gray)
                    .frame(minHeight: 40, idealHeight: 40 , maxHeight: 40)
                    .colorMultiply(.white)
                    .overlay(HStack{
                        Text("Write message")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.gray)
                            .padding(.leading)
                        Spacer()
                    })
                    
            }
            .background(RoundedRectangle(cornerRadius: 25).fill(.white))
            .padding(.leading,10)
            .padding(.trailing,10)
            
          Image("Group 7369")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.trailing,10)
            
            Image("Group 7367")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.trailing,20)
                
            }
            .background(Rectangle().fill(.black.opacity(0.1)).frame(width: 425, height: 82 ))
            .padding(.bottom,24)
        }
            
            
        }.navigationBarHidden(true)
        
    }
}

struct View_Status_Screen_Previews: PreviewProvider {
    static var previews: some View {
        View_Status_Screen()
    }
}
