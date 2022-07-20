//
//  Search post time.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/07/2022.
//

import SwiftUI

struct Search_post_time: View {
    @State private var searchText = ""
    var body: some View {
        ZStack{
            
        VStack{
            
            VStack{
                HStack{
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                        .padding(.top,30)
                        .padding(.bottom,10)
                    
        HStack{
            
            TextField("Search",text: self.$searchText)
                .foregroundColor(.red)
            
            Image(systemName: "magnifyingglass")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:20,height: 20)
                .foregroundColor(.red)
            
            
           
            
            
        } .padding(15)
                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                .padding(.top,20)
              
                .padding(.trailing,20)
                }
                
              
          
        }.padding(.leading,20)
                .padding(.bottom,15)
                .background(
                    Image("home screen background")
                    .resizable() .edgesIgnoringSafeArea(.top))
               
       
            
            HStack{
                
              
              
              
                VStack{
                    
                HStack{
                    Text("People")
                        .foregroundColor(.gray)
                   Spacer()
                    Text("Posts")
                        .foregroundColor(.red)
                    Spacer()
                    Text("Events")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Clubs")
                        .foregroundColor(.gray)
                    
                    
                   
                }
                    
                    
            
                    Image("Line 7")
                }.padding(.top,5)
                    .padding()
                
                
                
              
                }
            ScrollView(showsIndicators: false){
         
                LazyVStack{
                    ForEach(0...10 , id:\.self){ index in
                        PostCard()
                }
              
                
            }
               
                
           
        }
        
        }
        }
}

struct Search_post_time_Previews: PreviewProvider {
    static var previews: some View {
        Search_post_time()
    }
}

struct PostCard : View {
    
  
    var body: some View {
        
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
            
                
            
            
        }
        .padding(.bottom,20)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.top,20)
        
        
        
        }
}
}
