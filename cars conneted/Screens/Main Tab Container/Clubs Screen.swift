//
//  Clubs Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

struct Clubs_Screen: View {
    
    @State private var searchText = ""
    
    @Binding var isDrawerOpen : Bool
    
    @State private var addFilter  = false
    @State private var selectType = ""
    @State private var searchTextFilter  = ""
    @State var distanceValue : Int = 100
    @State private var toSearch  = false
    @State private var showSearchBar : Bool = false
    
   
    
    init(isDrawerOpen : Binding<Bool>){
        self._isDrawerOpen = isDrawerOpen
    }
    var body: some View {
        ZStack{
            
            VStack{
                
                VStack{
                    
                    // top bar
                    HStack{
                        Button(action: {
                            self.isDrawerOpen.toggle()
                        }, label: {
                            Image("side menu icon white")
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                   .frame(width: 35, height: 35)
                        })
                        
                        Spacer()
                        
                        
                        Text("Clubs")
                            .font(AppFonts.SemiBold_20)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        NavigationLink(destination: Create_Club_Screen(), label: {
                            Image("plus icon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(.trailing,10)
                        })
                      
                        
                        Button(action: {
                            self.showSearchBar.toggle()
                        }, label: {
                            Image("White search Icon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                        })
                        
                     
                           
                    }
                   
                    .padding(.leading)
                        .padding(.trailing)
                        .padding(.top)
                    
                    
                    if(self.showSearchBar){
                        // search bar
                        HStack{
                            
                            TextField("Search",text: self.$searchText)
                                .foregroundColor(.red)
                            
                          
                            
                            Button(action: {
                                self.addFilter = true
                            }, label: {
                                Image("Filter 2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                               
                                   
                            })

                            
                            
                        }
                        .padding(15)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                        .padding(.top,20)
                        .padding(.leading,20)
                        .padding(.trailing,20)
                    }
                  
                    
                }
               
                .padding(.top,40)
                .padding(.bottom,15)
                .background(
                    Image("home screen background")
                    .resizable())
                
                
                
                
                ScrollView(.vertical, showsIndicators: false){
                
                HStack{
                    Text("My Clubs")
                        .font(AppFonts.semiBold_12)
                       
                    Spacer()
                    
                    NavigationLink(destination: My_Clubs_screens(), label: {
                        Text("View all")
                            .font(AppFonts.regular_12)
                            .foregroundColor(AppColors.redGradientColor1)
                    })
                    
                    
                }
                .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        
                LazyHStack{
                    ForEach(0...3, id: \.self){
                        index in
                        myClubsClubs()
                        
                    }
                }
                    }
                    
                   
                    HStack{
                        Text("Joined Clubs")
                            .font(AppFonts.semiBold_12)
                           
                        Spacer()
                        
                        Text("View all")
                            .font(AppFonts.regular_12)
                            .foregroundColor(AppColors.redGradientColor1)
                        
                    }
                    .padding()
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        
                LazyHStack{
                    ForEach(0...3, id: \.self){
                        index in
                        myClubCardShort()
                        
                    }
                }
                    }
                    
                    
                    HStack{
                        Text("Recommended Clubs")
                            .font(AppFonts.semiBold_12)
                           
                        Spacer()
                        
                        Text("View all")
                            .font(AppFonts.regular_12)
                            .foregroundColor(AppColors.redGradientColor1)
                        
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        
                LazyHStack{
                    ForEach(0...3, id: \.self){
                        index in
                        myClubsRecommened()
                        
                    }
                }
                    }
                    
                }
                
                Spacer()
                
            }
            
            HalfASheetFilter(isPresented: $addFilter){
                
                VStack{
                    HStack{
                        Text("Filter Your Search")
                        Spacer()
                    }
                    .padding(.top)
                    
                    HStack{
                        
                        TextField("Search",text: self.$searchTextFilter)
                            .foregroundColor(.red)
                        
                        
                     
                            Button(action: {
                                self.addFilter = false
                                self.toSearch = true
                            }, label: {
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:20,height: 20)
                                    .foregroundColor(.red)
                          
                            })
                        
                      
                           
                        
                        
                    }
                    .padding(15)
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(.red).frame(width: UIScreen.widthBlockSize*90))
                    .padding(.top,10)
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    
                    
                    
                    Text("Selext Type")
                      .padding(.top,20)
                      .frame(maxWidth: .infinity, alignment: .leading)
                      
                      .padding(.bottom,-5)
                    
                      
                    TextField("Body parts, Engine parts, etc",text:$selectType)
                        .foregroundColor(AppColors.redGradientColor1)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(width:UIScreen.widthBlockSize*90, height: 1).padding(.top, 40))
                      .foregroundColor(.black)
                      
                      .overlay(HStack{
                        Spacer()
                       
                          Menu(content:{
                              Button(action: {}, label: {
                                  Text("Body parts")
                              })
                              
                              Button(action: {}, label: {
                                  Text("Engine parts")
                              })
                              
                          }, label:{
                              Image("dropdown menu 2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding()
                          })
                          
                          
                      })
                    
                    HStack{
                        Text("Price Range")
                        Spacer()
                    }
                    .padding(.top)
                    
                    SeekBar(lable: "$", maxRange: 5000, color: AppColors.redGradientColor2, value: self.$distanceValue)
                        
                        .padding(.bottom)
                    
                    
                    
                    HStack{
                        Text("Rating")
                        Spacer()
                    }
                    
                    HStack{
                        
                        HStack{
                            Text("1")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        HStack{
                            Text("2")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        HStack{
                            Text("3")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        
                        HStack{
                            Text("4")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        
                        HStack{
                            Text("5")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    Button(action: {
                        self.addFilter = false
                        self.toSearch = true
                    }, label: {
                        Text("Apply Filter")
                            .font(AppFonts.semiBold_16)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                            .padding(.top)
                            .padding(.bottom)
                    })
                       
                    
                
                    
                    
                    
                    
                    
                    
                }
                .padding(.bottom)
            }
            .height(.proportional(0.60))
            .closeButtonColor(UIColor.gray)
            .backgroundColor(UIColor.white)
           
        }
        .edgesIgnoringSafeArea(.top)
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarHidden(true)
    }
}




struct myClubsClubs: View{
    var body: some View{
    
        ZStack{
        
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
                        
                        NavigationLink(destination: {
                            Invite_Friends_Screen()
                        }, label: {
                            Text("Invite")
                                .foregroundColor(.white)
                                .font(AppFonts.medium_12)
                                .padding(.top,10)
                                .padding(.bottom,10)
                                .padding(.leading,20)
                                .padding(.trailing,20)
                                .background(RoundedRectangle(cornerRadius: 7).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                .cornerRadius(8)
                                .padding(.trailing,20)
                              

                        })
                     
                        
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: My_club_Details__admin_view__Screen(), label: {
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
                                
                            
                            
                        }.padding()
                            .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*92, height: UIScreen.heightBlockSize*6))
                    })
                   
                      
                }.padding(.top,20)
                
            }
            .frame(height: 240)
            .cornerRadius(10)
          
            
        }.padding(.bottom,20)
            .padding(.leading,18)
            .padding(.trailing,20)
            
            
          
            
        }
    }
}


struct myClubCardShort : View {
  
