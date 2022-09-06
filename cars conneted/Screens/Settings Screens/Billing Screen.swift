//
//  Billing Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 17/08/2022.
//

import SwiftUI

struct Billing_Screen: View {
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
                
                Text("Update Billing")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                    .offset(x:-15)
                
                Spacer()
                
                
               
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,30)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
        }
            
           
            
            HStack{
                
                VStack(alignment: .leading){
                    Text("Jane Doe")
                        .font(AppFonts.regular_14)
                        .padding(.bottom,3)
                    
                    Text("3 Newbridge Court chino Hills,")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                    
                    Text("CA 91709, United States")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                    
                }.padding()
                
               Spacer()
                
                VStack{
                    
                    HStack{
                        
                Image("edit icons")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                
                        Spacer()
                        
                Image("Delete")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                    }
                    .frame(width: 60, height: 24)
                    
                    Spacer()
                    
                }
                
            }
            .frame(width: UIScreen.widthBlockSize*80, height: 40)
                .padding()
                .padding(.top)
            
           Divider()
            
            HStack{
                
                VStack(alignment: .leading){
                    Text("Jane Doe")
                        .font(AppFonts.regular_14)
                        .padding(.bottom,3)
                    
                    Text("3 Newbridge Court chino Hills,")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                    
                    Text("CA 91709, United States")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                    
                }.padding()
                
               Spacer()
                
                VStack{
                    
                    HStack{
                        
                Image("edit icons")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                
                        Spacer()
                        
                Image("Delete")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                    }
                    .frame(width: 60, height: 24)
                    
                    Spacer()
                    
                }
                
            }
                .frame(width: UIScreen.widthBlockSize*80, height: 40)
                .padding()
              
            
          
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        
    }
}

struct Billing_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Billing_Screen()
    }
}
