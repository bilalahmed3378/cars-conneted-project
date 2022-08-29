//
//  User Profile- Wall.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 26/07/2022.
//

import SwiftUI

struct User_Profile__Wall: View {
    
    @State var isPostView: Int = 0
    @State var isfollowing: Bool = true
    
    var body: some View {
        ZStack{
            
            ScrollView{
                VStack{
                    Group{
                        HStack{
                            Image("Icons-2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                            
                            Spacer()
                            
                            Image("search icon black")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 28, height: 28)
                            
                        }.padding(.leading)
                            .padding(.trailing)
                        
                        Group{
                            Image("unsplash_spxgIcI7YGo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 360, height: 250)
                                .padding(.top)
                            
                            Image("unsplash_OhKElOkQ3RE-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .offset(x: 0, y: -45)
                            
                            Text("Elon Musk")
                                .font(AppFonts.medium_18)
                                .padding(.top, -30)
                        }
                       
                        
                        HStack{
                            Image("clarity_clock-line")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            
                            Text("Joined December 2014")
                                .font(AppFonts.regular_16)
                        }
                       
                        
                        HStack{
                            Image("carbon_application-mobile-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            
                            Text("+96-96987458962")
                                .font(AppFonts.regular_16)
                        }
                        
                        HStack{
                            Image("location black icon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            
                            Text("Washington DC, USA")
                                .font(AppFonts.regular_16)
                        }
                        
                     
                            
                            Group{
                                HStack{
                                    VStack{
                                        Text("Following")
                                            .font(AppFonts.regular_16)
                                            .padding(.bottom,10)
                                            .foregroundColor(AppColors.redGradientColor1)
                                        Text("156")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(AppColors.redGradientColor1)
                                    }
                                    Spacer()
                                    VStack{
                                        Text("Followers")
                                            .font(AppFonts.regular_16)
                                            .padding(.bottom,10)
                                            .foregroundColor(AppColors.redGradientColor1)
                                        Text("289")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(AppColors.redGradientColor1)
                                    }
                                    Spacer()
                                    
                                    VStack{
                                        Text("Posts")
                                            .font(AppFonts.regular_16)
                                            .padding(.bottom,10)
                                            .foregroundColor(AppColors.redGradientColor1)
                                        Text("90")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(AppColors.redGradientColor1)
                                    }
                                }
                                .padding()
                                
                            }
                        HStack{
                       Text("Risus ullamcorper sed ultrices quam mauris ullamcorper vulputate elementum morbi. A aliquet aenean faucibus turpis erat. Sed neque lobortis et nullam et bibendum tristique faucibus elementum.")
                            .font(AppFonts.regular_14)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                            
                        }
                        .padding(.leading)
                        .padding(.bottom)
                        
                        
                        HStack{
                            
                            Button(action: {
                                self.isfollowing.toggle()
                            }, label: {
                                if (self.isfollowing) {
                                   
                                    HStack{
                                        Text("Follow")
                                            .font(AppFonts.semiBold_14)
                                            .foregroundColor(.white)
                                        
                                       
                                    }
                                    .frame(width: 160, height: 50 )
                                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    
                                }
                                else{
                                    
                                    Text("Following")
                                        .font(AppFonts.semiBold_14)
                                        .foregroundColor(.red)
                                        .frame(width: 160, height: 50 )
                                        .background(RoundedRectangle(cornerRadius: 50).strokeBorder(.red, lineWidth: 1))
                                }
                                
                                
                                
                                
                                
                               
                                
                            })
                            
                            
                             HStack{
                                 
                                 Text("Send Message")
                                     .font(AppFonts.semiBold_14)
                                     .foregroundColor(AppColors.redGradientColor1)
                                 
                             }
                             .frame(width: 160, height: 50 )
                             .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor2))
                            
                            
                        }
                        
                        
                        
                        
                        Group{
                            HStack{
                                
                                Button(action: {
                                    self.isPostView = 0
                                }, label: {
                                    
                                    if(self.isPostView == 0){
                                        Text("Posts")
                                            .foregroundColor(.white)
                                            .frame(width: 80, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Posts")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.gray)
                                            .frame(width: 80, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).strokeBorder(.black , lineWidth: 1))
                                    }
                                      
                                })
                                
                                
                                Button(action: {
                                    self.isPostView = 1
                                }, label: {
                                    
                                    if ((self.isPostView == 1) ){
                                        Text("Garage")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.white)
                                            .frame(width: 80, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Garage")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.gray)
                                            .frame(width: 80, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).strokeBorder(.black , lineWidth: 1))
                                    }
                                    
                                })
                                
                                
                                Button(action: {
                                    self.isPostView = 2
                                }, label: {
                                    
                                    if ((self.isPostView == 2) ){
                                        Text("Classified")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.white)
                                            .frame(width: 80, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Classified")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.gray)
                                            .frame(width: 80, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).strokeBorder(.black , lineWidth: 1))
                                    }
                                    
                                })
                                
                                
                                Button(action: {
                                    self.isPostView = 3
                                }, label: {
                                    
                                    if ((self.isPostView == 3) ){
                                        Text("Clubs")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.white)
                                            .frame(width: 80, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Clubs")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.gray)
                                            .frame(width: 80, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).strokeBorder(.black , lineWidth: 1))
                                    }
                                    
                                })
                                
                            }
                            .padding()
                            
                        
                            
                            
                          
                            }
                        }
                    
                    ///////////////
                  
                    
                    
                      ////////////////
                       
                        LazyVStack{
                            if(self.isPostView == 0){
                            HStack{
                                Image("unsplash_X6Uj51n5CE8")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
                                    .padding(.trailing,5)
                                
                              
                                
                                Text("Write something...")
                                    .font(AppFonts.regular_12)
                                    .padding(.trailing,165)
                                    .padding(.top,15)
                                    .padding(.bottom,15)
                                    .padding(.leading)
                                    .background(RoundedRectangle(cornerRadius: 80).strokeBorder(.black))
                                
                                Spacer()
                            }
                            .padding()
                            
                            (ForEach(0...5 , id:\.self){ index in
                           
                                PostCardProfile()
                            
                            }
                             )}
                                else if(self.isPostView == 1) {
                                    Text("Add New Car")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*90, height: 50))
                                        .padding()
                                    
                              GarageCardProfile()
                            }
                                
                                else if(self.isPostView == 2) {
                                    VStack(alignment: .leading){
                                        HStack{
                                            Text("23 items in Classified")
                                                .foregroundColor(AppColors.redGradientColor1)
                                                .font(AppFonts.regular_18)
                                            Spacer()
                                        }
                                        
                                        HStack{
                                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliqueto.")
                                                .foregroundColor(.gray)
                                                .font(AppFonts.regular_12)
                                            Spacer()
                                        }
                                    }
                                    .padding()
                            
                                    ClassifiedCardProfile()
                            }
                               
                            else if(self.isPostView == 3){
                                Text("Create New Club")
                                    .font(AppFonts.regular_16)
                                    .foregroundColor(AppColors.redGradientColor1)
                                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*90, height: 50))
                                    .padding()
                                ClubsCardProfile()
                            }
                                
                                
                        
                        }
                        
                        
                        
                    }
                    .padding()
                    .padding(.top,-20)
                }
            }
        }
    }
    
    struct User_Profile__Wall_Previews: PreviewProvider {
        static var previews: some View {
            User_Profile__Wall()
        }
    }

