//
//  Home screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/07/2022.
//

import SwiftUI

struct HomeTab: View {
    @State private var searchText = ""

    var body: some View {
        
            ZStack{
                
                VStack{
                    
                    VStack{
                        
                        // top bar
                        HStack{
                            Image("side menu icon white")
                            Spacer()
                            
                            Text("Home")
                                .font(.title)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Image("profile icon home")
                            
                            
                        }.padding(.leading,24)
                            .padding(.trailing,24)
                            .padding(.top,20)
                        
                        // search bar
                        HStack{
                            
                            TextField("Search",text: self.$searchText)
                                .foregroundColor(.red)
                            
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:20,height: 20)
                                .foregroundColor(.red)
                            
                            
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
                                
                                VStack{
                                    Image("Group 7364")
                                    Text("Add")
                                        .foregroundColor(.white)
                                  
                                }
                                .padding(.leading,20)
                                
                                ForEach(0...10 , id:\.self){ index in
                                    VStack{
                                        Image("Group 7365")
                                        Text("Arsalan")
                                            .foregroundColor(.white)
                                        
                                    }
                                    .padding(.leading,20)
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
                 
                    ScrollView{
                    VStack{
                        
                        HStack{
                           
                            Image("post picture")
                            
                            VStack(alignment: .leading){
                                Text("Elizebeth Smith")
                                Text("1h ago")
                                    .foregroundColor(Color.gray)
                                
                                
                            }
                            Spacer()
                            
                            Image("doted Icons")
                            
                        }.padding(.bottom,10)
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                        
                        Image("unsplash_gmA751dxisA")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        HStack{
                            
                            Image("Group 7370")
                            
                            Text("Arsalan and 20 other")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                            
                            Spacer()
                            
                            Text("12 comments")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                            
                        }
                        
                        Image("Line 2")
                        
                        HStack{
                            HStack{
                                Image("heart icon")
                                Text("Like")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.gray)
                                
                                
                            }
                            
                            Spacer()
                            HStack{
                                Image("ant-design_comment-outlined")
                                Text("Comment")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.gray)
                                
                            }
                            Spacer()
                            HStack{
                                Image("ion_share-social-sharp")
                                Text("Share")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.gray)
                            }
                            Spacer()
                            HStack{
                                Image("Icons")
                                Text("Save")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.gray)
                            }
                            
                            
                        }
                        
                        Image("Line 2")
                        
                            
                        
                        
                    }.padding(.bottom,20)
                        .padding(.leading,20)
                        .padding(.trailing,20)
                        .padding(.top,20)
                  
                        VStack{
                            
                            HStack{
                               
                                Image("post picture")
                                
                                VStack(alignment: .leading){
                                    Text("Elizebeth Smith")
                                    Text("1h ago")
                                        .foregroundColor(Color.gray)
                                    
                                    
                                }
                                Spacer()
                                
                                Image("doted Icons")
                                
                            }.padding(.bottom,10)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                            
                            Image("unsplash_gmA751dxisA")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            HStack{
                                
                                Image("Group 7370")
                                
                                Text("Arsalan and 20 other")
                                    .font(.subheadline)
                                    .foregroundColor(Color.gray)
                                
                                Spacer()
                                
                                Text("12 comments")
                                    .font(.subheadline)
                                    .foregroundColor(Color.gray)
                                
                            }
                            
                            Image("Line 2")
                            
                            HStack{
                                HStack{
                                    Image("heart icon")
                                    Text("Like")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.gray)
                                    
                                    
                                }
                                
                                Spacer()
                                HStack{
                                    Image("ant-design_comment-outlined")
                                    Text("Comment")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.gray)
                                    
                                }
                                Spacer()
                                HStack{
                                    Image("ion_share-social-sharp")
                                    Text("Share")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.gray)
                                }
                                Spacer()
                                HStack{
                                    Image("Icons")
                                    Text("Save")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.gray)
                                }
                                
                                
                            }
                            
                            Image("Line 2")
                            
                                
                            
                            
                        }.padding(.bottom,20)
                            .padding(.leading,20)
                            .padding(.trailing,20)
                            .padding(.top,20)
                        
                        VStack{
                            
                            HStack{
                               
                                Image("post picture")
                                
                                VStack(alignment: .leading){
                                    Text("Elizebeth Smith")
                                    Text("1h ago")
                                        .foregroundColor(Color.gray)
                                    
                                    
                                }
                                Spacer()
                                
                                Image("doted Icons")
                                
                            }.padding(.bottom,10)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                            
                            Image("unsplash_gmA751dxisA")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            HStack{
                                
                                Image("Group 7370")
                                
                                Text("Arsalan and 20 other")
                                    .font(.subheadline)
                                    .foregroundColor(Color.gray)
                                
                                Spacer()
                                
                                Text("12 comments")
                                    .font(.subheadline)
                                    .foregroundColor(Color.gray)
                                
                            }
                            
                            Image("Line 2")
                            
                            HStack{
                                HStack{
                                    Image("heart icon")
                                    Text("Like")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.gray)
                                    
                                    
                                }
                                
                                Spacer()
                                HStack{
                                    Image("ant-design_comment-outlined")
                                    Text("Comment")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.gray)
                                    
                                }
                                Spacer()
                                HStack{
                                    Image("ion_share-social-sharp")
                                    Text("Share")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.gray)
                                }
                                Spacer()
                                HStack{
                                    Image("Icons")
                                    Text("Save")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.gray)
                                }
                                
                                
                            }
                            
                            Image("Line 2")
                            
                                
                            
                            
                        }.padding(.bottom,20)
                            .padding(.leading,20)
                            .padding(.trailing,20)
                            .padding(.top,20)
                        
                        VStack{
                            
                            HStack{
                               
                                Image("post picture")
                                
                                VStack(alignment: .leading){
                                    Text("Elizebeth Smith")
                                    Text("1h ago")
                                        .foregroundColor(Color.gray)
                                    
                                    
                                }
                                Spacer()
                                
                                Image("doted Icons")
                                
                            }.padding(.bottom,10)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                            
                            Image("unsplash_gmA751dxisA")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            HStack{
                                
                                Image("Group 7370")
                                
                                Text("Arsalan and 20 other")
                                    .font(.subheadline)
                                    .foregroundColor(Color.gray)
                                
                                Spacer()
                                
                                Text("12 comments")
                                    .font(.subheadline)
                                    .foregroundColor(Color.gray)
                                
                            }
                            
                            Image("Line 2")
                            
                            HStack{
                                HStack{
                                    Image("heart icon")
                                    Text("Like")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.gray)
                                    
                                    
                                }
                                
                                Spacer()
                                HStack{
                                    Image("ant-design_comment-outlined")
                                    Text("Comment")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.gray)
                                    
                                }
                                Spacer()
                                HStack{
                                    Image("ion_share-social-sharp")
                                    Text("Share")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.gray)
                                }
                                Spacer()
                                HStack{
                                    Image("Icons")
                                    Text("Save")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.gray)
                                }
                                
                                
                            }
                            
                            Image("Line 2")
                            
                                
                            
                            
                        }.padding(.bottom,20)
                            .padding(.leading,20)
                            .padding(.trailing,20)
                            .padding(.top,20)
                    }
                    
                    
                   
                    
                   
                   
                    
                }
                
                
                
            }
            .edgesIgnoringSafeArea(.top)
        
        
    }
}

//struct Home_screen_Previews: PreviewProvider {
//    static var previews: some View {
//        Home_screen()
//    }
//}
