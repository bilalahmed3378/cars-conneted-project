//
//  Event Details Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 26/08/2022.
//

import SwiftUI

struct Event_Details_Screen: View {
    @State var answer = ""
    
    @State private var isClicked = false
    @State private var isClickedTwo = false
    @State private var isClickedThree = false
    @State private var isClickedFour = false
    
    var body: some View {
        VStack{
            
            VStack{
                
                HStack{
                    
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                    
                    Spacer()
                    
                    Text("Event Details")
                        .foregroundColor(.white)
                        .font(AppFonts.medium_20)
                    
                    Spacer()
                    
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                    
                    
                       }
                
            }
            .padding()
                .padding(.top,40)
                .background(
                    Image("home screen background")
                        .resizable())
            
            ScrollView(.vertical, showsIndicators: false){
            
            Group{
            ZStack{
              
                Image("Event cards pic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*100 , height:280)
                   
                VStack(alignment: .leading){
                    HStack{
                        Spacer()
                        Image("share white")
                            
                    }
                    .padding()
                    
                    Spacer()
                    Text("Cars Expo 2022")
                        .font(AppFonts.bold_20)
                        .foregroundColor(Color.white)
                        .padding(.leading)
                            .padding(.trailing)
                    
                    HStack{
                        Image("bxs_star")
                        Image("bxs_star")
                        Image("bxs_star")
                        Image("bxs_star")
                        Image("bxs_star")
                        
                        Text("5.0")
                            .foregroundColor(.white)
                            .font(AppFonts.regular_12)
                    }
                    .padding(.leading)
                        .padding(.trailing)
                    
                    HStack{
                        Image("time Icons")
                        Text("June 8,2022")
                            .foregroundColor(.white)
                            .font(AppFonts.regular_12)
                    }
                    .padding(.leading)
                        .padding(.trailing)
                    
                    HStack{
                        Image("location Icons")
                        Text("KPK, Pakistan")
                            .foregroundColor(.white)
                            .font(AppFonts.regular_12)
                    }
                    .padding(.leading)
                        .padding(.trailing)
                    
                    HStack{
                      Spacer()
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                        
                        Image("Ellipse 20")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                        
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                       
                      Spacer()
                    }
                    .padding(.bottom)
                      
                }
               
            }
            .frame(width: UIScreen.widthBlockSize*100 , height:250)
            .padding(.top)
            .padding(.bottom)
             
            
            HStack{
                Image("Video Icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                
                Text("Watch Video")
                    .font(AppFonts.regular_14)
                    .foregroundColor(AppColors.redGradientColor1)
                
                Spacer()
                
                Image("web red")
                
                Text("Visit Web")
                    .font(AppFonts.regular_14)
                    .foregroundColor(AppColors.redGradientColor1)
                
                Spacer()
                
                Image("media icon red")
                
                Text("Media")
                    .font(AppFonts.regular_14)
                    .foregroundColor(AppColors.redGradientColor1)
                
            }.padding(.leading)
                .padding(.trailing)
            
            Divider().padding()
            
            HStack{
                Spacer()
                Text("Social Events")
                    .foregroundColor(.white)
                    .font(AppFonts.regular_12)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*35))
                   
                
                Spacer()
              
                    Text("Entrepreneurs")
                    .foregroundColor(AppColors.redGradientColor1)
                        .font(AppFonts.regular_12)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*35))
                
                Spacer()
                
              
                    
                }
                .padding(.leading)
                    .padding(.trailing)
            
            HStack(alignment: .top){
                Image("ticket icon red")
                
                VStack(alignment: .leading){
                    
                Text("Available Tickets")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.regular_16)
                    .padding(.bottom,2)
                    
                    Text("130-500")
                        .font(AppFonts.regular_16)
                        .foregroundColor(.gray)
                    
                }
                
                Spacer()
            }
            .padding()
            
            HStack(alignment: .top){
                Image("calander red icon")
                
                VStack(alignment: .leading){
                    
                Text("Start date")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.regular_16)
                    .padding(.bottom,2)
                    
                    Text("01-12-2022")
                        .font(AppFonts.regular_16)
                        .foregroundColor(.gray)
                        .padding(.bottom,2)
                    
                    Text("9:00 AM")
                        .font(AppFonts.regular_16)
                        .foregroundColor(.gray)
                    
                }
                
                Spacer()
                
                Image("calander red icon")
                
                VStack(alignment: .leading){
                    
                Text("End date")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.regular_16)
                    .padding(.bottom,2)
                    
                    Text("16-12-2022")
                        .font(AppFonts.regular_16)
                        .foregroundColor(.gray)
                        .padding(.bottom,2)
                    
                    Text("9:00 PM")
                        .font(AppFonts.regular_16)
                        .foregroundColor(.gray)
                    
                }
            }
            .padding(.leading)
            .padding(.trailing)
               
            Divider().padding()
            }
            
                Group{
            HStack{
                Image("recurring icon")
                
                Text("Recurring")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.regular_16)
                
                Spacer()
                
                Text("Monthly")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_16)

            }.padding(.leading)
                .padding(.trailing)
           
            HStack{
                Image("Physical icon")
                
                Text("Physical")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.regular_16)
                Spacer()
            }
            .padding()
            
            HStack(alignment: .top){
                Image("Description icon")
                
                VStack(alignment: .leading){
                    
                Text("Description")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.regular_16)
                    .padding(.bottom,2)
                    
                    Text("The Gigalodon Hotel is a hotel that has dinner facilities beside a pool...")
                        .font(AppFonts.regular_16)
                        .foregroundColor(.gray)
                    
                }
                
                Spacer()
            }
            .padding(.leading)
                .padding(.trailing)
            
                    Divider()
                        .padding()
            
                HStack{
                    Image("unsplash_-IPFb6J03Mw")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                       
                    
                    Image("unsplash_-IPFb6J03Mw")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .offset(x:-16)
                    
                    Image("unsplash_-IPFb6J03Mw")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .offset(x:-30)
                    
                    Image("unsplash_-IPFb6J03Mw")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .offset(x:-44)
                    
                    Text("Jhon, Marry, Steven & 17 of your friends has joined this group")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                        .offset(x:-30)
                    
                    
                    Spacer()
                }
                .padding()
                .padding(.bottom,-20)
                
                HStack{
                    
                    Spacer()
                    
                    Text("View all")
                        .foregroundColor(AppColors.redGradientColor1)
                        .font(AppFonts.regular_12)
                    
                } .padding(.leading)
                    .padding(.trailing)
                    
                   
                
                
                HStack{
                    Text("Frequently Asked Questions")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Frequently Asked Questions")
                            .font(AppFonts.SemiBold_20)
                            .fontWeight(.semibold))
                    
                    Spacer()
                }
                .padding()
                
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
            
                HStack{
                    Text("Organizer")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Organizer")
                            .font(AppFonts.SemiBold_20)
                            .fontWeight(.semibold))
                    
                    Spacer()
                }
                .padding()
                
                HStack{
                HStack{
                    Image("unsplash_X6Uj51n5CE8")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                    
                    VStack(alignment: .leading){
                        Text("Nadeem Khan")
                            .font(AppFonts.regular_14)
                        
                        HStack{
                            Image("location black icon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 14, height: 14)
                            
                            Text("(Haripur, Pakistan)")
                                .font(AppFonts.regular_12)
                                .foregroundColor(.gray)
                        }
                        
                    }
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
                    
                    Spacer()
                }
                .padding(.leading)
                   .padding(.trailing)
                }
                
                HStack{
                    Text("Updates")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Updates")
                            .font(AppFonts.SemiBold_20)
                            .fontWeight(.semibold))
                    
                    Spacer()
                }
                .padding()
                
                HStack{
                TextEditor(text: self.$answer)
                    .font(AppFonts.regular_14)
                    .foregroundColor(.gray)
                    .frame(minHeight: 50, idealHeight: 50 , maxHeight: 50)
                    .colorMultiply(.white)
                    .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor1,lineWidth:1))
                    .overlay(HStack{
                        Text("Whats on your mind?")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.gray)
                            .padding(.leading)
                        Spacer()
                    })
                    
                    Text("POST")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    
                }.padding(.leading)
                    .padding(.trailing)
            
                
                VStack(alignment: .leading){
                    HStack{
                    Image("unsplash_X6Uj51n5CE8")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        
                        Text("Nadeem Khan")
                            .font(AppFonts.regular_16)
                        
                        Text("(Haripur, Pakistan)")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    
                    HStack{
                        Text("Jul 12, 2022")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    .padding(.bottom,2)
                    
                    HStack{
                        Text("Odio libero proin pellentesque morbi volutpat vulputate magnis ac. Dictum at consectetur et")
                            .font(AppFonts.regular_14)
                        
                        Spacer()
                    }
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
                    .padding()
                
                VStack(alignment: .leading){
                    HStack{
                    Image("unsplash_X6Uj51n5CE8")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        
                        Text("Nadeem Khan")
                            .font(AppFonts.regular_16)
                        
                        Text("(Haripur, Pakistan)")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    
                    HStack{
                        Text("Jul 12, 2022")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    .padding(.bottom,2)
                    
                    HStack{
                        Text("Odio libero proin pellentesque morbi volutpat vulputate magnis ac. Dictum at consectetur et")
                            .font(AppFonts.regular_14)
                        
                        Spacer()
                    }
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
                    .padding()
                
                VStack(alignment: .leading){
                    HStack{
                    Image("unsplash_X6Uj51n5CE8")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        
                        Text("Nadeem Khan")
                            .font(AppFonts.regular_16)
                        
                        Text("(Haripur, Pakistan)")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    
                    HStack{
                        Text("Jul 12, 2022")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    .padding(.bottom,2)
                    
                    HStack{
                        Text("Odio libero proin pellentesque morbi volutpat vulputate magnis ac. Dictum at consectetur et")
                            .font(AppFonts.regular_14)
                        
                        Spacer()
                    }
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
                    .padding()
                
                Button(action: {}, label: {
                    Text("Publish Event Now")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: 70)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top)
                
            }
                Spacer()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Event_Details_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Event_Details_Screen()
    }
}


       
    