struct PostCardProfile : View {
    
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            HStack{
                
                Image("post picture")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading){
                    Text("Elizebeth Smith")
                        .font(AppFonts.medium_14)
                        .padding(.bottom,5)
                    
                    Text("1h ago")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                    
                    
                }
                Spacer()
                
                Image("doted Icons")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
            }.padding(.bottom,10)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .font(AppFonts.regular_12)
                .foregroundColor(Color.gray)
            
            Image("unsplash_gmA751dxisA")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack{
                
                Image("Group 7370")
                
                Text("Arsalan and 20 other")
                    .font(AppFonts.regular_12)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Text("12 comments")
                    .font(AppFonts.regular_12)
                    .foregroundColor(Color.gray)
                
            }
            
            Image("Line 2")
            
            HStack{
                HStack{
                    Image("heart icon")
                    Text("Like")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                    
                    
                }
                
                Spacer()
                HStack{
                    Image("ant-design_comment-outlined")
                    Text("Comment")
                        .font(AppFonts.regular_12)
                        .fontWeight(.thin)
                        .foregroundColor(Color.gray)
                    
                }
                Spacer()
                HStack{
                    Image("ion_share-social-sharp")
                    Text("Share")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                }
                Spacer()
                
                HStack{
                    Image("Icons")
                    Text("Save")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                }
                
                
            }
            
            Image("Line 2")
            
            
            
            
        }
        .padding(.bottom,20)
        .padding(.leading,10)
        .padding(.trailing,10)
        .padding(.top,20)
    }
}


