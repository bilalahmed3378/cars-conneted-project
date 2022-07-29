//
//  Notifications.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 28/07/2022.
//

import SwiftUI

struct Notifications: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
           
                HStack{
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        
                        Image("Icons-2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                    })
                   
                    
                    Spacer()
                    
                    Text("Notifications")
                        .font(AppFonts.SemiBold_20)
                        
                    
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
                        .font(AppFonts.semiBold_18)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Today")
                            .font(AppFonts.semiBold_18))
                    Spacer()
                }
                
                LazyVStack{
                    ForEach(0...3 , id: \.self){ index in
                        unseenNotification()
                    }
                }
                
                HStack{
                    Text("Yesterday")
                        .font(AppFonts.semiBold_18)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Yesterday")
                            .font(AppFonts.semiBold_18))
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
        .navigationBarHidden(true)
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
                    .padding(.trailing)
              
                Image("unsplash_X6Uj51n5CE8")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                
                VStack(alignment: .leading){
                    Text("\(Text("Elen Barren ").foregroundColor(.red)) liked your post.")
                        .foregroundColor(.black)
                        .font(AppFonts.regular_14)
                        .padding(.bottom,5)
                    Text("2h ago")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_12)
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
                        .font(AppFonts.regular_14)
                        .padding(.bottom,5)
                    Text("2h ago")
                        .font(AppFonts.regular_12)
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
