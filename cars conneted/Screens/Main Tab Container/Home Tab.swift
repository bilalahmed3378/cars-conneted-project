//
//  Home screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/07/2022.
//

import SwiftUI

struct HomeTab: View {
    @State private var searchText = ""
    @Binding var isDrawerOpen : Bool
    
    @State var addItems = false
    @State var addFlowActive = false
    
    @State var toSearchScreen = false
    
    @State var toProximity = false
    
    @State var toAddEvent = false
    

    
    init(isDrawerOpen : Binding<Bool>){
        self._isDrawerOpen = isDrawerOpen
    }
    var body: some View {
        
        
            ZStack{
                
                NavigationLink(destination: post_screen_2() , isActive: self.$addFlowActive) {
                    EmptyView()
                }
                
                NavigationLink(destination: Search_Screen() , isActive: self.$toSearchScreen) {
                    EmptyView()
                }
                
                NavigationLink(destination: Proximity_location_screen() , isActive: self.$toProximity) {
                    EmptyView()
                }
                
                NavigationLink(destination: Create_Event_step1_Screen() , isActive: self.$toAddEvent) {
                    EmptyView()
                }
                
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
                            Spacer()
                            Spacer()
                            
                            Text("Home")
                                .font(AppFonts.SemiBold_20)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Button(action: {
                                self.toProximity = true
                            }, label: {
                                Image("Location white")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding(.trailing,10)
                            })
                           
                            Button(action: {}, label: {
                                Image("bell white")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding(.trailing,10)
                            })
                           
                            
                            NavigationLink(destination: Setting_Screen()){
                                Image("profile icon home")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                            }
                            
                            
                            
                            
                        }
                            .padding(.leading,24)
                            .padding(.trailing,24)
                            .padding(.top,20)
                        
                        // search bar
                        HStack{
                            
                            TextField("Search",text: self.$searchText)
                                .foregroundColor(.red)
                            
                            
                            Button(action: {
                                self.toSearchScreen = true
                            }, label: {
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:20,height: 20)
                                    .foregroundColor(.red)
                                
                            })
                           
                            
                        }
                        .padding(15)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                        .padding(.top,20)
                        .padding(.leading,20)
                        .padding(.trailing,20)
                        
