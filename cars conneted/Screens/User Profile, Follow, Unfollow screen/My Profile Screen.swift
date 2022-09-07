//
//  My Profile Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 07/09/2022.
//

import SwiftUI

struct My_Profile_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    
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
                            
                            Image("doted Icons")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 28, height: 28)
                            
                        }.padding(.leading)
                            .padding(.trailing)
                        
                        Group{
                            Image("unsplash_spxgIcI7YGo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*30)
                                .padding(.top)
                            
                            Image("unsplash_OhKElOkQ3RE-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.widthBlockSize*26, height: 100)
                                .offset(x: 0, y: -45)
                            
                            Text("Elon Musk")
                                .font(AppFonts.medium_18)
                                .padding(.top, -30)
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
                            Spacer()
                       Text("Risus ullamcorper sed ultrices quam mauris ullamcorper vulputate elementum morbi. A aliquet aenean faucibus turpis erat. Sed neque lobortis et nullam et bibendum tristique faucibus elementum.")
                            .font(AppFonts.regular_14)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(.leading)
                        .padding(.bottom)
                        
                        
                    
                        
                        Group{
                            HStack{
                                
                                Button(action: {
                                    self.isPostView = 0
                                }, label: {
                                    
                                    if(self.isPostView == 0){
                                        Text("Posts")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.white)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Posts")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.gray)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                    }
                                      
                                })
                                
                                
                                Button(action: {
                                    self.isPostView = 1
                                }, label: {
                                    
                                    if ((self.isPostView == 1) ){
                                        Text("Garage")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.white)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Garage")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.gray)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                    }
                                    
                                })
                                
                                
                                Button(action: {
                                    self.isPostView = 2
                                }, label: {
                                    
                                    if ((self.isPostView == 2) ){
                                        Text("Classified")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.white)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Classified")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.gray)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                    }
                                    
                                })
                                
                                
                                Button(action: {
                                    self.isPostView = 3
                                }, label: {
                                    
                                    if ((self.isPostView == 3) ){
                                        Text("Clubs")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.white)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Clubs")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.gray)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
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
                                    .padding(.trailing,150)
                                    .padding(.top,15)
                                    .padding(.bottom,15)
                                    .padding(.leading)
                                    .background(RoundedRectangle(cornerRadius: 80).strokeBorder(.black))
                                
                                Spacer()
                            }
                            .padding()
                            .padding(.top,-20)
                            
                            (ForEach(0...5 , id:\.self){ index in
                           
                                PostCardMyProfile()
                            
                            }
                             )}
                                else if(self.isPostView == 1) {
                                    Text("Add New Car")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*90, height: 50))
                                        .padding()
                                    
                              GarageCardMyProfile()
                            }
                                
                                else if(self.isPostView == 2) {
                                    Text("Add Classified")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*90, height: 50))
                                        .padding()
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
                            
                                    ClassifiedCardMyProfile()
                            }
                               
                            else if(self.isPostView == 3){
                                Text("Create New Club")
                                    .font(AppFonts.regular_16)
                                    .foregroundColor(AppColors.redGradientColor1)
                                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*90, height: 50))
                                    .padding()
                                ClubsCardMyProfile()
                            }
                                
                                
                        
                        }
                        
                        
                        
                    }
                    .padding()
                    .padding(.top,-20)
                }
            } .navigationBarHidden(true)
    }
}

struct My_Profile_Screen_Previews: PreviewProvider {
    static var previews: some View {
        My_Profile_Screen()
    }
}


struct PostCardMyProfile : View {
    
    
    var body: some View {
        
        VStack{
            
           
            
            HStack{
               
                Image("post picture")
                
                VStack(alignment: .leading){
                    Text("Elizebeth Smith")
                        .font(AppFonts.medium_14)
                    
                    Text("1h ago")
                        .foregroundColor(Color.gray)
                        .font(AppFonts.regular_12)
                    
                    
                }
                Spacer()
                
                Image("doted Icons")
                
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
                    .font(AppFonts.regular_10)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Text("12 comments")
                    .font(AppFonts.regular_10)
                    .foregroundColor(Color.gray)
                
            }
            
            Divider()
            
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
            
           Divider()
            
        
            
            
        }
        .padding()
        
    }
}


struct GarageCardMyProfile : View {
    var body: some View {
        
        VStack{
           
            ZStack{
                Image("unsplash_1ZhZpP91olQ")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*28)
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
                    .padding(.top)
                    
                    Spacer()
                    
                    HStack{
                        Image("Icons-3")
                        Spacer()
                        Image("Icons-4")
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                }
            }
            
            VStack{
                
            HStack{
                
                Image("Group 7367")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 18, height: 18)
                
                Image("Group 7369")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 18, height: 18)
                    .offset(x: -10, y: 0)
                
                
                
                Text("Arsalan and 20 other")
                    .font(AppFonts.regular_12)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Text("12 comments")
                    .font(AppFonts.regular_12)
                    .foregroundColor(Color.gray)
                
            }
            
            Divider()
                .padding(.leading)
                .padding(.trailing)
            
            HStack{
                HStack{
                    Image("ei_like")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 26, height: 26)
                    
                    Text("Like")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                    
                    
                }
                
                Spacer()
                HStack{
                    Image("ant-design_comment-outlined")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 26, height: 26)
                    
                    Text("Comment")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                    
                }
                Spacer()
                HStack{
                    Image("ion_share-social-sharp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 26, height: 26)
                    
                    Text("Share")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                }
               
               
                
                
            }
                
            } .padding(.leading)
                .padding(.trailing)
               
            
            VStack{
            
            HStack{
                Text("Engine v 1.6")
                    .font(AppFonts.semiBold_14)
                Spacer()
                Text("$ 5,000")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.bold_16)
                
            }.padding(.top)
            .padding(.leading)
                    .padding(.trailing)
           
            
            
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
            .padding(.leading)
                .padding(.trailing)
            
            
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
                
            }.padding(.bottom)
            .padding(.leading)
                    .padding(.trailing)
            
                
            }
            .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(.gray.opacity(0.3)))
            .padding()
            .padding(.top,-15)
            
            
            
        }
        
        Divider().padding()
        
    }
    
    
}

struct ClubsCardMyProfile: View {
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
                            .font(AppFonts.regular_12)
                        
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
                        .padding(.top,-20)
                        .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*92, height: UIScreen.heightBlockSize*10))
                      
                    
                    
                    
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


struct ClassifiedCardMyProfile: View {
    var body: some View{
        
        VStack{
            ZStack{
                Image("classified")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*30)
                
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
                }.padding(.bottom,30)
                
                
                
            }.frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*24)
            
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