struct GarageCardProfile : View {
    var body: some View {
        
        VStack{
            ZStack(alignment: .leading){
                Image("unsplash_1ZhZpP91olQ")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 377, height: 190)
                VStack{
                    HStack{
                        Text("Slot 1")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.white)
                            .frame(width: 80, height: 30)
                            .background(RoundedRectangle(cornerRadius: 8).fill(.gray))
                        Spacer()
                    }
                    .padding(.leading)
                    
                    Spacer()
                    
                    HStack{
                        Image("Icons-3")
                        Spacer()
                        Image("Icons-4")
                    }
                    .padding(.leading)
                    .padding(.trailing)
                }
            }
            
            HStack{
                Text("Honda Civic 1.6 Turbo")
                    .font(AppFonts.semiBold_14)
                    
                Spacer()
                
                Text("view details")
                    .font(AppFonts.regular_12)
                    .foregroundColor(AppColors.redGradientColor1)
            }
            .padding(.top,30)
            .padding(.bottom,20)
            
        }
        .padding()
        .padding(.top)
        
        
        
    }
    
    
}

struct ClubsCardProfile: View {
    var body: some View {
        
        VStack{
            
           
            ZStack(alignment: .top){
                
                
                
                Image("unsplash_gmA751dxisA-1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.widthBlockSize*92, height: 240)
                    .overlay(Color.black.opacity(0.03))
                    .clipped()
                   
                
                
                VStack{
                    
                    HStack{
                        
                        Spacer()
                        
                        
                        Text("Join")
                            .foregroundColor(.white)
                            .font(AppFonts.medium_12)
                            .padding(15)
                            .padding(.leading,10)
                            .padding(.trailing,10)
                            .background(AppColors.redGradientColor1)
                            .cornerRadius(8)
                            .padding(.trailing,20)
                          

                        
                    }
                    
                    Spacer()
                    
                    
                    HStack{
                        
                        
                        
                        
                        Text("Ace Classic Club")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        Image("unsplash_-IPFb6J03Mw")
                            .offset(x:36)
                        
                        Image("unsplash_-IPFb6J03Mw")
                            .offset(x:24)
                        
                        Image("unsplash_-IPFb6J03Mw")
                            .offset(x:12)
                        
                        Image("unsplash_-IPFb6J03Mw")
                        //                            .offset(x:15)
                        
                        Text("+120")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                        
                        
                    }.padding()
                        .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*92, height: UIScreen.heightBlockSize*6))
                      
                    
                    
                    
                }.padding(.top,20)
                
                
                
            }
            .frame(height: 240)
            .cornerRadius(10)
            .padding(.top,20)
            
           
            
        }.padding(.bottom,20)
            .padding(.leading,20)
            .padding(.trailing,20)
          

     
        
        
    }
    
}


struct ClassifiedCardProfile: View {
    var body: some View{
        
        VStack{
            ZStack{
                Image("classified")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*90, height: 240)
                
                VStack{
                    Spacer()
                    HStack{
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
                    }
                }.padding(.bottom)
                
                
                
            }.frame(width: UIScreen.widthBlockSize*90, height: 240)
            
            VStack{
            
            HStack{
                Text("Engine v 1.6")
                    .font(AppFonts.semiBold_14)
                Spacer()
                Text("$ 5,000")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.bold_16)
                
            }
            .padding(.leading,30)
                .padding(.trailing,30)
                .padding(.bottom,2)
            
            
            HStack{
                Text("Spare Parts")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 5, height: 5)
                   
                
                Text("Used")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 5, height: 5)
                   
                
                Text("2019")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding(.leading,30)
                .padding(.trailing,30)
                .padding(.bottom,2)
            
            
            HStack{
                
                Text("(5.0)")
                    .font(AppFonts.regular_12)
                
                
                Image("bxs_star")
                Image("bxs_star")
                Image("bxs_star")
                Image("bxs_star")
                Image("bxs_star")
                
               Spacer()
                
                Text("View Details")
                    .font(AppFonts.medium_14)
                    .foregroundColor(AppColors.redGradientColor1)
                
                Image("Icons-5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                
            }
            .padding(.leading,30)
                .padding(.trailing,20)
                
            }.frame(width: UIScreen.widthBlockSize*90, height: 94)
            .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).stroke(.gray).frame(width: UIScreen.widthBlockSize*90, height: 94))
            
        }.frame(width: UIScreen.widthBlockSize*90)
        
        
        
        
    }
    
}
