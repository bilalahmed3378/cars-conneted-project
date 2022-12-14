//
//  Home screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/07/2022.
//

import SwiftUI
import HalfASheet

struct HomeTab: View {
    @State private var searchText = ""
    @Binding var isDrawerOpen : Bool
    
    @State var addItems = false
    @State var addFlowActive = false
    
    @State var toSearchScreen = false
    
    @State var toProximity = false
    
    @State private var addFilter  = false
    
    @State private var selectType = ""
    @State private var searchTextFilter  = ""
    @State var distanceValue : Int = 100
    @State private var toSearch  = false
    
    @State var toAddEvent = false
    
    @State var toAddCar = false
    
    @State var toAddClub = false
    
    @State var toAddStatus = false
    
    @State var toAddClassified = false
    
    @State var toStatus  = false
    
    @State var toClose = false
    
    init(isDrawerOpen : Binding<Bool>){
        self._isDrawerOpen = isDrawerOpen
    }
    
    
    var body: some View {
        
        
            ZStack{
                Group{
                NavigationLink(destination: Create_Club_Screen() , isActive: self.$toAddClub) {
                    EmptyView()
                }
                    
                    NavigationLink(destination: View_Status_Screen() , isActive: self.$toStatus) {
                        EmptyView()
                    }
                
                NavigationLink(destination: Add_Status_Screen() , isActive: self.$toAddStatus) {
                    EmptyView()
                }
                
                NavigationLink(destination: post_screen_2() , isActive: self.$addFlowActive) {
                    EmptyView()
                }
                
                NavigationLink(destination: Add_classified_Screen() , isActive: self.$toAddClassified) {
                    EmptyView()
                }
                
                NavigationLink(destination: Add_your_Car_Screen() , isActive: self.$toAddCar) {
                    EmptyView()
                }
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
                                self.toSearchScreen = true
                            }, label: {
                                Image("White search Icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding(.trailing,10)
                            })
                           
                            NavigationLink(destination: Notification_Screen(), label: {
                                Image("bell white")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding(.trailing,10)
                            })
                              
                            
                           
                            
                            NavigationLink(destination: My_Profile_Screen()){
                                Image("profile icon home")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                            }
                            
                            
                            
                            
                        }
                            .padding(.leading,24)
                            .padding(.trailing,24)
                            .padding(.top,30)
                        
                        // search bar
//                        HStack{
//
//                            TextField("Search",text: self.$searchText)
//                                .foregroundColor(.red)
//
//
//                            Button(action: {
//
//                            }, label: {
//                                Image(systemName: "magnifyingglass")
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fit)
//                                    .frame(width:20,height: 20)
//                                    .foregroundColor(.red)
//
//                            })
//
//
//                            Button(action: {
//                                self.addFilter = true
//                            }, label: {
//                                Image("Filter 2")
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fit)
//                                    .frame(width: 20, height: 20)
//
//
//                            })
//
//
//
//                        }
//                        .padding(15)
//                        .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
//                        .padding(.top,20)
//                        .padding(.leading,20)
//                        .padding(.trailing,20)
                        
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
                                
                                
                                    Button(action: {
                                        self.toAddStatus = true
                                    }, label: {
                                        VStack{
                                        Image("Group 7364")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 50, height: 50)
                                        
                                        Text("Add")
                                                .foregroundColor(.white)
                                            
                                            
                                        }
                                        .padding(.leading,20)
                                    })
                                   
                                  
                               
                                
                                ForEach(0...10 , id:\.self){ index in
                                    
                                  
                                        Button(action: {
                                            self.toStatus = true
                                        }, label: {
                                            VStack{
                                            Image("Group 7365")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 50, height: 50)
                                                
                                            Text("Arsalan")
                                                    .foregroundColor(.white)
                                            }
                                            .padding(.leading,10)
                                            .padding(.trailing,10)
                                            
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
                                    .foregroundColor(AppColors.BlackColor)
                                    .padding(.trailing,150)
                                    .padding(.top,15)
                                    .padding(.bottom,15)
                                    .padding(.leading)
                                    .background(RoundedRectangle(cornerRadius: 80).strokeBorder(AppColors.BlackColor))
                                
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
                            
                            marketPlaceSreachCardsHome()
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
                                .foregroundColor(AppColors.whiteColor)
                                .padding(20)
                                .background(Circle().fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).shadow(radius: 10))
                                .padding(.trailing,20)
                                .padding(.bottom,10)
                        }
