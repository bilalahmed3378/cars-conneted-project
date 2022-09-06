//
//  post screen 5 preview .swift
//  cars conneted
//
//  Created by Bilal Ahmed on 21/07/2022.
//

import SwiftUI

struct post_screen_5_preview_: View {
    @Environment(\.presentationMode) var presentaionMode
    
    @State var toHome = false
    
    var body: some View {
        VStack{
            
            NavigationLink(destination: MainTabContainer(), isActive: self.$toHome){
                EmptyView()
            }
            
        HStack{
            
            Button(action: {
                self.presentaionMode.wrappedValue.dismiss()
            }, label: {
                Image("post back icons")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
            })
           
            Spacer()
            
            Text("Preview")
                .font(AppFonts.SemiBold_20)
            
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
                        .font(AppFonts.medium_14)
                    
                    HStack{
                        Image("location black icon")
                        
                          
                        Text("WashingtonDC,USA")
                            .font(AppFonts.regular_14)
                    }
                }
                Spacer()
            }
            .padding()
            .padding(.leading,5)
            
                VStack(alignment: .leading){
                    HStack{
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Enim fermentum tellus tellus aliquam arcu praesent.")
                    .font(AppFonts.regular_12)
                .foregroundColor(.gray)
                .padding(.leading,20)
                .padding(.trailing,20)
                .multilineTextAlignment(.leading)
                        Spacer()
                    }
                }
               
                    LazyVStack{
                        ForEach(0...1,id:\.self){ Index in
                            Image("unsplash_YApiWyp0lqo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*30)
                                .padding(.top,20)
                                .padding(.bottom,10)
                               
                                
                    
                            
                        }
                    }
                
            
          
            
                
                Button(action: {
                    self.toHome = true
                }, label: {
                    ZStack{
                        Text("Post")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_16)
                            .padding()
                            
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7))
                            .padding(.top)
                            
                    }
                })
                
                
            Spacer()
            }
        } .navigationBarHidden(true)
    }
}

struct post_screen_5_preview__Previews: PreviewProvider {
    static var previews: some View {
        post_screen_5_preview_()
        
    }
}
