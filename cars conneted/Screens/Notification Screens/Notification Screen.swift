//
//  Notification Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct Notification_Screen: View {
    var body: some View {
        VStack{
            
        HStack{
            Button(action: {}, label: {
                
                Image("Icons-2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
            })
           
            
            Spacer()
            
            Text("Notification")
                .font(AppFonts.SemiBold_20)
                
            
            Spacer()
            
            Button(action: {}, label: {
                
                Image("filter icon 2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
            })
            
            
            
           
        }
        .padding()
            
           
            
           
            ScrollView(.vertical, showsIndicators: false){
                
                HStack{
                    Text("Today")
                        .font(AppFonts.semiBold_18)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Today")
                            .font(AppFonts.semiBold_18)
                            .fontWeight(.semibold))
                    
                    Spacer()
                    
                }.padding()
                
                LazyVStack{
                    ForEach(0...2 , id: \.self){ index in
                        todayNotifications()
                        
                    }
                }
                
                HStack{
                    Text("Yesterday")
                        .font(AppFonts.semiBold_18)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Yesterday")
                            .font(AppFonts.semiBold_18)
                            .fontWeight(.semibold))
                    
                    Spacer()
                    
                }.padding()
                
                LazyVStack{
                    ForEach(0...2 , id: \.self){ index in
                        yesterdayNotifications()
            }
            
        }
    }
}
    }

struct Notification_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Notification_Screen()
    }
}

struct todayNotifications : View {
  
  var body: some View {
      
      HStack{
          
          Image("unsplash_X6Uj51n5CE8")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 60, height: 60)
          
          VStack(alignment: .leading){
                  Text("Elen Barren loked your post")
                      .font(AppFonts.medium_14)
                      .padding(.bottom,3)
              
              Text("2h ago")
                  .font(AppFonts.regular_12)
                  .foregroundColor(.gray)
             
          }.padding()
          
          Spacer()
          
      }.padding().background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.1)))
          .padding(.bottom,-6)
      
  }
}


struct yesterdayNotifications : View {
  
  var body: some View {
      
      HStack{
          
          Image("unsplash_X6Uj51n5CE8")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 60, height: 60)
          
          VStack(alignment: .leading){
                  Text("Elen Barren loked your post")
                      .font(AppFonts.medium_14)
                      .padding(.bottom,3)
              
              Text("2h ago")
                  .font(AppFonts.regular_12)
                  .foregroundColor(.gray)
             
          }.padding()
          
          Spacer()
          
      }.padding()
          .padding(.bottom,-20)
      
  }
}
}

