//
//  post screen 5 preview .swift
//  cars conneted
//
//  Created by Bilal Ahmed on 21/07/2022.
//

import SwiftUI

struct post_screen_5_preview_: View {
    var body: some View {
        VStack{
            
        HStack{
            Image("post back icons")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35)
            Spacer()
            
            Text("Add Post")
                .font(.title)
            
           Spacer()
            
            Image("edit icons")
        }
        .padding()
       
            ScrollView(.vertical,showsIndicators: false){
            HStack{
                Image("unsplash_OhKElOkQ3RE")
                    .frame(width: 70, height: 70)
                    
                
            
                VStack(alignment: .leading){
                    Text("Jhon Derren Smith")
                    
                    HStack{
                        Image("location black icon")
                        
                          
                        Text("WashingtonDC,USA")
                    }
                }
                Spacer()
            }
            .padding()
            .padding(.leading,5)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Enim fermentum tellus tellus aliquam arcu praesent.")
                .font(.callout)
                .fontWeight(.light)
                .foregroundColor(.gray)
                .padding(.leading,20)
                .padding(.trailing,20)
            
               
                    LazyVStack{
                        ForEach(0...5,id:\.self){ Index in
                            Image("unsplash_YApiWyp0lqo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.screenWidth-40, height: 250)
                                .padding(.top,20)
                               
                                
                    
                            
                        }
                    }
                
            
          
            
                
                Button(action: {}, label: {
                    ZStack{
                        Text("Post")
                            .foregroundColor(.white)
                            .font(.body)
                            .padding()
                            .padding(.trailing,155)
                            .padding(.leading,155)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                            .padding()
                    }
                })
                
                
            Spacer()
            }
        }
    }
}

struct post_screen_5_preview__Previews: PreviewProvider {
    static var previews: some View {
        post_screen_5_preview_()
        
    }
}