//                        .sheet(isPresented: $addItems){
//                            VStack{
//                                Spacer()
//
//
//                                Button(action: {
//                                    self.addItems = false
//                                    self.addFlowActive = true
//                                }){
//
//                                         HStack{
//                                             Image("Add post icon red")
//                                                 .padding(.trailing)
//
//                                             Text("Add post")
//                                                 .foregroundColor(AppColors.redGradientColor1)
//                                                 .font(AppFonts.medium_16)
//                                             Spacer()
//                                         }.padding()
//                                             .padding(.leading)
//                                }
//
//                                Divider()
//                                Group{
//
//                                    Button(action: {
//                                        self.addItems = false
//                                        self.toAddEvent = true
//                                    }, label: {
//                                        HStack{
//                                            Image("add event icon red")
//                                                .padding(.trailing)
//
//                                            Text("Add event")
//                                                .foregroundColor(AppColors.redGradientColor1)
//                                                .font(AppFonts.medium_16)
//                                            Spacer()
//                                        }.padding()
//                                                .padding(.leading)
//                                    })
//
//
//                                Divider()
//
//                                HStack{
//                                    Image("add car icon red")
//                                        .padding(.trailing)
//
//                                    Text("Add car")
//                                        .foregroundColor(AppColors.redGradientColor1)
//                                        .font(AppFonts.medium_16)
//                                    Spacer()
//                                }.padding()
//                                        .padding(.leading)
//
//                                Divider()
//
//                                HStack{
//                                    Image("add classified icon red")
//                                        .padding(.trailing)
//
//                                    Text("Add classified")
//                                        .foregroundColor(AppColors.redGradientColor1)
//                                        .font(AppFonts.medium_16)
//                                    Spacer()
//                                }.padding()
//                                        .padding(.leading)
//
//                                Divider()
//
//                                HStack{
//                                    Image("add club icon red")
//                                        .padding(.trailing)
//
//                                    Text("Add club")
//                                        .foregroundColor(AppColors.redGradientColor1)
//                                        .font(AppFonts.medium_16)
//                                    Spacer()
//                                }.padding()
//                                        .padding(.leading)
//                                }
//                                Divider()
//
//                                HStack{
//                                    Image("add status icon red")
//                                        .padding(.trailing)
//
//                                    Text("Add status")
//                                        .foregroundColor(AppColors.redGradientColor1)
//                                        .font(AppFonts.medium_16)
//                                    Spacer()
//                                }.padding()
//                                    .padding(.leading)
//
//                                Divider()
//
//                                Spacer()
//
//                                HStack{
//                                    Button(action: {
//                                        self.addItems = false
//                                    }, label: {
//                                        Text("Cancel")
//                                            .font(AppFonts.semiBold_16)
//                                            .fontWeight(.medium)
//                                            .foregroundColor(.white)
//                                            .frame(width: 350, height: 70)
//                                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
//                                    })
//
//
//                                }.padding()
//
//
//
//
//                            }
//
//
//
//                        }
                        
                        
                       
                    }
                }
                
                HalfASheet(isPresented: $addItems){
                    
                    VStack{
                        Group{
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
                        }
                        Group{
                            
                            Button(action: {
                                self.addItems = false
                                self.toAddEvent = true
                            }, label: {
                                HStack{
                                    Image("event icon red")
                                        .padding(.trailing)
                                    
                                    Text("Add event")
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .font(AppFonts.medium_16)
                                    Spacer()
                                }.padding()
                                        .padding(.leading)
                            })
                       
                        
                        Divider()
                        
                            
                            Button(action: {
                                self.addItems = false
                                self.toAddCar = true
                            }, label: {
                                HStack{
                                    
                                    Image("add car icon red")
                                        .padding(.trailing)
                                    
                                    Text("Add car")
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .font(AppFonts.medium_16)
                                    Spacer()
                                }.padding()
                                        .padding(.leading)
                                
                            })
                      
                            
                        Divider()
                        
                            Button(action: {
                                self.addItems = false
                                self.toAddClassified = true
                            }, label: {
                                HStack{
                                    Image("add classified icon red-1")
                                        .padding(.trailing)
                                    
                                    Text("Add classified")
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .font(AppFonts.medium_16)
                                    Spacer()
                                }.padding()
                                        .padding(.leading)
                            })
                       
                        
                        Divider()
                        
                            Button(action: {
                                self.addItems = false
                                self.toAddClub = true
                            }, label: {
                                HStack{
                                    Image("add club icon red")
                                        .padding(.trailing)
                                    
                                    Text("Add club")
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .font(AppFonts.medium_16)
                                    Spacer()
                                }.padding()
                                        .padding(.leading)
                            })
                      
                        }
                        
                        Group{
                        Divider()
                        
                        Button(action: {
                            self.addItems = false
                            self.toAddStatus = true
                        }, label: {
                            HStack{
                                Image("add club icon red")
                                    .padding(.trailing)
                                
                                Text("Add status")
                                    .foregroundColor(AppColors.redGradientColor1)
                                    .font(AppFonts.medium_16)
                                Spacer()
                            }.padding()
                                .padding(.leading)
                        })
                      
                        
                        Divider()
                        
                        Spacer()
                        
                        HStack{
                            Button(action: {
                                self.addItems = false
                            }, label: {
                                Text("Cancel")
                                    .font(AppFonts.semiBold_16)
                                    .fontWeight(.medium)
                                    .foregroundColor(AppColors.redGradientColor1)
                                    .frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*7)
                                    .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor1))
                            })
                            
                            
                        }.padding()
                        }
                        
                        
                        
                    }
                }
                .height(.proportional(0.70))
                .closeButtonColor(UIColor.white)
                .backgroundColor(UIColor.white)
                
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


