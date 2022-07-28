//
//  Notifications.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 28/07/2022.
//

import SwiftUI

struct Notifications: View {
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
                    
                    Text("Change Password")
                        .font(.title)
                       
                    
                    Spacer()
                    Button(action: {}, label: {
                        Image("filter icon 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                    })
                   
                   }
                .padding()
                .padding(.leading,-10)
            
            ScrollView(.vertical, showsIndicators: false){
                HStack{
                    Text("Today")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Today")
                            .font(.title2))
                    Spacer()
                }
                
                LazyVStack{
                    ForEach(0...3 , id: \.self){ index in
                        unseenNotification()
                    }
                }
                
                HStack{
                    Text("Yesterday")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Yesterday")
                            .font(.title2))
                    Spacer()
                }
                
                LazyVStack{
                    ForEach(0...3 , id: \.self){ index in
                        seenNotification()
                    }
                }
                
            }
           
              
        }
        .padding(.leading)
        .padding(.trailing)
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}

struct unseenNotification : View {
    
    
    var body: some View {
        Button(action: {}, label: {
            HStack{
                Image("Ellipse 20")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10, height: 10)
                    .padding(.leading,5)
                Spacer()
                Image("unsplash_X6Uj51n5CE8")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                
                VStack(alignment: .leading){
                    Text("\(Text("Elen Barren ").foregroundColor(.red)) liked your post.")
                        .foregroundColor(.black)
                        .padding(.bottom,5)
                    Text("2h ago")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Image("Rectangle 1269")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 60)
            }
            .frame(width: 377, height: 60)
        })
       
        
        Image("Line 6")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 350, height: 1)
            .padding(.bottom)
        
    }
}

struct seenNotification : View {
    
    
    var body: some View {
        Button(action: {}, label: {
            HStack{
                
                Image("unsplash_X6Uj51n5CE8")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                
                VStack(alignment: .leading){
                    Text("\(Text("Elen Barren ").foregroundColor(.red)) liked your post.")
                        .foregroundColor(.black)
                        .padding(.bottom,5)
                    Text("2h ago")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                Image("Rectangle 1269")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 60)
            }
            .frame(width: 377, height: 60)
        })
      
        
        Image("Line 6")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 350, height: 1)
            .padding(.bottom)
        
    }
}
