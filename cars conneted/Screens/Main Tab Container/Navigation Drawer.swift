//
//  Navigation Drawer.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 11/01/2023.
//

import SwiftUI


struct NavigationDrawer: View {
    
    
    @Binding var isDrawerOpen : Bool
    
    @State var drawerOffset : CGFloat = -(UIScreen.widthBlockSize*70)
    @State var isDraging : Bool = false
    let mainTabContainer : MainTabContainer
    
    @State var ordersScreenActive : Bool = false
    @State var bookingsScreenActive : Bool = false
    @State var eventsScreenActive : Bool = false
    @State var requestsScreenActive : Bool = false
    @State var savedScreenActive : Bool = false
    @State var blogsScreenActive : Bool = false
    @State var isLogoutScreenActive : Bool = false
    @State var toLoginScreen = false
    
    @State var tempDrawWidth : CGFloat = 0.0
    
    init(isDrawerOpen : Binding<Bool> ,mainTabContainer : MainTabContainer ){
        self._isDrawerOpen = isDrawerOpen
        
        self.mainTabContainer = mainTabContainer
    }
    
    var drag: some Gesture {
        DragGesture()
            .onChanged { value in
                self.isDraging = true
                if(self.isDrawerOpen){
                    if(value.translation.width < 0){
                        self.drawerOffset = value.translation.width
                    }
                }
                else{
                    if((value.translation.width > 0) && (value.translation.width < (UIScreen.widthBlockSize*70))){
                        self.drawerOffset = value.translation.width - (UIScreen.widthBlockSize*70)
                    }
                }
            }
            .onEnded { value in
                self.isDraging = false
                if(self.isDrawerOpen){
                    if(value.translation.width < -70){
                        self.isDrawerOpen = false
                        self.drawerOffset = -(UIScreen.widthBlockSize*70)
                    }
                    else {
                        self.isDrawerOpen = true
                        self.drawerOffset = 0
                    }
                }
                else{
                    if(value.translation.width > 70){
                        self.isDrawerOpen = true
                        self.drawerOffset = 0
                    }
                    else{
                        self.isDrawerOpen = false
                        self.drawerOffset = -(UIScreen.widthBlockSize*70)
                    }
                }
            }
    }
    
    
    var body: some View {
        
        //MARK: Navigation Drawer View Code
        
        if(self.isDrawerOpen){
            HStack{
                Spacer()
                VStack{
                    Color.white.opacity(0.01)
                }
                .frame(width: UIScreen.widthBlockSize*30)
                .onTapGesture(perform: {
                    self.isDrawerOpen = false
                    self.drawerOffset = -(UIScreen.widthBlockSize*70)
                })
            }
        }
        
        HStack{
            VStack{
                VStack(alignment: .leading){
                    
                    NavigationLink(destination: Login_Screen(), isActive: self.$toLoginScreen){
                        
                        EmptyView()
                        
                    }
                    
                    // top header
                    Group{
                        HStack{
                            
                            ZStack{
                                Image("unsplash_OhKElOkQ3RE")
                                    .resizable()
                                    .aspectRatio( contentMode: .fill)
                                    .frame(width: 80, height: 80)
                                    .shadow(radius: 0, x: 0, y: 0)
                                    .clipShape(Circle())
                                    .padding(3)
                                    .background(Color.white.clipShape(Circle()))
                                
                                Text("Basic")
                                    .foregroundColor(AppColors.redGradientColor1)
                                    .font(AppFonts.regular_12)
                                    .background(RoundedRectangle(cornerRadius: 100).fill(.white).frame(width: 34, height: 34))
                                    .offset(x:28, y:30)
                            }
                            
                            Spacer()
                            
                            VStack{
                                HStack{
                                    Text("Hashim")
                                        .font(AppFonts.medium_20)
                                        .foregroundColor(.white)
                                        .lineLimit(1)
                                    Text("Khan")
                                        .font(AppFonts.medium_20)
                                        .foregroundColor(.white)
                                        .lineLimit(1)
                                    Spacer()
                                }.padding(.bottom,5)
                                
                                HStack{
                                    Text("jhonsmith@gmail.com")
                                        .foregroundColor(.white)
                                        .font(AppFonts.regular_12)
                                        .lineLimit(1)
                                    Spacer()
                                }.padding(.bottom,5)
                                
                                NavigationLink(destination: {
                                    My_Plan_screen()
                                }, label: {
                                    HStack{
                                        Text("Update to Premium")
                                            .foregroundColor(.yellow)
                                            .font(AppFonts.regular_12)
                                            .lineLimit(1)
                                        Spacer()
                                    }.padding(.bottom,5)
                                })
                                
                                
                            }.padding(.leading,5)
                            
                        }
                        .padding(.top,5)
                        
                    }
                    
                    
                    // drawer buttons
                    Group{
                        // home button group
                        
                        Group{
                            
                            Spacer()
                            
                            // home button
                            Button(action: {
                                withAnimation{
                                    self.mainTabContainer.selectedIndex = 0
                                    self.isDrawerOpen = false
                                    self.drawerOffset = -(UIScreen.widthBlockSize*70)
                                }
                            }){
                                
                                
                                HStack{
                                    Image("Home icon")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                    
                                    Text("Home")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(.white)
                                        .padding(.leading,5)
                                }
                                
                                
                            }
                        }
                        
                        // requests button group
                        Group{
                            Spacer()
                            
                            //                            NavigationLink(destination:RequestScreen(isFlowRootActive: self.$requestsScreenActive),isActive : self.$requestsScreenActive){
                            
                            NavigationLink(destination: {
                                Dashboard_Screen()
                            }, label: {
                                HStack{
                                    Image("Dashboard icon")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                    
                                    Text("Dashboard")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(.white)
                                        .padding(.leading,5)
                                }
                                
                            })
                            
                            
                            //  }
                            
                        }
                        
                        // Messages button group
                        Group{
                            Spacer()
                            Button(action: {
                                withAnimation{
                                    self.mainTabContainer.selectedIndex = 4
                                    self.isDrawerOpen = false
                                    self.drawerOffset = -(UIScreen.widthBlockSize*70)
                                }
                            }){
                                
                                HStack{
                                    Image("message icon white")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                    
                                    Text("Messages")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(.white)
                                        .padding(.leading,5)
                                        .padding(.trailing,5)
                                    
                                    
                                }
                                
                                
                            }
                        }
                        
                        // Orders button group
                        Group{
                            Spacer()
                            NavigationLink(destination: Friends_Requests_Screens() ){
                                HStack{
                                    Image("fa-solid_user-friends")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                    
                                    Text("Friends")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(.white)
                                        .padding(.leading,5)
                                        .padding(.trailing,5)
                                    
                                    
                                }
                                
                            }
                        }
                        
                        // Events button group
                        Group{
                            
                            Spacer()
                            
                            //                            NavigationLink(destination: EventsScreen(isFlowRootActive: self.$eventsScreenActive) , isActive: self.$eventsScreenActive){
                            NavigationLink(destination: {
                                My_Garage_My_View()
                            }, label: {
                                HStack{
                                    Image("my garage icon white")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                    
                                    Text("My Garage")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(.white)
                                        .padding(.leading,5)
                                }
                                
                            })
                            
                            
                            //    }
                            
                        }
                        
                        // Booking  button group
                        Group{
                            
                            Spacer()
                            
                            //                            NavigationLink(destination: BookingScreen(isFlowRootActive: self.$bookingsScreenActive), isActive : self.$bookingsScreenActive){
                            
                            NavigationLink(destination: {
                                MyShopListsScreen()
                            }, label: {
                                HStack{
                                    Image("my classified icon white")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                    
                                    Text("My Shops")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(.white)
                                        .padding(.leading,5)
                                }
                            })
                            
                            
                            
                            
                            //   }
                        }
                        
                        // Saved  button group
                        Group{
                            Spacer()
                            
                            //                            NavigationLink(destination:SavedScreen(isFlowRootActive: self.$savedScreenActive),isActive: self.$savedScreenActive){
                            
                            Button(action: {
                                withAnimation{
                                    self.mainTabContainer.selectedIndex = 2
                                    self.isDrawerOpen = false
                                    self.drawerOffset = -(UIScreen.widthBlockSize*70)
                                }
                            }){
                                
                                HStack{
                                    Image("my events icon white")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                    
                                    Text("My Events")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(.white)
                                        .padding(.leading,5)
                                }
                                
                            }
                            
                            
                            
                            //    }
                            
                        }
                        
                        // Blog  button group
                        Group{
                            
                            Spacer()
                            
                            //                            NavigationLink(destination:BlogsScreen(isFlowRootActive: self.$blogsScreenActive),isActive:self.$blogsScreenActive){
                            //
                            
                            NavigationLink(destination: {
                                My_Clubs_screens()
                            }, label: {
                                HStack{
                                    
                                    
                                    Image("my clubs icon white")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                    
                                    Text("My Clubs")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(.white)
                                        .padding(.leading,5)
                                }
                                
                            })
                            
                            
                            
                            //   }
                            
                        }
                        
                        // saved items
                        Group{
                            Spacer()
                            Button(action: {
                                withAnimation{
                                    self.isDrawerOpen = false
                                    self.drawerOffset = -(UIScreen.widthBlockSize*70)
                                }
                            }){
                                NavigationLink(destination: {
                                    SavedItemsScreen()
                                }, label: {
                                    HStack{
                                        Image("Combined-Shape")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 24, height: 24)
                                        
                                        Text("Saved Items")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.white)
                                            .padding(.leading,5)
                                        
                                    }
                                })
                                
                            }
                        }
                        
                        
                        
                        
                        Group{
                            // Settings  button group
                            Group{
                                Spacer()
                                Button(action: {
                                    withAnimation{
                                        self.mainTabContainer.selectedIndex = 4
                                        self.isDrawerOpen = false
                                        self.drawerOffset = -(UIScreen.widthBlockSize*70)
                                    }
                                }){
                                    NavigationLink(destination: {
                                        Transcation_history_Screen()
                                    }, label: {
                                        HStack{
                                            Image("transactions icon white")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 24, height: 24)
                                            
                                            Text("Transactions")
                                                .font(AppFonts.regular_16)
                                                .foregroundColor(.white)
                                                .padding(.leading,5)
                                            
                                        }
                                    })
                                    
                                }
                            }
                            
                            Group{
                                // Settings  button group
                                Group{
                                    Spacer()
                                    Button(action: {
                                        withAnimation{
                                            self.mainTabContainer.selectedIndex = 4
                                            self.isDrawerOpen = false
                                            self.drawerOffset = -(UIScreen.widthBlockSize*70)
                                        }
                                    }){
                                        
                                        NavigationLink(destination: {
                                            My_Plan_screen()
                                        }, label: {
                                            HStack{
                                                Image("membership icon white")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 24, height: 24)
                                                
                                                Text("Membership")
                                                    .font(AppFonts.regular_16)
                                                    .foregroundColor(.white)
                                                    .padding(.leading,5)
                                            }
                                            
                                        })
                                        
                                    }
                                }
                                
                                
                                Group{
                                    Spacer()
                                    Button(action: {
                                        withAnimation{
                                            self.mainTabContainer.selectedIndex = 4
                                            self.isDrawerOpen = false
                                            self.drawerOffset = -(UIScreen.widthBlockSize*70)
                                        }
                                    }){
                                        
                                        NavigationLink(destination: {
                                            Setting_Screen()
                                        }, label: {
                                            HStack{
                                                Image("Setting icon white")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 24, height: 24)
                                                
                                                Text("Setting")
                                                    .font(AppFonts.regular_16)
                                                    .foregroundColor(.white)
                                                    .padding(.leading,5)
                                            }
                                            
                                        })
                                        
                                    }
                                }
                                
                                
                                Group{
                                    Spacer()
                                    Button(action: {
                                        withAnimation{
                                            self.mainTabContainer.selectedIndex = 4
                                            self.isDrawerOpen = false
                                            self.drawerOffset = -(UIScreen.widthBlockSize*70)
                                            AppData().logoutTheUser()
                                            self.toLoginScreen = true
                                        }
                                    }){
                                        
                                        
                                        HStack{
                                            Image("Logout icon white")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 24, height: 24)
                                            
                                            Text("Logout")
                                                .font(AppFonts.regular_16)
                                                .foregroundColor(.white)
                                                .padding(.leading,5)
                                        }.padding(.bottom,30)
                                        
                                        
                                    }
                                }
                                
                            }
                        }
                        
                    }
                    
                    
                    
                    
                }
                .padding(.leading,30)
                .padding(.trailing,20)
                .padding(.top,(UIApplication.shared.windows.first?.safeAreaInsets.top ?? 30)+20)
            }
            .frame(width: UIScreen.widthBlockSize*70)
            .background(RoundedCorners(tl: 0, tr: 30, bl: 0, br: 30)
                .fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2],
                                     startPoint: .bottomLeading,
                                     endPoint: .topTrailing))
                    .shadow(radius: (self.isDrawerOpen || self.isDraging) ? 30 : 0, x: (self.isDrawerOpen || self.isDraging) ? 50 : 0))
            .offset(x : self.isDraging ? self.drawerOffset : self.isDrawerOpen ? 0 : self.drawerOffset)
            .animation(.default)
            
            Spacer()
        }
        .gesture(drag)
        
    }
}
