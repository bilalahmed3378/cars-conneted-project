//
//  Invoice screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 26/07/2022.
//

import SwiftUI

struct Invoice_screen: View {
    @Environment(\.presentationMode) var presentationMode
    @State var toHomeScreen = false
   
    var body: some View {
        ZStack {
          Image("Rectangle 4460")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            VStack{
                Text("Invoice")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                    .padding()
                    .padding(.top,60)
                Spacer()
                
                ZStack{
                    
                Image("Subtract")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 415, height: 550)
                    
                    Group{
                        ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        Text("#1348934982")
                            .font(AppFonts.medium_24)
                       
                        HStack{
                            Text("ORDER DETAILS")
                                .font(AppFonts.bold_16)
                            Spacer()
                        }
                        .padding()
                        Group{
                        HStack{
                            Text("Amount")
                                .font(AppFonts.light_16)
                            Spacer()
                            Text("$25")
                                .font(AppFonts.light_16)
                            
                        }
                        .padding()
                        
                        Image("Line 2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 377, height: 1)
                        HStack{
                            Text("Inc. Tax")
                                .font(AppFonts.light_16)
                            Spacer()
                            Text("$2")
                                .font(AppFonts.light_16)
                            
                        }
                        .padding()
                        
                        Image("Line 2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 377, height: 1)
                        
                        HStack{
                            Text("Total")
                                .font(AppFonts.bold_16)
                            Spacer()
                            Text("$25")
                                .font(AppFonts.light_16)
                            
                        }
                        .padding()
                        
                        Image("Line 2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 377, height: 1)
                        }
                        HStack{
                            Text("CUSTOMER DETAILS")
                                .font(AppFonts.bold_16)
                            Spacer()
                        }
                        .padding()
                        .padding(.top)
                        
                        HStack{
                            Text("Customer Name")
                                .font(AppFonts.light_16)
                            Spacer()
                            Text("John Doe")
                                .font(AppFonts.light_16)
                            
                        }
                        .padding()
                        
                        Image("Line 2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 377, height: 1)
                        HStack{
                            Text("Email")
                                .font(AppFonts.light_16)
                            Spacer()
                            Text("abc@gmail.com")
                                .font(AppFonts.light_16)
                                .foregroundColor(.black)
                            
                        }
                        .padding()
                        
                        Image("Line 2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 377, height: 1)
                        
                        HStack{
                            Text("Phone Number")
                                .font(AppFonts.light_16)
                            Spacer()
                            Text("+9235654985")
                                .font(AppFonts.light_16)
                            
                        }
                        .padding()
                        
                        Image("Line 2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 377, height: 1)
                            .padding(.bottom)
                        
                        
                    }
                        }.frame(width: 415, height: 500)
                            .padding(.top)
                    }
                }
                .frame(width: 415, height: 470)
                
                
                HStack{
                    Spacer()
                    Button(action: {}, label: {
                        Image("Frame 7464")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                    })
                   
                    
                    Spacer()
                    Spacer()
                    
                    
                    Button(action: {
                        self.toHomeScreen = true
                    }, label: {
                        Image("Frame 7271")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                    })
                       
                    NavigationLink(destination: MainTabContainer(), isActive: $toHomeScreen) { EmptyView() }
                    
                       
                  
                    
                    Spacer()
                    
                }
                .padding()
                .padding(.top,60)
                
                Spacer()
               
            }
            
            
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Invoice_screen_Previews: PreviewProvider {
    static var previews: some View {
        Invoice_screen()
    }
}
