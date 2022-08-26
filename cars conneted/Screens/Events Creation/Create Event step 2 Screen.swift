//
//  Create Event step 2 Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 26/08/2022.
//

import SwiftUI

struct Create_Event_step_2_Screen: View {
    @State private var isClicked = false
    @State private var isClickedTwo = false
    @State private var isClickedThree = false
    @State private var isClickedFour = false
    
    @State private var answer = ""
    @State private var question = ""
    
    var body: some View {
        VStack{
            
            ScrollView(.vertical, showsIndicators: false){
            
            HStack{
                Button(action: {}, label: {
                    
                    Image("Icons-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                })
               
                
                Spacer()
                
                Text("Skip")
                    .font(AppFonts.regular_16)
                    .foregroundColor(AppColors.redGradientColor1)
               
               
            }
            .padding()
        
        VStack(alignment: .leading){
        HStack{
            Text("Frequently Asked Questions")
                .font(AppFonts.SemiBold_20)
                .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                .mask( Text("Frequently Asked Questions")
                    .font(AppFonts.SemiBold_20)
                    )
            
            Spacer()
        }
        .padding(.bottom)
        
        Text("Add questions and answers that are repeatedly asked by your followers.")
            .font(AppFonts.regular_14)
            
        }
        .padding()
        
            VStack{
            TextEditor(text: self.$answer)
                .font(AppFonts.regular_14)
                .foregroundColor(.gray)
                .frame(minHeight: 50, idealHeight: 50 , maxHeight: 50)
                .colorMultiply(.white)
                .overlay(RoundedRectangle(cornerRadius: 0).strokeBorder(.gray,lineWidth:1))
               .overlay(VStack{
                    HStack{
                        Text("Add your answer...")
                            .foregroundColor(.gray)
                            .font(AppFonts.regular_14)
                        Spacer()
                    }
                    Spacer()
                } .padding(.leading,30)
                    .padding(.top)
                )
            
            TextEditor(text: self.$question)
                .font(AppFonts.regular_14)
                .foregroundColor(.gray)
                .frame(minHeight: 50, idealHeight: 50 , maxHeight: 100)
                .colorMultiply(.white)
                .overlay(RoundedRectangle(cornerRadius: 0).strokeBorder(AppColors.redGradientColor2,lineWidth:1))
               .overlay(VStack{
                    HStack{
                        Text("Add your answer...")
                            .foregroundColor(.gray)
                            .font(AppFonts.regular_14)
                        Spacer()
                    }
                    Spacer()
                } .padding(.leading,30)
                    .padding(.top)
                )
               
            
            
            HStack{
                
                Spacer()
                
                Text("240/500")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_12)
            }
           
            
            HStack{
                Spacer()
            HStack{
                
                Text("Cancel")
                    .foregroundColor(.white)
                    .font(AppFonts.medium_12)
            }.padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray).frame(width: 70, height: 40))
                    .padding(.trailing)
                
                HStack{
                    Text("Add")
                        .foregroundColor(.white)
                        .font(AppFonts.medium_12)
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: 70, height: 40))
                    
                
            }.padding(.leading)
                .padding(.trailing,10)
            }.padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
                .padding()
            
            VStack(alignment: .leading){
                
                HStack{
                    Text("When Registration will start?")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                      
                    Spacer()
                    Button(action: {
                        withAnimation{
                            self.isClicked.toggle()
                        }
                    }, label: {
                        
                        Image(self.isClicked ? "dropdown menu icon" : "dropdown menu 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 16)
                        
                    })
                   
                    
                }
                
                if(self.isClicked){
                    
                VStack(alignment: .leading){
                    
                    
                Divider()
                        .padding(.top)
                        .padding(.bottom)
                       
                
                Text("Registration will start on Aug 20")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                     
                }
            }
            }.padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            
            Group{
            VStack(alignment: .leading){
                
                HStack{
                    Text("When Registration will start?")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                      
                    Spacer()
                    Button(action: {
                        withAnimation{
                            self.isClickedTwo.toggle()
                        }
                    }, label: {
                        
                        Image(self.isClickedTwo ? "dropdown menu icon" : "dropdown menu 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 16)
                        
                    })
                   
                    
                }
                
                if(self.isClickedTwo){
                    
                VStack(alignment: .leading){
                    
                    
                Divider()
                        .padding(.top)
                        .padding(.bottom)
                       
                
                Text("Registration will start on Aug 20")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                     
                }
            }
            }.padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            
            
            VStack(alignment: .leading){
                
                HStack{
                    Text("When Registration will start?")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                      
                    Spacer()
                    Button(action: {
                        withAnimation{
                            self.isClickedThree.toggle()
                        }
                    }, label: {
                        
                        Image(self.isClickedThree ? "dropdown menu icon" : "dropdown menu 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 16)
                        
                    })
                   
                    
                }
                
                if(self.isClickedThree){
                    
                VStack(alignment: .leading){
                    
                    
                Divider()
                        .padding(.top)
                        .padding(.bottom)
                       
                
                Text("Registration will start on Aug 20")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                     
                }
            }
            }.padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            
            VStack(alignment: .leading){
                
                HStack{
                    Text("When Registration will start?")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                      
                    Spacer()
                    Button(action: {
                        withAnimation{
                            self.isClickedFour.toggle()
                        }
                    }, label: {
                        
                        Image(self.isClickedFour ? "dropdown menu icon" : "dropdown menu 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 16)
                        
                    })
                   
                    
                }
                
                if(self.isClickedFour){
                    
                VStack(alignment: .leading){
                    
                    
                Divider()
                        .padding(.top)
                        .padding(.bottom)
                       
                
                Text("Registration will start on Aug 20")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                     
                }
            }
            }.padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            }
            
            Button(action: {}, label: {
                Text("Preview")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: 70)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            .padding(.top,30)
                
            }
           
        }
    }
}

struct Create_Event_step_2_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Create_Event_step_2_Screen()
    }
}
