//
//  Payment Method step 3 screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/07/2022.
//

import SwiftUI

struct Payment_Method_step_3_screen: View {
    @Environment(\.presentationMode) var presentationMode
    @State var nameOnCard = ""
      @State var cardNumber = ""
      @State var CVV = ""
      @State var expireDate = ""
    
    var body: some View {
        ZStack{
            
            VStack{
                // top bar
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
                
                Text("Choose payment Method")
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
                
                ScrollView(.vertical, showsIndicators: false){
                
                VStack{
                    
                    HStack{
                    Text("Enter Card Details")
                            .font(AppFonts.SemiBold_20)
                        .foregroundColor(AppColors.redGradientColor1)
                        Spacer()
                    }
                    .padding()
                    
                        HStack{
                            Text("Kindly enter your card details to make transations")
                                .font(AppFonts.regular_12)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(.leading)
                        .padding(.trailing)
                  
                    Text("Name on Card")
                        .font(AppFonts.regular_12)
                              .padding(.top,28)
                              .frame(maxWidth: .infinity, alignment: .leading)
                              .foregroundColor(.gray)
                              .padding(.leading)
                              .padding(.trailing)
                    
                    
                            TextField("Jhon Smith",text:$nameOnCard)
                        .font(AppFonts.regular_14)
                              .padding(.vertical, 10)
                              .autocapitalization(.none)
                              .background(Rectangle().frame(height: 1).padding(.top, 42))
                              .foregroundColor(.gray)
                              .padding(.leading)
                              .padding(.trailing)
                    
                    Group{
                    Text("Card Number")
                            .font(AppFonts.regular_12)
                              .padding(.top,28)
                              .frame(maxWidth: .infinity, alignment: .leading)
                              .foregroundColor(.black)
                              .padding(.leading)
                              .padding(.trailing)
                        
                        
                        TextField("3335-3245-4535-4666",text:$cardNumber )
                            .font(AppFonts.regular_14)
                              .padding(.vertical, 10)
                              .autocapitalization(.none)
                              .background(Rectangle().frame(height: 1).padding(.top, 42))
                              .foregroundColor(AppColors.redGradientColor2)
                              .padding(.leading)
                              .padding(.trailing)
                        
                    
                    Text("CVV")
                            .font(AppFonts.regular_12)
                              .padding(.top,28)
                              .frame(maxWidth: .infinity, alignment: .leading)
                              .foregroundColor(.gray)
                              .padding(.leading)
                              .padding(.trailing)
                        
                        
                            TextField("376",text:$CVV)
                            .font(AppFonts.regular_14)
                              .padding(.vertical, 10)
                              .autocapitalization(.none)
                              .background(Rectangle().frame(height: 1).padding(.top, 42))
                              .foregroundColor(.gray)
                              .padding(.leading)
                              .padding(.trailing)
                    
                    
                    Text("Expiry Date")
                            .font(AppFonts.regular_12)
                              .padding(.top,28)
                              .frame(maxWidth: .infinity, alignment: .leading)
                              .foregroundColor(.gray)
                              .padding(.leading)
                              .padding(.trailing)
                        
                        
                            TextField("MM-DD-YY",text:$expireDate)
                            .font(AppFonts.regular_14)
                              .padding(.vertical, 10)
                              .autocapitalization(.none)
                              .background(Rectangle().frame(height: 1).padding(.top, 42))
                              .foregroundColor(.gray)
                              .padding(.leading)
                              .padding(.trailing)
                             

                    
                    }
                    
                    NavigationLink(destination: {
                        Subscription_Updated_Successful_Screen()
                    }, label: {
                        Text("Save")
                            .font(AppFonts.semiBold_16)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                .padding()
                        
                    })
                       
                   
                   
                }
               
                    
                }
               
            }
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    }
}

struct Payment_Method_step_3_screen_Previews: PreviewProvider {
    static var previews: some View {
        Payment_Method_step_3_screen()
    }
}
