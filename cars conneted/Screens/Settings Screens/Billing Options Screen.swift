//
//  Billing Options Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 17/08/2022.
//

import SwiftUI

struct Billing_Options_Screen: View {
    
    @State var isSelected : Int = 0
    
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
                
                Text("Billing Options")
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
                Text("Billing Address")
                    .font(AppFonts.regular_14)
                
                Spacer()
                
                Image("edit icons")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
            }
            .padding()
            .padding(.leading)
            .padding(.trailing)
            
            HStack{
                Button(action: {
                    self.isSelected = 0
                }, label: {
                    if (self.isSelected == 0 ) {
                        Image("Group 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                    else{
                        Image("Group 2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                  
                })
               
                
                VStack(alignment: .leading){
                    Text("Jane Doe")
                        .font(AppFonts.regular_14)
                        .padding(.bottom,3)
                    
                    Text("3 Newbridge Court chino Hills, CA 91709, United States")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                  
                    
                    
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                    .shadow(color: .black.opacity(0.1), radius: 20)
            }.padding(.bottom)
            
            HStack{
                
                Button(action: {
                    self.isSelected = 1
                    
                }, label: {
                    if(self.isSelected == 1){
                        Image("Group 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                    else{
                        Image("Group 2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                   
                })
              
                
                VStack(alignment: .leading){
                    Text("Jane Doe")
                        .font(AppFonts.regular_14)
                        .padding(.bottom,3)
                    
                    Text("3 Newbridge Court chino Hills, CA 91709, United States")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                  
                    
                    
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                    .shadow(color: .black.opacity(0.1), radius: 20)
            }.padding(.bottom)
            
            HStack{
                Text("Add new billing address")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_16)
                    .padding()
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder().foregroundColor(.gray))
            }
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct Billing_Options_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Billing_Options_Screen()
    }
}
