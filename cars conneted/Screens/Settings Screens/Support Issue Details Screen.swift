//
//  Support Issue Details Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct Support_Issue_Details_Screen: View {
    @Environment (\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            
        VStack{
            
            Group{
            HStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                })
              
                
               Spacer()
                
                Text("My Support Requests")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                
                Spacer()
                
                
               
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }
        }.padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
      
            
            HStack{
                Text("Profile Image Issue")
                    .font(AppFonts.medium_18)
            }
            .padding()
            
            Divider()
            
         
            ScrollView(showsIndicators: false){
                
                LazyVStack{
                    ForEach(0...3 , id:\.self){ index in
                        IssuesSupport()
            
            }
           
            
                }
                
                NavigationLink(destination: Support_Issue_Solved_Screen(), label: {
                    HStack{
                        Text("Mark as Solved")
                            .font(AppFonts.semiBold_16)
                            .foregroundColor(.white)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*60, height: 40))
                    }
                })
               
        
            
         
            }
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        
    }
}

struct Support_Issue_Details_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Support_Issue_Details_Screen()
    }
}


struct IssuesSupport : View {
  
  var body: some View {
      
      
      HStack(alignment: .top){
          Image("Ellipse 33")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 50, height: 50)
          
          VStack(alignment: .leading){
              Text("Arsalan Ash")
                  .font(AppFonts.medium_14)
                  .padding(.bottom,5)
              
              Text("Lectus eu vestibulum, dictum integer risus pellentesque sit. Ultrices ullamcorper quisque sed lectus. Pretium at sed eget pulvinar metus at elementun  jh jh jh  jh jh jh lh lh lh npeuvfpuisvbdfiubvklabfkvblkbvkbvlksbvkbvalksjbvlsbm. Purus nunc tempor nisi sagittis, in duis id volutpat. Odio tortor lobortis nisi nullam ullamcorper ipsum imperdiet id. Orci at sed non porttitor imperdiet habitant volutpat duis sagittis. Leo, interdum integer scelerisque commodo neque sit consectetur rhoncus. Urna urna est vitae posuere.")
                  .font(AppFonts.regular_12)
                  
          }
          
          Text("12:15 am")
              .font(AppFonts.regular_12)
          
      }
                      .padding()
                      .background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.1)))
      
  
}
}
