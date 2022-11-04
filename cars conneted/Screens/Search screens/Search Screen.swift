//
//  Search Clubs.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/07/2022.
//

import SwiftUI

struct Search_Screen: View {
    @State private var searchText = ""
    @Environment(\.presentationMode) var presentaionMode
    @State var isSelected: Int = 0
    
   
    
    @State var distanceValue : Int = 100
    
    @State private var addFilter  = false
    
    @State private var selectType = ""
    
    @State private var searchTextFilter  = ""
    
    @State private var toSearch  = false
    
    
   
    var body: some View {
        ZStack{
            
            VStack{
                
                VStack(spacing:0){
                    
                    HStack{
                        
                        Button(action: {
                            self.presentaionMode.wrappedValue.dismiss()
                        }, label: {
                            Image("back icon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                                
                        })
                       
                        
                        HStack{
                            
                            TextField("Search",text: self.$searchText)
                                .foregroundColor(.red)
                                .font(AppFonts.regular_14)
                            
                            
                            NavigationLink(destination: Search_Screen(), label: {
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:20,height: 20)
                                    .foregroundColor(.red)
                            })
                            
                            Button(action: {
                                self.addFilter = true
                            }, label: {
                                Image("Filter 2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                               
                                   
                            })

                           
                            
                            
                            
                            
                            
                        } .padding(15)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                            
                    }
                    .padding(.top,10)
                    
                    
                    
                }
                .padding()
                    .padding(.top,40)
                    .background(
                        Image("home screen background")
                            .resizable()
                    )
                   
                
                
                
                HStack{
                    
                    
                    
                    
                    VStack{
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                
                                Button(action: {
                                    self.isSelected = 0
                                }, label: {
                                    Text("People")
                                        .font(AppFonts.medium_14)
                                        .foregroundColor(self.isSelected == 0 ? .red : .gray)
                                })
                                
                                Spacer()
                                
                                Button(action: {
                                    self.isSelected = 1
                                }, label: {
                                    Text("Posts")
                                        .font(AppFonts.medium_14)
                                        .foregroundColor(self.isSelected == 1 ? .red : .gray)
                                })
                                
                                Spacer()
                                
                                Button(action: {
                                    self.isSelected = 2
                                }, label: {
                                    Text("Events")
                                        .font(AppFonts.medium_14)
                                        .foregroundColor(self.isSelected == 2 ? .red : .gray)
                                })
                                
                                Spacer()
                                
                                Button(action: {
                                    self.isSelected = 3
                                }, label: {
                                    Text("Clubs")
                                        .font(AppFonts.medium_14)
                                        .foregroundColor(self.isSelected == 3 ? .red : .gray)
                                })
                                
                                Button(action: {
                                    self.isSelected = 4
                                }, label: {
                                    Text("Classified")
                                        .font(AppFonts.medium_14)
                                        .foregroundColor(self.isSelected == 4 ? .red : .gray)
                                })
                                
                            }
                        }
                        Divider()
                            .padding(.top,10)
                        
                    }.padding(.top,5)
                        .padding()
                        .padding(.bottom,-20)
                    
                    
                }
                
                if(self.isSelected == 0){
                ScrollView(showsIndicators: false){
                    
                    LazyVStack{
                        ForEach(0...10 , id:\.self){ index in
                            PeopleCard()
                
                }
               
                
                    }
            }
                }
                
                if(self.isSelected == 1){
                ScrollView(showsIndicators: false){
                    
                    LazyVStack{
                        ForEach(0...10 , id:\.self){ index in
                            PostsHome()
                
                }
               
                
                    }
            }
                }
                
                if(self.isSelected == 2 ){
                ScrollView(showsIndicators: false){
                    
                    LazyVStack{
                        ForEach(0...10 , id:\.self){ index in
                            EventCard()
                
                }
               
                
                    }
            }
                }
                
                if(self.isSelected == 3){
                ScrollView(showsIndicators: false){
                    
                    LazyVStack{
                        ForEach(0...10 , id:\.self){ index in
                            ClubCard()
                
                }
               
                
                    }
            }
                }
                
                if(self.isSelected == 4){
                ScrollView(showsIndicators: false){
                    
                    LazyVStack{
                        ForEach(0...10 , id:\.self){ index in
                            marketPlaceSreachCardsHome()
                
                }
               
                
                    }
            }
                }
                
                
                
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
            }
            .height(.proportional(0.60))
            .closeButtonColor(UIColor.gray)
            .backgroundColor(UIColor.white)
            
            
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct Search_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Search_Screen()
    }
}

struct ClubCard : View {
  
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
              Text("Leave")
                  .font(AppFonts.medium_12)
                  .foregroundColor(.red)
                  .padding(10)
                  .padding(.leading,5)
                  .padding(.trailing,5)
                  .background(RoundedRectangle(cornerRadius: 5).fill(AppColors.redGradientColor1.opacity(0.2)))
          })
         
      }
      .padding()
      .background(RoundedRectangle(cornerRadius: 10).fill(AppColors.redGradientColor1).opacity(0.03))
      .padding(.leading,15)
      .padding(.trailing,15)
      .padding(.top,5)
  }
}

struct PeopleCard : View {
    
    @State var isFollow = true
   
  
  var body: some View {
      
      HStack{
          
          NavigationLink(destination: User_Profile__Wall(), label: {
              Image("Ellipse 33").padding(.trailing,10)
              VStack(alignment: .leading){
                  Text("Jason Statham")
                      .foregroundColor(.black)
                      .font(AppFonts.regular_14)
                      .padding(.bottom,1)
                  
                  Text("@jason123")
                      .foregroundColor(.black)
                      .font(AppFonts.regular_12)
                      .padding(.bottom,1)
                  
                  Text("Followed by Eminem12")
                      .foregroundColor(.black)
                      .font(AppFonts.regular_10)
                      .foregroundColor(.gray)
                      
              
              }
          })
             
          
         
          Spacer()
          
          if(self.isFollow){
          Button(action: {
              self.isFollow = false
          }, label: {
              
              Text("Follow")
                  .font(AppFonts.medium_12)
                  .foregroundColor(.white)
                  .background(RoundedRectangle(cornerRadius: 5).fill((LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))).frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*5))
                  .padding()
          })
          }
          
          if (!self.isFollow){
          Button(action: {
              self.isFollow = true
          }, label: {
              Text("Following")
                  .font(AppFonts.medium_12)
                  .foregroundColor(AppColors.redGradientColor1)
                  .background(RoundedRectangle(cornerRadius: 5).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*5))
                  .padding()
          })
          }
          
          
         
          
      }.padding()
          .padding(.trailing)
      Image("Line 7")
  }
}

struct PostCard : View {
    
  
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

struct EventCard : View {
    
    var body: some View {
        ZStack{
          
            Image("Event cards pic")
                .resizable()
               
            
          
            
            VStack(alignment: .leading){
                HStack{
                    Spacer()
                    Image("bookmark small")
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
                    Spacer()
                    
                    NavigationLink(destination: {
                        Event_Details_Other_Events()
                    }, label: {
                        VStack{
                            Text("Register")
                                .font(AppFonts.regular_14)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius: 50).fill((LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))).frame(width: UIScreen.widthBlockSize*40, height: 45))
                        }
                        
                    })
                        
                       
                    
                   
                  
                }.padding(.trailing,50)
                    .padding(.leading,30)
                    .padding(.top,20)
                    .padding(.bottom,10)
                
            }
            .padding(20)
            
            
         
            
          
            
        }
            .frame(height:280)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,10)
            .padding(.top,5)
           
    }
}
