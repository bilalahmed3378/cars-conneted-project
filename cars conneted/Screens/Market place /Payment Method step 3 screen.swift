//
//  Payment Method step 3 screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/07/2022.
//

import SwiftUI

struct Payment_Method_step_3_screen: View {
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
                  
                    Text("Name on Card")
                              .padding(.top,28)
                              .frame(maxWidth: .infinity, alignment: .leading)
                              .foregroundColor(.gray)
                            TextField("Jhon Smith",text:$nameOnCard)
                              .padding(.vertical, 10)
                              .autocapitalization(.none)
                              .background(Rectangle().frame(height: 1).padding(.top, 42))
                              .foregroundColor(.gray)
                    
                    Group{
                    Text("Card Number")
                              .padding(.top,28)
                              .frame(maxWidth: .infinity, alignment: .leading)
                              .foregroundColor(.black)
                        TextField("3335-3245-4535-4666",text:$cardNumber )
                              .padding(.vertical, 10)
                              .autocapitalization(.none)
                              .background(Rectangle().frame(height: 1).padding(.top, 42))
                              .foregroundColor(AppColors.redGradientColor2)
                    
                    Text("CVV")
                              .padding(.top,28)
                              .frame(maxWidth: .infinity, alignment: .leading)
                              .foregroundColor(.gray)
                            TextField("376",text:$CVV)
                              .padding(.vertical, 10)
                              .autocapitalization(.none)
                              .background(Rectangle().frame(height: 1).padding(.top, 42))
                              .foregroundColor(.gray)
                    
                    
                    Text("Expiry Date")
                              .padding(.top,28)
                              .frame(maxWidth: .infinity, alignment: .leading)
                              .foregroundColor(.gray)
                            TextField("MM-DD-YY",text:$expireDate)
                              .padding(.vertical, 10)
                              .autocapitalization(.none)
                              .background(Rectangle().frame(height: 1).padding(.top, 42))
                              .foregroundColor(.gray)

                    
                    }
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

struct Payment_Method_step_3_screen_Previews: PreviewProvider {
    static var previews: some View {
        Payment_Method_step_3_screen()
    }
}
