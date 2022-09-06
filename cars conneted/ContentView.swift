//
//  ContentView.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoggedIn : Bool = false
  
    var body: some View {
        
        NavigationView{
            ZStack{
                
                Onboarding_1_Screen()
          
                
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationViewStyle(.stack)
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

extension UIScreen{
  static let screenWidth = UIScreen.main.bounds.size.width
  static let widthBlockSize = (UIScreen.main.bounds.size.width/100)
  static let screenHeight = UIScreen.main.bounds.size.height
  static let heightBlockSize = (UIScreen.main.bounds.size.height/100)
  static let screenSize = UIScreen.main.bounds.size
}


struct RoundedCorners: Shape {
  var tl: CGFloat = 0.0
  var tr: CGFloat = 0.0
  var bl: CGFloat = 0.0
  var br: CGFloat = 0.0
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let w = rect.size.width
    let h = rect.size.height
    // Make sure we do not exceed the size of the rectangle
    let tr = min(min(self.tr, h/2), w/2)
    let tl = min(min(self.tl, h/2), w/2)
    let bl = min(min(self.bl, h/2), w/2)
    let br = min(min(self.br, h/2), w/2)
    path.move(to: CGPoint(x: w / 2.0, y: 0))
    path.addLine(to: CGPoint(x: w - tr, y: 0))
    path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr,
          startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
    path.addLine(to: CGPoint(x: w, y: h - br))
    path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br,
          startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
    path.addLine(to: CGPoint(x: bl, y: h))
    path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl,
          startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
    path.addLine(to: CGPoint(x: 0, y: tl))
    path.addArc(center: CGPoint(x: tl, y: tl), radius: tl,
          startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
    path.closeSubpath()
    return path
  }
}



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
                                
                                HStack{
                                    Text("Update to Premium")
                                        .foregroundColor(.yellow)
                                        .font(AppFonts.regular_12)
                                        .lineLimit(1)
                                    Spacer()
                                }.padding(.bottom,5)
                          
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
                                
                                NavigationLink(destination: {
                                   MainTabContainer()
                                }, label: {
                                    HStack{
                                        Image("Home icon")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 30)
                                        
                                        Text("Home")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.white)
                                            .padding(.leading,5)
                                    }
                                })
                               
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
                                        .frame(width: 30, height: 30)
                                    
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
                                    self.mainTabContainer.selectedIndex = 3
                                    self.isDrawerOpen = false
                                    self.drawerOffset = -(UIScreen.widthBlockSize*70)
                                }
                            }){
                                NavigationLink(destination: MessagesTab(isDrawerOpen: $isDrawerOpen), label: {
                                    HStack{
                                        Image("message icon white")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 30)
                                        
                                        Text("Messages")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.white)
                                            .padding(.leading,5)
                                            .padding(.trailing,5)
                                        
                                        
                                    }
                                })
                               
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
                                        .frame(width: 30, height: 30)
                                    
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
                                        .frame(width: 30, height: 30)
                                    
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
                                
                            
                                HStack{
                                    Image("my classified icon white")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                    
                                    Text("My Classifieds")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(.white)
                                        .padding(.leading,5)
                                }
                               
                                
                         //   }
                        }
                        
                        // Saved  button group
                        Group{
                            Spacer()
                            
//                            NavigationLink(destination:SavedScreen(isFlowRootActive: self.$savedScreenActive),isActive: self.$savedScreenActive){
                                
                            
                            NavigationLink(destination: {
                                Events_Screen(isDrawerOpen: $isDrawerOpen)
                            }, label: {
                                HStack{
                                    Image("my events icon white")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                    
                                    Text("My Events")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(.white)
                                        .padding(.leading,5)
                                }
                               
                            })
                               
                                
                                
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
                                            .frame(width: 30, height: 30)
                                        
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
                                            .frame(width: 30, height: 30)
                                        
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
                                            .frame(width: 30, height: 30)
                                        
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
                                }
                            }){
                                
                                NavigationLink(destination: Login_Screen(), label: {
                                    HStack{
                                        Image("Logout icon white")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 30)
                                        
                                        Text("Logout")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.white)
                                            .padding(.leading,5)
                                    }.padding(.bottom)
                                       
                                })
                              
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