                        // status heading
                        HStack{
                            Text("Status")
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(.leading,20)
                        .padding(.top,10)
                        
                        // list of ststuses
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            
                            HStack{
                                
                                
                                    Button(action: {}, label: {
                                        VStack{
                                        Image("Group 7364")
                                        
                                        Text("Add")
                                            .foregroundColor(.white)
                                            
                                        }
                                        .padding(.leading,20)
                                    })
                                   
                                  
                               
                                
                                ForEach(0...10 , id:\.self){ index in
                                    
                                        Button(action: {}, label: {
                                            VStack{
                                            Image("Group 7365")
                                            Text("Arsalan")
                                                .foregroundColor(.white)
                                            }
                                            .padding(.leading,20)
                                            
                                        })
                                       
                                }
                                
                            }
                        }
                         
                    }
                   
                    .padding(.top,30)
                    .padding(.bottom,15)
                    .background(
                        Image("home screen background")
                        .resizable()
                    )
                 
                    ScrollView(.vertical, showsIndicators: false){
                        
                        NavigationLink(destination: {
                            post_screen_2()
                        }, label: {
                            HStack{
                                Image("unsplash_X6Uj51n5CE8")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
                                    .padding(.trailing,5)
                                
                                Text("Write something...")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(.black)
                                    .padding(.trailing,190)
                                    .padding(.top,15)
                                    .padding(.bottom,15)
                                    .padding(.leading)
                                    .background(RoundedRectangle(cornerRadius: 80).strokeBorder(.black))
                                
                                Spacer()
                            }
                            .padding()
                            .padding(.bottom,-20)
                        })
                       
                        
                        
                        
                        ForEach(0...1 ,  id: \.self){index in
                            PostsHome()
                            Divider()
                            
                            EventsHome()
                            Divider()
                            
                            ClubsCardHome()
                            Divider()
                        }
                        
                    }
               
                }
                
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Button(action: {
                            self.addItems.toggle()
                        }){
                         Image(systemName: "plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color.white)
                                .padding(20)
                                .background(Circle().fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).shadow(radius: 10))
                                .padding(.trailing,20)
                                .padding(.bottom,10)
                        }
                        .sheet(isPresented: $addItems){
                            VStack{
                                Spacer()
                                
                               
                                Button(action: {
                                    self.addItems = false
                                    self.addFlowActive = true
                                }){
                                    
                                         HStack{
                                             Image("Add post icon red")
                                                 .padding(.trailing)
                                             
                                             Text("Add post")
                                                 .foregroundColor(AppColors.redGradientColor1)
                                                 .font(AppFonts.medium_16)
                                             Spacer()
                                         }.padding()
                                             .padding(.leading)
                                }
                               
                                Divider()
                                Group{
                                    
                                    Button(action: {
                                        self.addItems = false
                                        self.toAddEvent = true
                                    }, label: {
                                        HStack{
                                            Image("add event icon red")
                                                .padding(.trailing)
                                            
                                            Text("Add event")
                                                .foregroundColor(AppColors.redGradientColor1)
                                                .font(AppFonts.medium_16)
                                            Spacer()
                                        }.padding()
                                                .padding(.leading)
                                    })
                               
                                
                                Divider()
                                
                                HStack{
                                    Image("add car icon red")
                                        .padding(.trailing)
                                    
                                    Text("Add car")
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .font(AppFonts.medium_16)
                                    Spacer()
                                }.padding()
                                        .padding(.leading)
                                
                                Divider()
                                
                                HStack{
                                    Image("add classified icon red")
                                        .padding(.trailing)
                                    
                                    Text("Add classified")
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .font(AppFonts.medium_16)
                                    Spacer()
                                }.padding()
                                        .padding(.leading)
                                
                                Divider()
                                
                                HStack{
                                    Image("add club icon red")
                                        .padding(.trailing)
                                    
                                    Text("Add club")
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .font(AppFonts.medium_16)
                                    Spacer()
                                }.padding()
                                        .padding(.leading)
                                }
                                Divider()
                                
                                HStack{
                                    Image("add status icon red")
                                        .padding(.trailing)
                                    
                                    Text("Add status")
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .font(AppFonts.medium_16)
                                    Spacer()
                                }.padding()
                                    .padding(.leading)
                                
                                Divider()
                                
                                Spacer()
                                
                                HStack{
                                    Button(action: {
                                        self.addItems = false
                                    }, label: {
                                        Text("Cancel")
                                            .font(AppFonts.semiBold_16)
                                            .fontWeight(.medium)
                                            .foregroundColor(.white)
                                            .frame(width: 350, height: 70)
                                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    })
                                    
                                    
                                }.padding()

                                
                                
                                
                            }
                        }
                    }
                }
               
            }
            .edgesIgnoringSafeArea(.top)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarHidden(true)
        
        
    }
}


struct PostsHome : View {
  
    @State private var showingSheet = false
    
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
              
              Button(action: {
                  self.showingSheet.toggle()
              }, label: {
                  Text("12 comments")
                      .font(AppFonts.regular_10)
                      .foregroundColor(Color.gray)
              })
              .sheet(isPresented: $showingSheet){
                  commentsScreen()
              }
             
              
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

struct EventsHome : View {
    
    @State private var showingSheet = false
    
