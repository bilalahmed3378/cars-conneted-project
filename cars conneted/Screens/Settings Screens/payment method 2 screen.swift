//
//  payment method 2 screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/07/2022.
//

import SwiftUI

struct payment_method_2_screen: View {
    @State var isMasterCart: Bool = true
    
    @Environment(\.presentationMode) var presentationMode
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
                            .font(AppFonts.SemiBold_20)
                        .foregroundColor(AppColors.redGradientColor1)
                        Spacer()
                    }
                    
                        HStack{
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Auctor sagittis sed lobortis pretium sagittis porta.")
                                .font(AppFonts.regular_12)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(.top,10)
                    
                    Group{
                    HStack{
                        Spacer()
                        Image("logos_mastercard")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 35)
                        Spacer()
                        
                        
                        Text("Master Card")
                            .font(AppFonts.medium_16)
                            .foregroundColor(self.isMasterCart ? AppColors.redGradientColor1 : .gray)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()

                        Button(action: {
                            self.isMasterCart = true
                        }, label: {
                            if (self.isMasterCart) {
                                Image("Group 2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 35, height: 35)
                            }
                            else{
                                Image("Ellipse 1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 35, height: 35)
                            }
                           
                        })
                        
                        Spacer()
                        
                    }.frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*5)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 50)
                            .strokeBorder(self.isMasterCart ? AppColors.redGradientColor1 : .gray))
                        .background(RoundedRectangle(cornerRadius: 50).fill(.gray).opacity(0.1))
                        .padding()
                        .padding(.trailing,5)
                        
                      
                        
                    }
                    HStack{
                        Spacer()
                        Image("logos_visa")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 35)
                        Spacer()
                        Text("Visa Card")
                            .font(AppFonts.medium_16)
                            .foregroundColor(self.isMasterCart ? .gray : .red)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()

                        Button(action: {
                            self.isMasterCart = false
                        }, label: {
                            if !(self.isMasterCart) {
                                Image("Group 2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 35, height: 35)
                            }
                            else{
                            Image("Ellipse 1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 35, height: 35)
                            }
                        })
                       
                        Spacer()
                    }.frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*5)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 50)
                            .strokeBorder(self.isMasterCart ? .gray : AppColors.redGradientColor1))
                        .background(RoundedRectangle(cornerRadius: 50).fill(.gray).opacity(0.1))
                        .padding()
                        .padding(.trailing,5)
                    

                        
                        
                       
                    
                    NavigationLink(destination: Payment_Method_step_3_screen(),  label: {
                        Text("Next")
                            .font(AppFonts.semiBold_16)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    })
                       
                   
                   
                }
                .padding()
                .padding(.leading,7)
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    }
}

struct payment_method_2_screen_Previews: PreviewProvider {
    static var previews: some View {
        payment_method_2_screen()
    }
}