struct PostsHome : View {
  
    @State private var showingSheet = false
    @State private var showingLiked = false
    @State private var isLiked : Bool = false
    
  var body: some View {
      
      VStack{
          
         
          
          HStack{
             
              NavigationLink(destination: {
                  User_Profile__Wall()
              }, label: {
                  Image("post picture")
                  
                  VStack(alignment: .leading){
                      Text("Elizebeth Smith")
                          .foregroundColor(AppColors.BlackColor)
                          .font(AppFonts.medium_14)
                          .padding(.bottom,2)
                      
                      Text("1h ago")
                          .foregroundColor(Color.gray)
                          .font(AppFonts.regular_12)
                      
                      
                  }
              })
            
              
              
              Spacer()
              
              Menu(content: {
                  Button(action: {
                      
                  }, label: {
                      Text("Remove")
                  })
              }, label: {
                  Image("doted Icons")
              })
             
              
          }.padding(.bottom,10)
          
          HStack{
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                  .font(AppFonts.regular_12)
                  .foregroundColor(Color.gray)
              Spacer()
          }
          
          Image("unsplash_gmA751dxisA")
              .resizable()
              .aspectRatio(contentMode: .fit)
          
          HStack{
              
              Button(action: {
                  self.showingLiked = true
              }, label: {
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
              })
              .sheet(isPresented: $showingLiked){
                  whoLikedScreen()
                  
              }
              Spacer()
              
              Button(action: {
                  self.showingSheet.toggle()
              }, label: {
                  Text("12 comments")
                      .font(AppFonts.regular_12)
                      .foregroundColor(Color.gray)
              })
              .sheet(isPresented: $showingSheet){
                  commentsScreen()
                  
              }
              
             
              
          }
          
          Divider()
          
          HStack{
              HStack{
                  if(self.isLiked){
                      Button(action: {
                          self.isLiked = false
                      }, label: {
                          Image("heart icon")
                              .resizable()
                              .aspectRatio(contentMode: .fit)
                              .frame(width: 16, height: 16)
                      })
                     
                  }
                  
                  if(!self.isLiked){
                      Button(action: {
                          self.isLiked = true
                      }, label: {
                          Image("Heart icon 1")
                              .resizable()
                              .aspectRatio(contentMode: .fit)
                              .frame(width: 16, height: 16)
                      })
                      
                  }
                  
                  
                  if(self.isLiked){
                      Button(action: {
                          self.isLiked = false
                      }, label: {
                          Text("Like")
                              .font(AppFonts.regular_12)
                              .foregroundColor(AppColors.redGradientColor1)
                          
                      })
                     
                  }
                  
                  if(!self.isLiked){
                      Button(action: {
                          self.isLiked = true
                      }, label: {
                          Text("Like")
                              .font(AppFonts.regular_12)
                              .foregroundColor(Color.gray)
                          
                      })
                      
                  }
                  
                  
                 
                  
              }
              
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
    
    @State private var showingLiked = false
    
    @State private var  isfollowing = false
    
    @State private var isLiked : Bool = false
  var body: some View {

      VStack{
          
          HStack{
             
              NavigationLink(destination: {
                  User_Profile__Wall()
              }, label: {
                  
                  Image("post picture")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 50, height: 50)
              })
             
              
              VStack(alignment: .leading){
                  
                  
                  HStack{
                      
                      NavigationLink(destination: {
                          User_Profile__Wall()
                      }, label: {
                          Text("Bhai Nadeem.")
                              .foregroundColor(AppColors.BlackColor)
                              .font(AppFonts.medium_14)
                      })
                      
                    
                      
                      if(!self.isfollowing){
                      Button(action: {
                          self.isfollowing = true
                      }, label: {
                          Text("Follow")
                              .font(AppFonts.medium_14)
                              .foregroundColor(.blue)
                      })
                      }
                      
                      if(self.isfollowing){
                      Button(action: {
                          self.isfollowing = false
                      }, label: {
                          Text("Following")
                              .font(AppFonts.medium_14)
                              .foregroundColor(.blue)
                      })
                      }
                     
                      
                      
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
              
              Menu(content: {
                  Button(action: {
                      
                  }, label: {
                      Text("Remove")
                  })
              }, label: {
                  Image("doted Icons")
              })
            
              
          }.padding(.bottom,10)
          
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
              .font(AppFonts.regular_14)
              .foregroundColor(Color.gray)
          
          ZStack{
            
              Image("Event cards pic")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: UIScreen.screenWidth - 40)
              
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
                          .background(RoundedRectangle(cornerRadius: 50).fill(.white).frame(width: 50, height: 30))
                      
                  
                      Spacer()
                      
                      Button(action: {
                         
                      }){
                          VStack{
                              Text("Register")
                                  .font(AppFonts.regular_14)
                                  .foregroundColor(.white)
                                  .background(RoundedRectangle(cornerRadius: 50).fill((LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))).frame(width: 100, height: 30))
                          }
                      }
                     
                    
                  }.padding(.trailing,20)
                      .padding(.leading,30)
                      .padding(.top,20)
                      .padding(.bottom,10)
                  
              }
              .padding(20)
              
              
           
              
            
              
          }.frame(width: UIScreen.screenWidth - 40)
              
          
          HStack{
              
              Button(action: {
                  self.showingLiked = true
              }, label: {
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
              })
              .sheet(isPresented: $showingLiked){
                  whoLikedScreen()
                  
              }
             
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
                  if(self.isLiked){
                      Button(action: {
                          self.isLiked = false
                      }, label: {
                          Image("heart icon")
                              .resizable()
                              .aspectRatio(contentMode: .fit)
                              .frame(width: 16, height: 16)
                      })
                     
                  }
                  
                  if(!self.isLiked){
                      Button(action: {
                          self.isLiked = true
                      }, label: {
                          Image("Heart icon 1")
                              .resizable()
                              .aspectRatio(contentMode: .fit)
                              .frame(width: 16, height: 16)
                      })
                      
                  }
                  
                  
                  if(self.isLiked){
                      Button(action: {
                          self.isLiked = false
                      }, label: {
                          Text("Like")
                              .font(AppFonts.regular_12)
                              .foregroundColor(AppColors.redGradientColor1)
                          
                      })
                     
                  }
                  
                  if(!self.isLiked){
                      Button(action: {
                          self.isLiked = true
                      }, label: {
                          Text("Like")
                              .font(AppFonts.regular_12)
                              .foregroundColor(Color.gray)
                          
                      })
                      
                  }
                  
                  
                 
                  
              }
              
            
            
              
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
    
    @State private var showingSheet = false
    @State private var showingLiked = false
    
    @State private var  isfollowing = false
    
    @State private var isLiked : Bool = false
    
    var body: some View {
        
       
            VStack{
                
                HStack{
                   
                    NavigationLink(destination: {
                        User_Profile__Wall()
                    }, label: {
                        Image("post picture")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                    })
                   
                    
                    VStack(alignment: .leading){
                        
                        HStack{
                            
                            NavigationLink(destination: {
                                User_Profile__Wall()
                            }, label: {
                                Text("Rana Sahahbaz.")
                                    .foregroundColor(AppColors.BlackColor)
                                    .font(AppFonts.medium_14)
                            })
                          
                            
                            if(!self.isfollowing){
                            Button(action: {
                                self.isfollowing = true
                            }, label: {
                                Text("Follow")
                                    .font(AppFonts.medium_14)
                                    .foregroundColor(.blue)
                            })
                            }
                            
                            if(self.isfollowing){
                            Button(action: {
                                self.isfollowing = false
                            }, label: {
                                Text("Following")
                                    .font(AppFonts.medium_14)
                                    .foregroundColor(.blue)
                            })
                            }
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
                    
                    Menu(content: {
                        Button(action: {
                            
                        }, label: {
                            Text("Remove")
                        })
                    }, label: {
                        Image("doted Icons")
                    })
                    
                }.padding(.bottom,10)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                    .font(AppFonts.regular_14)
                    .foregroundColor(Color.gray)
                
                NavigationLink(destination: {
                    Club_details_member_view_Screen()
                }, label: {
                    ZStack(alignment: .top){
                        
                        
                        
                        Image("unsplash_gmA751dxisA-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.screenWidth - 40)
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
                                .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.screenWidth - 40, height: UIScreen.heightBlockSize*6))
                              
                            
                            
                            
                        }.padding(.top)
                        
                        
                        
                    }
                    
                    .cornerRadius(10)
                    .padding(.top)
                })
               
                
                HStack{
                    
                    Button(action: {
                        self.showingLiked = true
                    }, label: {
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
                    })
                    .sheet(isPresented: $showingLiked){
                        whoLikedScreen()
                        
                    }
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
                        if(self.isLiked){
                            Button(action: {
                                self.isLiked = false
                            }, label: {
                                Image("heart icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 16, height: 16)
                            })
                           
                        }
                        
                        if(!self.isLiked){
                            Button(action: {
                                self.isLiked = true
                            }, label: {
                                Image("Heart icon 1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 16, height: 16)
                            })
                            
                        }
                        
                        
                        if(self.isLiked){
                            Button(action: {
                                self.isLiked = false
                            }, label: {
                                Text("Like")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(AppColors.redGradientColor1)
                                
                            })
                           
                        }
                        
                        if(!self.isLiked){
                            Button(action: {
                                self.isLiked = true
                            }, label: {
                                Text("Like")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(Color.gray)
                                
                            })
                            
                        }
                        
                        
                       
                        
                    }
                    
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
    
    @State private var  isfollowing = false
    
    @State private var showingSheet = false
    @State private var showingLiked = false
   
    @State private var isLiked : Bool = false
    
    var body: some View {
       
        VStack{
            
            HStack{
               
                NavigationLink(destination: {
                    User_Profile__Wall()
                }, label: {
                    Image("post picture")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                })
               
                
                VStack(alignment: .leading){
                    
                    HStack{
                        
                        NavigationLink(destination: {
                            User_Profile__Wall()
                        }, label: {
                            Text("Ustad Hashim Khan.")
                                .foregroundColor(AppColors.BlackColor)
                                .font(AppFonts.medium_14)
                        })
                        
                        
                        if(!self.isfollowing){
                        Button(action: {
                            self.isfollowing = true
                        }, label: {
                            Text("Follow")
                                .font(AppFonts.medium_14)
                                .foregroundColor(.blue)
                        })
                        }
                        
                        if(self.isfollowing){
                        Button(action: {
                            self.isfollowing = false
                        }, label: {
                            Text("Following")
                                .font(AppFonts.medium_14)
                                .foregroundColor(.blue)
                        })
                        }
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
                
                Menu(content: {
                    Button(action: {
                        
                    }, label: {
                        Text("Remove")
                    })
                }, label: {
                    Image("doted Icons")
                })
                
            }.padding(.bottom,10)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .font(AppFonts.regular_14)
                .foregroundColor(Color.gray)
            
            ZStack(alignment: .top){
                Image("Rectangle 1265")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.screenWidth - 40)
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
                    
                    Spacer()
                    
                    HStack{
                        Text("$500")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.white)
                            .padding(10)
                            .padding(.leading,10)
                            .padding(.trailing,10)
                            .background(RoundedRectangle(cornerRadius: 50).fill(.gray).frame(width: 50, height: 30))
                            
                           
                        
                        Spacer()
                       
                        
                        NavigationLink(destination: {
                            Classified_Spare_Parts_Screen()
                        }, label: {
                            Text("Purchase")
                                .font(AppFonts.regular_14)
                                .foregroundColor(.white)
                                .padding(10)
                                .padding(.leading,30)
                                .padding(.trailing,30)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: 100, height: 30))
                                
                        
                      
                        })
                        .padding(.trailing)
                          
                           
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                    
                   
                    
                  
                   
                }
                
            }
            .frame(width: UIScreen.screenWidth - 40)
            
            HStack{
                
                Button(action: {
                    self.showingLiked = true
                }, label: {
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
                })
                .sheet(isPresented: $showingLiked){
                    whoLikedScreen()
                    
                }
                
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
                    if(self.isLiked){
                        Button(action: {
                            self.isLiked = false
                        }, label: {
                            Image("heart icon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16, height: 16)
                        })
                       
                    }
                    
                    if(!self.isLiked){
                        Button(action: {
                            self.isLiked = true
                        }, label: {
                            Image("Heart icon 1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16, height: 16)
                        })
                        
                    }
                    
                    
                    if(self.isLiked){
                        Button(action: {
                            self.isLiked = false
                        }, label: {
                            Text("Like")
                                .font(AppFonts.regular_12)
                                .foregroundColor(AppColors.redGradientColor1)
                            
                        })
                       
                    }
                    
                    if(!self.isLiked){
                        Button(action: {
                            self.isLiked = true
                        }, label: {
                            Text("Like")
                                .font(AppFonts.regular_12)
                                .foregroundColor(Color.gray)
                            
                        })
                        
                    }
                    
                    
                   
                    
                }
                
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
            
        }.padding()

    }
}

struct commentsScreen : View{
    @State private var comment = ""
    var body: some View{
       
        VStack{
           
            HStack{
                Text("Comments")
                    .foregroundColor(AppColors.BlackColor)
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
                        .foregroundColor(AppColors.BlackColor)
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
                    .foregroundColor(AppColors.BlackColor)
                    .font(AppFonts.semiBold_12)
                    .padding(.bottom,2)
                
                Text("Lorem ipsum dolor sit amet, consecteturhb hiu uhpuhiuhpiuhhuh adipiscing elit.")
                    .foregroundColor(AppColors.BlackColor)
                    .font(AppFonts.regular_12)
                    
            }
            Spacer()
        }.padding(.leading)
            .padding(.trailing)
        
        HStack{
            Spacer()
            
            Image("heart icon")
               
            
            Text("Like")
                .foregroundColor(AppColors.BlackColor)
                .font(AppFonts.regular_12)
                .padding(.trailing)
            
            Image("bi_reply-fill")
             
            
            Text("Reply")
                .foregroundColor(AppColors.BlackColor)
                .font(AppFonts.regular_12)
            
            
        }
        .padding(.leading)
        .padding(.trailing)
        
        Divider().padding()
    }
}