  var body: some View {

      VStack{
          
          HStack{
             
              Image("post picture")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 50, height: 50)
              
              VStack(alignment: .leading){
                  
                  HStack{
                      Text("Bhai Nadeem.")
                          .font(AppFonts.medium_14)
                      
                      Button(action: {}, label: {
                          Text("Follow")
                              .font(AppFonts.medium_14)
                              .foregroundColor(.blue)
                      })
                     
                  }
                  .padding(.bottom,2)
                  
                  HStack{
                  Text("Shared an Event")
                          .font(AppFonts.regular_12)
                          .foregroundColor(.gray)
                         
                
                  Text("1h ago")
                          .font(AppFonts.regular_12)
                          .foregroundColor(.gray)
                  }
                  
              }
              Spacer()
              
              Button(action: {}, label: {
                  Image("doted Icons")
              })
            
              
          }.padding(.bottom,10)
          
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
              .font(.subheadline)
              .foregroundColor(Color.gray)
          
          ZStack{
            
              Image("Event cards pic")
                  .resizable()
              
              VStack(alignment: .leading){
                  HStack{
                      Spacer()
                      Button(action: {}, label: {
                          Image("bookmark small")
                      })
                     
                      
                  }
                  Spacer()
                  Text("Cars Expo 2022")
                      .font(AppFonts.bold_20)
                      .foregroundColor(Color.white)
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
                  
                  HStack{
                      Image("time Icons")
                      Text("June 8,2022")
                          .foregroundColor(.white)
                          .font(AppFonts.regular_12)
                  }
                  HStack{
                      Image("location Icons")
                      Text("KPK, Pakistan")
                          .foregroundColor(.white)
                          .font(AppFonts.regular_12)
                  }
                  
                  HStack{
                    
                      Text("$25")
                          .font(AppFonts.regular_14)
                          .foregroundColor(.gray)
                          .background(RoundedRectangle(cornerRadius: 50).fill(.white).frame(width: 86, height: 45))
                      
                  
                      Spacer()
                      
                      Button(action: {
                         
                      }){
                          VStack{
                              Text("Register")
                                  .font(AppFonts.regular_14)
                                  .foregroundColor(.white)
                                  .background(RoundedRectangle(cornerRadius: 50).fill((LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))).frame(width: 200, height: 45))
                          }
                      }
                     
                    
                  }.padding(.trailing,75)
                      .padding(.leading,30)
                      .padding(.top,20)
                      .padding(.bottom,10)
                  
              }
              .padding(20)
              
              
           
              
            
              
          }.frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*30)
              
          
          HStack{
              
              Button(action: {}, label: {
                  Image("Group 7370")
                  
                  Text("Arsalan and 20 other")
                      .font(AppFonts.regular_10)
                      .foregroundColor(Color.gray)
                  
              })
             
              Spacer()
              
              Button(action: {
                  self.showingSheet.toggle()
              }, label: {
                  Text("12 comments")
                      .font(AppFonts.regular_10)
                      .foregroundColor(Color.gray)
              })
              .sheet(isPresented: $showingSheet){
                  commentsScreen()
              }
            
              
          }
          
          Divider()
          
          
          HStack{
              
              Button(action: {}, label: {
                  HStack{
                      Image("heart icon")
                      Text("Like")
                          .font(AppFonts.regular_12)
                          .foregroundColor(Color.gray)
                      
                  }
              })
              
            
            
              
              Spacer()
              
              Button(action: {
                  self.showingSheet.toggle()
              }, label: {
                  HStack{
                      Image("ant-design_comment-outlined")
                      Text("Comment")
                          .font(AppFonts.regular_12)
                          .foregroundColor(Color.gray)
                      
                  }
              })
              .sheet(isPresented: $showingSheet){
                  commentsScreen()
              }
             
              Spacer()
              
              Button(action: {}, label: {
                  HStack{
                      Image("ion_share-social-sharp")
                      Text("Share")
                          .font(AppFonts.regular_12)
                          .foregroundColor(Color.gray)
                  }
              })
             
              Spacer()
              
              Button(action: {}, label: {
                  HStack{
                      Image("Icons")
                      Text("Save")
                          .font(AppFonts.regular_12)
                          .foregroundColor(Color.gray)
                  }
              })
             
              
          }
          
        Divider()
          
      }.padding()

      
      
  }
}

struct ClubsCardHome: View {
    var body: some View {
        
        VStack{
            
            HStack{
               
                Image("post picture")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading){
                    
                    HStack{
                        Text("Rana Sahahbaz.")
                            .font(AppFonts.medium_14)
                        
                        Text("Follow")
                            .font(AppFonts.medium_14)
                            .foregroundColor(.blue)
                    }
                    .padding(.bottom,2)
                    
                    HStack{
                    Text("Shared a Club")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                           
                  
                    Text("1h ago")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                    }
                    
                }
                Spacer()
                
                Image("doted Icons")
                
            }.padding(.bottom,10)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .font(.subheadline)
                .foregroundColor(Color.gray)
            
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
                      
                    
                    
                    
                }.padding(.top)
                
                
                
            }
            .frame(height: 240)
            .cornerRadius(10)
            .padding(.top)
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
            
            
        }.padding(.bottom,20)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.top,20)

     
        
        
    }
    
}

struct marketPlaceSreachCardsHome : View {
    
   
    
