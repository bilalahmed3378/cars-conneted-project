//
//  Invoice screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 26/07/2022.
//

import SwiftUI

struct Invoice_screen: View {
    var body: some View {
        ZStack {
          Image("Rectangle 4460")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            VStack{
                Text("Invoice")
                    .foregroundColor(.white)
                    .font(.title)
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
                            .font(.title)
                       
                        HStack{
                            Text("ORDER DETAILS")
                            Spacer()
                        }
                        .padding()
                        Group{
                        HStack{
                            Text("Amount")
                            Spacer()
                            Text("$25")
                            
                        }
                        .padding()
                        
                        Image("Line 2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 377, height: 1)
                        HStack{
                            Text("Inc. Tax")
                            Spacer()
                            Text("$2")
                            
                        }
                        .padding()
                        
                        Image("Line 2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 377, height: 1)
                        
                        HStack{
                            Text("Total")
                                .fontWeight(.bold)
                            Spacer()
                            Text("$25")
                            
                        }
                        .padding()
                        
                        Image("Line 2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 377, height: 1)
                        }
                        HStack{
                            Text("CUSTOMER DETAILS")
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding()
                        .padding(.top)
                        
                        HStack{
                            Text("Customer Name")
                            Spacer()
                            Text("John Doe")
                            
                        }
                        .padding()
                        
                        Image("Line 2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 377, height: 1)
                        HStack{
                            Text("Email")
                            Spacer()
                            Text("abc@gmail.com")
                            
                        }
                        .padding()
                        
                        Image("Line 2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 377, height: 1)
                        
                        HStack{
                            Text("Phone Number")
                            Spacer()
                            Text("+9235654985")
                            
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
                    Button(action: {}, label: {
                        Image("Frame 7271")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                    })
                  
                    
                    Spacer()
                    
                }
                .padding()
                .padding(.top,60)
                
                Spacer()
               
            }
            
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Invoice_screen_Previews: PreviewProvider {
    static var previews: some View {
        Invoice_screen()
    }
}
