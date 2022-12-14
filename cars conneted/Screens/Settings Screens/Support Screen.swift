//
//  Support Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct Support_Screen: View {
    @State var searchSupport = ""
    @Environment (\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            
        VStack{
            
            Group{
            HStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("BackIconWhite")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                })
              
                
               Spacer()
                
                Text("Support")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                    .offset(x: -15)
                
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
            
            ScrollView(.vertical, showsIndicators: false){
            
            HStack{
                Text("What do you need help with?")
                    .font(AppFonts.medium_20)
                
                Spacer()
            }
            .padding()
            .padding(.bottom,-20)
            
            HStack{
        HStack{
            
            TextField("Search",text: self.$searchSupport)
                .foregroundColor(.red)
                .font(AppFonts.regular_14)
            
            NavigationLink(destination: Support_FAQS_Screen(), label: {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:20,height: 20)
                    .foregroundColor(.red)
            })
          
            
        } .padding(15)
            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
            }.padding()
            
            HStack{
                Text("Popular topics")
                    .font(AppFonts.medium_20)
                
                Spacer()
            }
            .padding()
            .padding(.bottom,-10)
            
            ScrollView(.horizontal, showsIndicators: false){
            HStack{
                VStack{
                    Image("carbon_delivery-parcel")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    
                    Text("Manage Order")
                        .font(AppFonts.medium_18)
                    
                    
                }.padding()
                    .frame(width: 150, height: 150)
                    .background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.1)))
                    .background(RoundedRectangle(cornerRadius: 0).strokeBorder(.gray.opacity(0.8)))
                
                VStack{
                    Image("Payments")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    
                    Text("Payments")
                        .font(AppFonts.medium_18)
                    
                    
                }.padding()
                    .frame(width: 150, height: 150)
                    .background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.1)))
                    .background(RoundedRectangle(cornerRadius: 0).strokeBorder(.gray.opacity(0.8)))
                
                VStack{
                    Image("nimbus_invoice")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    
                    Text("Invoices")
                        .font(AppFonts.medium_18)
                    
                    
                }.padding()
                    .frame(width: 150, height: 150)
                    .background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.1)))
                    .background(RoundedRectangle(cornerRadius: 0).strokeBorder(.gray.opacity(0.8)))
                
                
                
                Spacer()
                
            }.padding()
            
            }
            
            HStack{
                Text("Recommended for you")
                    .font(AppFonts.medium_20)
                
                Spacer()
            }
            .padding()
            .padding(.bottom,-10)
            Group{
            HStack{
                Text("Account and profile settng")
                    .font(AppFonts.regular_18)
                
                Spacer()
                
                Image("forward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
            }.padding()
                .background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.2)))
                .padding()
                .padding(.bottom,-24)
            
            HStack{
                Text("Payments issue")
                    .font(AppFonts.regular_18)
                
                Spacer()
                
                Image("forward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
            }.padding()
                .background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.2)))
                .padding()
                .padding(.bottom,-24)
            
            HStack{
                Text("General profile management")
                    .font(AppFonts.regular_18)
                
                Spacer()
                
                Image("forward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
            }.padding()
                .background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.2)))
                .padding()
                .padding(.bottom,-24)
            
            HStack{
                Text("Cars Connected FAQS")
                    .font(AppFonts.regular_18)
                
                Spacer()
                
                Image("forward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
            }.padding()
                .background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.2)))
                .padding()
                .padding(.bottom,-24)
            }
       
            HStack{
                Spacer()
                Button(action: {}, label: {
                    Text("My Support request")
                        .foregroundColor(AppColors.redGradientColor1)
                })
               
            }
            .padding()
            .padding(.top)
            }
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    }
}

struct Support_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Support_Screen()
    }
}