    var body: some View {
       
        VStack{
            
            HStack{
               
                Image("post picture")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading){
                    
                    HStack{
                        Text("Ustad Hashim Khan.")
                            .font(AppFonts.medium_14)
                        
                        Text("Follow")
                            .font(AppFonts.medium_14)
                            .foregroundColor(.blue)
                    }
                    .padding(.bottom,2)
                    
                    HStack{
                    Text("Shared a Classified")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                           
                  
                    Text("1h ago")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                    }
                    
                }
                Spacer()
                
                Image("doted Icons")
                
            }.padding(.bottom,10)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .font(.subheadline)
                .foregroundColor(Color.gray)
            
            ZStack(alignment: .top){
                Image("Rectangle 1265")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.widthBlockSize*90, height: 250)
                    .cornerRadius(10)
                
                VStack(alignment: .leading){
                    HStack{
                        Image("Rectangle 1266")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 70, height: 70)
                           
                        
                        VStack(alignment: .leading){
                            Text("Jhon Deo Smith")
                                .foregroundColor(.white)
                                .font(AppFonts.semiBold_12)
                                .padding(.bottom,3)
                            Text("Tot. Sales 13")
                                .foregroundColor(.white)
                                .font(AppFonts.regular_12)
                          
                        }
                        
                        Spacer()
                        Text("$50")
                            .foregroundColor(.white)
                            .font(AppFonts.SemiBold_20)
                            .padding(.trailing,10)
                        
                    }.padding()
                        .padding(.bottom,-5)
                       
                    
                    HStack{
                    Text("BMW Lazer Head Lights")
                            .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    }.padding(.leading)
                    
                    HStack{
                        Text("Spare Parts")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_12)
                    }.padding(.leading)
                    .padding(.top,-3)
                    
                    HStack{
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                        
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                        
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                        
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                        
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                    }
                    .padding(.leading)
                    .padding(.top,1)
                    .padding(.bottom,5)
                    
                    HStack{
                        Text("$500")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.white)
                            .padding(10)
                            .padding(.leading,10)
                            .padding(.trailing,10)
                            .background(RoundedRectangle(cornerRadius: 50).fill(.gray).frame(width: UIScreen.widthBlockSize*15, height: UIScreen.heightBlockSize*4))
                            
                           
                        
                        Spacer()
                        Button(action: {
                            
                          
                            
                        }, label: {
                            Text("Purchase")
                                .font(AppFonts.regular_14)
                                .foregroundColor(.white)
                                .padding(10)
                                .padding(.leading,30)
                                .padding(.trailing,30)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*30, height: UIScreen.heightBlockSize*4))
                                
                        })
                      
                           
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    
                    Spacer()
                    
                  
                   
                }
                
            }
            .frame(width: UIScreen.widthBlockSize*90, height: 250)
            
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
            
            Image("Line 2")
            
        }.padding()

    }
}

struct commentsScreen : View{
    @State private var comment = ""
    var body: some View{
       
        VStack{
           
            HStack{
                Text("Comments")
                    .font(AppFonts.medium_18)
            }.padding()
            
            ScrollView(){
                LazyVStack{
                    ForEach(0...10, id: \.self){index in
                        commentsDetails()
                    }
                }
            }
            
            HStack{
            TextEditor(text: self.$comment)
                .font(AppFonts.regular_14)
                .foregroundColor(.gray)
                .frame(minHeight: 40, idealHeight: 40 , maxHeight: 40)
                .colorMultiply(.white)
                .overlay(HStack{
                    Text("Add comment")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                        .padding(.leading)
                    Spacer()
                })
                
                Image("Vector-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                  
                
            }.padding()
                .padding(.bottom,20)
            .background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.2)))
          
            
           
            
          
        }.edgesIgnoringSafeArea(.bottom)
        
    }
}

struct commentsDetails : View{
    var body: some View{
        HStack{
            Image("unsplash_OhKElOkQ3RE")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            
            VStack(alignment: .leading){
                Text("Jhon smith")
                    .font(AppFonts.semiBold_12)
                    .padding(.bottom,2)
                
                Text("Lorem ipsum dolor sit amet, consecteturhb hiu uhpuhiuhpiuhhuh adipiscing elit.")
                    .font(AppFonts.regular_12)
                    
            }
            Spacer()
        }.padding(.leading)
            .padding(.trailing)
        
        HStack{
            Spacer()
            
            Image("heart icon")
               
            
            Text("Like")
                .font(AppFonts.regular_12)
                .padding(.trailing)
            
            Image("bi_reply-fill")
             
            
            Text("Reply")
                .font(AppFonts.regular_12)
            
            
        }
        .padding(.leading)
        .padding(.trailing)
        
        Divider().padding()
    }
}