  var body: some View {
      
      HStack{
          
          NavigationLink(destination: {
              Club_details_member_view_Screen()
          }, label: {
              Image("Image clubs")
              
              VStack(alignment: .leading){
                  
                  HStack{
                      Text("Ace Classic Club")
                          .font(AppFonts.semiBold_14)
                          .foregroundColor(.red)
                          .lineLimit(1)
                      
                      Spacer()
                  }
                  
                  ZStack{
                      
                      Image("unsplash_1Fsb2C7hxQ0")
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(width: 20, height: 20)
                      
                      Image("unsplash_uXhUyqMnC_U")
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(width: 20, height: 20)
                          .offset(x: 12)
                      
                      Image("unsplash_ZAFpiVgZNng")
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(width: 20, height: 20)
                          .offset(x: 24)
                      
                      Image("unsplash_-IPFb6J03Mw")
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(width: 20, height: 20)
                          .offset(x: 36)
                  }
                  
                  Text("+120 Members")
                      .font(AppFonts.medium_12)
                      .foregroundColor(.gray)
                  
                  
              }
              .padding(.leading,5)
          })
         
          
          
          Button(action: {}, label: {
              Text("View")
                  .font(AppFonts.medium_12)
                  .foregroundColor(.red)
                  .padding(10)
                  .padding(.leading,5)
                  .padding(.trailing,5)
                  .background(RoundedRectangle(cornerRadius: 5).fill(AppColors.redGradientColor1.opacity(0.2)))
                  .padding(.leading)
          })
         
      }
      .padding()
      .background(RoundedRectangle(cornerRadius: 20).fill(AppColors.redGradientColor1).opacity(0.05).frame(width: UIScreen.screenWidth - 40))
      .padding(.leading,20)
      
  }
}

struct myClubsRecommened: View{
    var body: some View{
    
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
                        
                        NavigationLink(destination: {
                            Club_details_member_view_Screen()
                        }, label: {
                            Text("Join")
                                .foregroundColor(.white)
                                .font(AppFonts.medium_12)
                                .padding(.top,10)
                                .padding(.bottom,10)
                                .padding(.leading,20)
                                .padding(.trailing,20)
                                .background(RoundedRectangle(cornerRadius: 7).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                .cornerRadius(8)
                                .padding(.trailing,20)
                        })
                       
                          

                        
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: Club_details_member_view_Screen(), label: {
                        HStack{
                            
                            
                            
                            
                            Text("Ace Classic Club")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                            
                            Spacer()
                            
//                            Image("unsplash_-IPFb6J03Mw")
//                                .offset(x:36)
//
//                            Image("unsplash_-IPFb6J03Mw")
//                                .offset(x:24)
//
//                            Image("unsplash_-IPFb6J03Mw")
//                                .offset(x:12)
//
//                            Image("unsplash_-IPFb6J03Mw")
//                            //                            .offset(x:15)
//
//                            Text("+120")
//                                .foregroundColor(.white)
//
//
                            
                        }.padding()
                            .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*92, height: UIScreen.heightBlockSize*6))
                    })
                   
                      
                }.padding(.top,20)
                
            }
            .frame(height: 240)
            .cornerRadius(10)
          
            
        }.padding(.bottom,20)
            .padding(.leading,18)
            .padding(.trailing,20)
         
    }
}
